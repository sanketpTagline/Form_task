import 'package:flutter/material.dart';
import 'package:untitled/Task_Form.dart';
import 'package:untitled/formModel.dart';

class TaskResult extends StatefulWidget {
  FormData? fromData;
  TaskResult(this.fromData, {super.key});

  @override
  State<TaskResult> createState() => _TaskResultState();
}

class _TaskResultState extends State<TaskResult> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          h15(),
          h15(),
          const Center(
              child: Text(
            "Welcome",
            style: TextStyle(fontSize: 20),
          )),
          Text(widget.fromData!.name,

            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  child: Icon(Icons.location_pin, size: 20),
                ),
                TextSpan(
                    text: widget.fromData!.city,

                    style: const TextStyle(color: Colors.black, fontSize: 20)),
              ],
            ),
          ),
          h15(),
          h15(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300]
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: "Date of Birth : ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              )),
                          TextSpan(

                              text: widget.fromData!.birthDate,
                              style: textstyle()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: "Password : ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              )),
                          TextSpan(

                              text: widget.fromData!.password,
                              style: textstyle()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: "Address : ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              )),
                          TextSpan(

                              text: widget.fromData!.address,
                              style: textstyle()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Gender : ", style: textstyle()),
                          TextSpan(

                              text: widget.fromData!.gender,
                              style: textstyle()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Contact : ", style: textstyle()),
                          TextSpan(

                              text: widget.fromData!.phoneNumber,
                              style: textstyle()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Work From : ", style: textstyle()),
                          TextSpan(
                              text: widget.fromData!.work[0] == true
                                  ? "Home"
                                  : "Office",
                              style: textstyle()),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Hobbies : ", style: textstyle()),
                          TextSpan(text: widget.fromData!.hobbies, style: textstyle()),

                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          h15(),
          h15(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  FormTask.prefs!.clear();
                  return const FormTask();
                },));
              },
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

h15() {
  return const SizedBox(
    height: 15,
  );
}

textstyle() {
  return const TextStyle(fontSize: 20, color: Colors.black);
}
