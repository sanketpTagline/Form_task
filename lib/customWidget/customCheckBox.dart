import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  bool value;
  void Function(bool?)? onChanged;
  String checkBoxName;

  CustomCheckBox(
      {super.key, required this.value, required this.checkBoxName, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Text(checkBoxName, style: const TextStyle(fontSize: 15)),
      ],
    );
  }
}


/*
    Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: isSwimming,
                                onChanged: (value) {
                                  setState(() {
                                    isSwimming = !isSwimming;
                                    checkBoxValue.clear();
                                  });
                                },
                              ),
                              const Text("Swimming",
                                  style: TextStyle(fontSize: 15)),
                            ],
                          ),
 Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: isWatching,
                                onChanged: (value) {
                                  setState(() {
                                    isWatching = !isWatching;
                                    checkBoxValue.clear();
                                  });
                                },
                              ),
                              // const SizedBox(width: 50),
                              const Text("Watching",
                                  style: TextStyle(fontSize: 15)),
                            ],
                          ),
                           Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: isGaming,
                                onChanged: (value) {
                                  setState(() {
                                    isGaming = !isGaming;
                                    checkBoxValue.clear();
                                  });
                                },
                              ),
                              const Text("Gaming",
                                  style: TextStyle(fontSize: 15)),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: isOther,
                                onChanged: (value) {
                                  setState(() {
                                    isOther = !isOther;
                                    checkBoxValue.clear();
                                    otherController.clear();
                                  });
                                },
                              ),
                              const Text("Other",
                                  style: TextStyle(fontSize: 15)),
                            ],
                          ),
 */