import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  bool isGenderSelected(int index) => _currentGender == parseGender(index);

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

  bool isAlignmentSelected(int index) =>
      _currentAlignment == parseAlignment(index);

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
          SizedBox(height: 16.0),
          Text('Gender'),
          SizedBox(height: 8.0),
          ToggleButtons(
            children: [
              ToggleButtonLabel('All', selected: isGenderSelected(0)),
              ToggleButtonLabel('Male', selected: isGenderSelected(1)),
              ToggleButtonLabel('Female', selected: isGenderSelected(2)),
              ToggleButtonLabel('Non-binary', selected: isGenderSelected(3)),
            ],
            onPressed: (index) {
              final gender = parseGender(index);
              setGender(gender);
            },
            isSelected: List.generate(4, isGenderSelected),
          ),
          SizedBox(height: 16.0),
          Text('Alignment'),
          SizedBox(height: 8.0),
          ToggleButtons(
            children: [
              ToggleButtonLabel('All', selected: isAlignmentSelected(0)),
              ToggleButtonLabel('Good', selected: isAlignmentSelected(1)),
              ToggleButtonLabel('Neutral', selected: isAlignmentSelected(2)),
              ToggleButtonLabel('Bad', selected: isAlignmentSelected(3)),
            ],
            onPressed: (index) {
              final aligment = parseAlignment(index);
              setAligment(aligment);
            },
            isSelected: List.generate(4, isAlignmentSelected),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            child: Text('Ready'),
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

class ToggleButtonLabel extends StatelessWidget {
  const ToggleButtonLabel(
    this.text, {
    Key? key,
    this.selected = false,
  }) : super(key: key);

  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 48) / 4,
      alignment: Alignment.center,
      child: Text(
        text,
        style: GoogleFonts.rubik(
          color: selected ? Colors.white : AppColors.primary,
        ),
      ),
    );
  }
}
