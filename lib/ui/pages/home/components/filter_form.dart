import 'package:flutter/material.dart';
import 'package:heroes/domain/entities/alignment.dart';
import 'package:heroes/domain/entities/gender.dart';
import 'package:heroes/domain/usecases/get_heroes.dart';
import 'package:heroes/ui/theme/theme.dart';

class FilterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FilterFormState();
}

class _FilterFormState extends State<FilterForm> {
  String _query = '';

  void setQuery(String query) => setState(() => _query = query);

  Gender? _currentGender;

  void setGender(Gender? gender) => setState(() => _currentGender = gender);

  Gender? parseGender(int index) {
    switch (index) {
      case 0:
        return null;
      case 1:
        return Gender.male();
      case 2:
        return Gender.female();
      case 3:
        return Gender.nonBinary();
    }
  }

  HeroAlignment? _currentAlignment;

  void setAligment(HeroAlignment? alignment) =>
      setState(() => _currentAlignment = alignment);

  HeroAlignment? parseAlignment(int index) {
    switch (index) {
      case 0:
        return null;
      case 1:
        return HeroAlignment.good();
      case 2:
        return HeroAlignment.neutral();
      case 3:
        return HeroAlignment.bad();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            onChanged: setQuery,
            decoration: InputDecoration(
              hintText: 'Search for a hero',
              prefixIcon: Icon(
                Icons.search_outlined,
                color: AppColors.primary,
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text('Gender'),
          ToggleButtons(
            children: [
              Text('All'),
              Text('Male'),
              Text('Female'),
              Text('Non-binary'),
            ],
            onPressed: (index) {
              final gender = parseGender(index);
              setGender(gender);
            },
            isSelected: List.generate(
              4,
              (index) => _currentGender == parseGender(index),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text('Alignment'),
          ToggleButtons(
            children: [
              Text('All'),
              Text('Good'),
              Text('Neutral'),
              Text('Bad'),
            ],
            onPressed: (index) {
              final aligment = parseAlignment(index);
              setAligment(aligment);
            },
            isSelected: List.generate(
              4,
              (index) => _currentAlignment == parseAlignment(index),
            ),
          ),
          ElevatedButton(
            child: Text('Filter'),
            onPressed: () {
              Navigator.of(context).pop(
                GetHeroesOptions(
                  query: _query,
                  gender: _currentGender,
                  alignment: _currentAlignment,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
