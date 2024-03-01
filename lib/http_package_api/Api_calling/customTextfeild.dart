import 'package:flutter/material.dart';

class CustomTextFields extends StatelessWidget {
  String name;
  String title;
  IconData icon;

  CustomTextFields(
      {required this.name, required this.title, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xff565564))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 35,
                child: Icon(icon, color: const Color(0xff565564)),
              ),
            ),
            SizedBox(
              width: 60,
              child:
                  Text(title, style: const TextStyle(color: Color(0xff565564))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10) +
                  const EdgeInsets.only(right: 10),
              child: const VerticalDivider(color: Color(0xff565564)),
            ),
            Text(name,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
