import 'package:flutter/material.dart';

import 'package:heroes/domain/entities/hero_attributes.dart';

class HeroAttributesView extends StatelessWidget {
  const HeroAttributesView({
    Key? key,
    required this.attributes,
  }) : super(key: key);

  final HeroAttributes attributes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              _HeroAttributeItem(
                imageName: 'solution',
                color: Color(0xFF0E38E1),
                value: attributes.intelligence,
              ),
              _HeroAttributeItem(
                imageName: 'run',
                color: Color(0xFF00A6B9),
                value: attributes.speed,
              ),
              _HeroAttributeItem(
                imageName: 'power',
                color: Color(0xFFE2B40A),
                value: attributes.power,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              _HeroAttributeItem(
                imageName: 'bodybuilder',
                color: Color(0xFFCC0B3D),
                value: attributes.strength,
              ),
              _HeroAttributeItem(
                imageName: 'shield',
                color: Color(0xFF019E3E),
                value: attributes.durability,
              ),
              _HeroAttributeItem(
                imageName: 'fighting',
                color: Color(0xFF611D7C),
                value: attributes.combat,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _HeroAttributeItem extends StatelessWidget {
  const _HeroAttributeItem({
    Key? key,
    required this.value,
    required this.color,
    required this.imageName,
  }) : super(key: key);

  final int value;
  final Color color;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64.0,
      child: Row(
        children: [
          Container(
            width: 32.0,
            height: 32.0,
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Image.asset('assets/icons/$imageName.png'),
          ),
          SizedBox(width: 4.0),
          Text('$value')
        ],
      ),
    );
  }
}
