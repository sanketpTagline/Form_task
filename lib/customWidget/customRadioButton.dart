import 'package:flutter/material.dart';
class CustomRadioBox extends StatelessWidget {
  String groupValue;
  String radioName;

  void Function(String?) onChanged;


  CustomRadioBox({super.key, required this.groupValue, required this.radioName,
      required this.onChanged,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
        visualDensity: const VisualDensity(horizontal: -4),

        contentPadding: const EdgeInsets.only(right: 0),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        title:  Text(radioName),
        value: radioName,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}


// Expanded(
//   child: RadioListTile(
//     visualDensity: const VisualDensity(horizontal: -4),
//     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//     title: const Text("Male"),
//     value: "Male",
//     groupValue: groupValue,
//     onChanged: (value) {
//       setState(() {
//         groupValue = value!.toString();
//       });
//     },
//   ),
// ),
// Expanded(
//   child: RadioListTile(
//     visualDensity: const VisualDensity(horizontal: -4),
//     contentPadding: const EdgeInsets.only(right: 0),
//     title: const Text("Female"),
//     value: "Female",
//     groupValue: groupValue,
//     onChanged: (value) {
//       setState(() {
//         groupValue = value!.toString();
//       });
//     },
//   ),
// ),
