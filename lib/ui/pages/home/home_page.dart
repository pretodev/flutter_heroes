import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/domain/usecases/get_heroes.dart';
import 'package:heroes/locator.dart';
import 'package:heroes/ui/pages/home/components/filter_form.dart';
import 'package:heroes/ui/pages/home/components/hero_card.dart';
import 'package:heroes/ui/pages/home/stores/heroes_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final heroesStore = locator<HeroesStore>();

  @override
  void initState() {
    super.initState();
    heroesStore.loadHeroes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heroes'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: ElevatedButton(
              child: Image.asset(
                'assets/icons/dices.png',
                height: 24,
                width: 24,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: ElevatedButton(
              child: Image.asset(
                'assets/icons/loupe.png',
                height: 24,
                width: 24,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
              ),
              onPressed: showFilters,
            ),
          ),
        ],
      ),
      body: ScopedBuilder<HeroesStore, Exception, List<HeroEntity>>(
        store: heroesStore,
        onLoading: (_) => CircularProgressIndicator(),
        onError: (_, error) => Text('$error'),
        onState: (_, heroes) => ListView.builder(
          itemCount: heroes.length,
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (_, index) => HeroCard(
            number: index + 1,
            hero: heroes[index],
          ),
        ),
      ),
    );
  }

  void showFilters() async {
    final options = await showModalBottomSheet<GetHeroesOptions>(
      context: context,
      builder: (_) => FilterForm(),
    );
    if (options != null) {
      heroesStore.loadHeroes(options);
    }
  }
}
