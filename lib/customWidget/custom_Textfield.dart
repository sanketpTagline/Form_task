import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldd extends StatelessWidget {
 final String labelText;
 final String? hintText;
 final Icon icon;
 final TextEditingController controller;
 final  void Function()? onTap;
 final TextInputType? keyboardType;
 final List<TextInputFormatter>? inputFormatters;
  String Function(String?)? validator;
 int? maxLength;

  // CustomTextFieldd(
  //     this.labelText,
  //     this.hintText,
  //     this.icon,
  //     this.controller,
  //     this.onTap,
  //     this.keybordtype,
  //     this.inputFormatters,
  //     this.validator);
   CustomTextFieldd(

      { this.onTap,
        this.maxLength,
      required this.icon,
      required this.controller,
      required this.labelText,
        this.hintText, this.keyboardType, this.inputFormatters, this.validator,
      super.key} );


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      controller: controller,
      onTap: onTap,
      validator: validator,
      keyboardType: keyboardType,
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: icon,

        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: hintText,
      ),
    );
  }
}


// name
/*
      TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                  ],
                  controller: nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter the your name";
                    } else {
                      if (nameRex.hasMatch(value)) {
                        setState(() {
                          nameValidation = true;
                        });
                      } else {
                        return "Enter a Valid Name";
                      }
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Enter Your Name",
                    prefixIcon: Icon(Icons.person_2_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Enter Your name",
                  ),
                ),
 */


//phone number
/*
TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  controller: numberController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Mobile Number";
                    } else {
                      if (numberRex.hasMatch(value)) {
                        setState(() {
                          numberValidation = true;
                        });
                      } else {
                        return "Enter a Valid Number";
                      }
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  decoration: const InputDecoration(
                    labelText: "Enter Your Mobile Number",
                    prefixIcon: Icon(Icons.phone_android_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Enter Your Mobile Number",
                  ),
                ),
 */

// Date picker

/*
  TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  controller: dateController,
                  onTap: () async {
                    await openDatePicker(context);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your BirthDate";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Enter Your BirthDate",
                    prefixIcon: Icon(Icons.calendar_month),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Enter Your BirthDate",
                  ),
                ),
 */