import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/ui/pages/home/components/hero_attributes_view.dart';

class DetailsPage extends StatelessWidget {
  static MaterialPageRoute route(HeroEntity hero) =>
      MaterialPageRoute(builder: (_) => DetailsPage(hero: hero));

  const DetailsPage({
    Key? key,
    required this.hero,
  }) : super(key: key);

  final HeroEntity hero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          child: Icon(Icons.close),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.network(hero.photoUrl),
                borderRadius: BorderRadius.circular(16.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  hero.name,
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontSize: 32.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Attributes',
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
              ),
              HeroAttributesView(
                attributes: hero.attributes,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
