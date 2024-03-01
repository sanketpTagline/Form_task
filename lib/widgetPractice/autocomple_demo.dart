import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AutoCompleteDemo extends StatefulWidget {
  const AutoCompleteDemo({super.key});

  @override
  State<AutoCompleteDemo> createState() => _AutoCompleteDemoState();
}

class _AutoCompleteDemoState extends State<AutoCompleteDemo> {
   final List<String> _cityName = <String>[
    "Ahmadabad",
    "Amreli",
    "Bharuch",
    "Bhavnagar",
    "Bhuj",
    "Dwarka",
    "Gandhinagar",
    "Godhra",
    "Jamnagar",
    "Junagadh",
    "Kandla",
    "Khambhat",
    "Kheda",
    "Mahesana",
    "Morbi",
    "Nadiad",
    "Navsari",
    "Okha",
    "Palanpur",
    "Patan",
    "Porbandar",
    "Rajkot",
    "Surat",
    "Surendranagar",
    "Valsad",
    "Veraval",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Autocomplete<String>(initialValue: const TextEditingValue(text: "Enter The City Name"),optionsBuilder: (textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }

            return _cityName.where((element){
              return element.toLowerCase().contains(textEditingValue.text.toLowerCase());
            });

          },
          onSelected: (option) {
            if (kDebugMode) {
              print("You select $option");
            }
          },),
        ),
      ),
    );
  }
}
