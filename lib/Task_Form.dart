import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:untitled/Task_from_result.dart';
import 'package:untitled/customWidget/customRedioButton.dart';

import 'package:untitled/formModel.dart';

import 'customWidget/customCheckBox.dart';

class FormTask extends StatefulWidget {
  const FormTask({super.key});

  @override
  State<FormTask> createState() => _FormTaskState();
}

class _FormTaskState extends State<FormTask> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController otherController = TextEditingController();

  bool isSwimming = false;
  bool isWatching = false;
  bool isGaming = false;
  bool isOther = false;

  bool nameValidation = false;
  bool numberValidation = false;
  bool otherValidation = false;
  bool autoValidate = false;

  DateTime? _dateTime;
  FormData? formData;

  String? dropdownValue;
  String groupValue = "";

  RegExp nameRex = RegExp('[a-zA-Z]');
  // RegExp nameRex = RegExp('^[a-zA-Z][a-zA-Z ]*\$');
  // RegExp nameRex = RegExp("^[a-zA-Zs]*\$");
  // RegExp nameRex = RegExp("^[a-z]+(?:[a-z\s]*[a-z])?\$");
  // RegExp nameRex = RegExp("^[a-zA-Z]+\$"); // only allow char and space not allow multiple word
  // RegExp nameRex = RegExp("^[a-zA-Z]+[a-zA-Z\\s]*?\$");
  RegExp numberRex = RegExp("^(?:[+0]9)?[0-9]{10}\$");
  String hobbiesConcatetaion = "";

  final List<String> cityName = [
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
  List<bool> isSelect = [true, false];
  List checkBoxValue = [];

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormFieldState> productListDdlKey = GlobalKey<FormFieldState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
          actions: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    nameController.clear();
                    numberController.clear();
                    dateController.clear();
                    cityController.clear();
                    otherController.clear();
                    isSwimming = false;
                    isWatching = false;
                    isGaming = false;
                    isOther = false;
                    nameValidation = false;
                    numberValidation = false;
                    groupValue = "";
                    checkBoxValue.clear();
                    isSelect = [true, false];
                    productListDdlKey.currentState!.reset();
                  });
                },
                child:
                    const Text("Clear", style: TextStyle(color: Colors.white))),
            const SizedBox(
              width: 20,
            ),
          ],
          title: const Text("Registration",
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            canPop: false,
            child: Column(
              children: [
                h15(),

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
                h15(),

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
counterText: "",
                    labelText: "Enter Your Mobile Number",
                    prefixIcon: Icon(Icons.phone_android_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Enter Your Mobile Number",
                  ),
                ),
                h15(),

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
                h15(),
                DropdownButtonFormField(
                  key: productListDdlKey,
                  menuMaxHeight: 300,
                  items: cityName
                      .map<DropdownMenuItem<String>>(
                          (e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      dropdownValue = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: "Select Your City",
                    prefixIcon: Icon(Icons.location_city_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Select Your City",
                  ),
                ),
                h15(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Center(child: Text("Select Your hobbies:")),
                    Expanded(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          CustomCheckBox(
                            value: isSwimming,
                            onChanged: (value) {
                              setState(() {
                                isSwimming = !isSwimming;
                                checkBoxValue.clear();
                              });
                            },
                            checkBoxName: 'Swimming',
                          ),
                          CustomCheckBox(
                            value: isWatching,
                            onChanged: (value) {
                              setState(() {
                                isWatching = !isWatching;
                                checkBoxValue.clear();
                              });
                            },
                            checkBoxName: 'Watching',
                          ),
                          CustomCheckBox(
                            value: isGaming,
                            onChanged: (value) {
                              setState(() {
                                isGaming = !isGaming;
                                checkBoxValue.clear();
                              });
                            },
                            checkBoxName: 'Gaming',
                          ),
                          CustomCheckBox(
                            value: isOther,
                            onChanged: (value) {
                              setState(() {
                                isOther = !isOther;
                                checkBoxValue.clear();
                              });
                            },
                            checkBoxName: 'Other',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Visibility(
                  visible: isOther,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter the your Hobbies";
                            } else {
                              if (nameRex.hasMatch(value)) {
                                setState(() {
                                  otherValidation = true;
                                });
                              } else {
                                return "Enter a valid Hobbies ";
                              }
                            }
                            return null;
                          },
                          onTap: () {
                            setState(() {
                              checkBoxValue.clear();
                            });
                          },
                          controller: otherController,
                        )),
                  ),
                ),
                h15(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Select Gender:"),

                    CustomRedioBox(groupValue: groupValue,radioName: "Male",onChanged: (value) {
                      setState(() {
                        groupValue = value!.toString();
                      });
                    },),
                    CustomRedioBox(groupValue: groupValue,radioName: "Female",onChanged: (value) {
                      setState(() {
                        groupValue = value!.toString();
                      });
                    },),
                  ],
                ),
                h15(),
                Row(
                  children: [
                    const Text("Work From :"),
                    const SizedBox(width: 30),
                    ToggleButtons(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        selectedBorderColor: Colors.deepPurple,
                        onPressed: (newIndex) {
                          setState(() {
                            for (int index = 0;
                                index < isSelect.length;
                                index++) {
                              if (index == newIndex) {
                                isSelect[index] = true;
                              } else {
                                isSelect[index] = false;
                              }
                            }
                          });
                        },
                        isSelected: isSelect,
                        children: const [
                          Text("Home"),
                          Text("Office"),
                        ]),
                  ],
                ),
                h15(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {
                      // print("Name Validation ==> ${nameValidation}  Name ==> ${nameController.text}");
                      // print("${formKey.currentState!.validate()}");
                      if (formKey.currentState!.validate() &&
                          groupValue.isNotEmpty &&
                          groupValue != "" &&
                          dropdownValue!.isNotEmpty &&
                          (isOther
                              ? (otherController.text.isNotEmpty &&
                                  otherValidation)
                              : (isSwimming || isGaming || isWatching)

                          ) &&
                          nameValidation &&
                          numberValidation) {
                        _showDialog(context);
                        setState(() {
                          if (isGaming && !(checkBoxValue.contains("Gaming"))) {
                            checkBoxValue.add("Gaming");
                          }
                          if (isWatching &&
                              !(checkBoxValue.contains("Watching"))) {
                            checkBoxValue.add("Watching");
                          }
                          if (isSwimming &&
                              !(checkBoxValue.contains("Swimming"))) {
                            checkBoxValue.add("Swimming");
                          }
                          if (otherController.text.isNotEmpty &&
                              !(checkBoxValue
                                  .contains(otherController.text.toString()))) {
                            checkBoxValue.add(otherController.text.toString());
                          }
                          hobbiesConcatetaion = checkBoxValue.join(",");
                        });

                        Map<String, dynamic> map = {
                          "Name": nameController.text.toString(),
                          "PhoneNumber": numberController.text.toString(),
                          "BirthDate": dateController.text.toString(),
                          "City": dropdownValue,
                          "hobbies": hobbiesConcatetaion,
                          "Gender": groupValue,
                          "Work": isSelect,
                        };
                        formData = FormData.fromJson(map);

                        Future.delayed(const Duration(seconds: 5))
                            .then((value) {
                          setState(() {
                            nameValidation = false;
                            numberValidation = false;
                          });

                          return Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return TaskResult(formData);
                            },
                          ));
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            showCloseIcon: true,
                            duration: Duration(milliseconds: 100),
                            behavior: SnackBarBehavior.floating,
                            content: Text("Please Fill the Form"),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    )),
                h15(),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Future<void> openDatePicker(context) {
    return showDatePicker(
            barrierDismissible: false,
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
            helpText: "Enter your Birthdate",
            currentDate: DateTime.now())
        .then((value) {
      if (value == null) {
        // ScaffoldMessenger.of(context)
        //     .showSnackBar(const SnackBar(content: Text("Enter the date")));
      } else {
        _dateTime = value;
        var dateFormat =
            "${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}";

        setState(() {
          dateController.text = dateFormat;
        });
      }
    });
  }

  openDropDownMenu(context) {
    return DropdownButton(
      value: dropdownValue,
      items: cityName
          .map<DropdownMenuItem<String>>(
              (e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: (value) {
        setState(() {
          dropdownValue = value!;
          cityController.text = dropdownValue.toString();
        });
      },
    );
  }

  _showDialog(context) {
    return showDialog(
      barrierDismissible: false,
      context: scaffoldKey.currentContext!,
      builder: (context) {
        Future.delayed(const Duration(seconds: 4), () {
          Navigator.of(context).pop();
        });
        return const PopScope(
          canPop: false,
          child: Dialog(
            child: SizedBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: CircularProgressIndicator()),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Loading.. Please Wait",
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

h15() {
  return const SizedBox(
    height: 15,
  );
}
