import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:heroes/domain/entities/hero.dart';
import 'package:heroes/ui/pages/details/details_page.dart';
import 'package:heroes/ui/pages/home/components/hero_attributes_view.dart';
import 'package:heroes/ui/theme/theme.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({
    Key? key,
    required this.hero,
    required this.number,
  }) : super(key: key);

  final HeroEntity hero;
  final int number;

  @override
  Widget build(BuildContext context) {
    final nameStyle = GoogleFonts.rubik(
      fontSize: 32.0,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryText,
    );

    final numberStyle = GoogleFonts.rubik(
      fontWeight: FontWeight.w700,
      color: Colors.black12,
    );

    return InkWell(
      onTap: () {
        Navigator.push(context, DetailsPage.route(hero));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 228.0,
                color: Colors.black12,
                child: Image.network(
                  hero.photoUrl,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 16.0),
              Text(hero.name, style: nameStyle),
              Row(
                children: [
                  Expanded(
                    child: HeroAttributesView(attributes: hero.attributes),
                  ),
                  Text('#', style: numberStyle.copyWith(fontSize: 32.0)),
                  Text('$number', style: numberStyle.copyWith(fontSize: 48.0)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
