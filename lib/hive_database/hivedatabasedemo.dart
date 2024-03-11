import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled/hive_database/User_service.dart';
import 'package:untitled/hive_database/user_model.dart';

class HiveDataBaseDemo extends StatefulWidget {
  const HiveDataBaseDemo({super.key});

  @override
  State<HiveDataBaseDemo> createState() => _HiveDataBasedemoState();
}

class _HiveDataBasedemoState extends State<HiveDataBaseDemo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController hobbyController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  final HiveDataStore _hiveDataStore = HiveDataStore();
  ValueNotifier<bool> isUpdate = ValueNotifier<bool>(false);

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // onInit();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isUpdate.value = false;
          _showDialog(context);
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Center(child: Text("User Detail")),
      ),
      body: ValueListenableBuilder(
        valueListenable: HiveDataStore.box.listenable(),
        builder: (context, Box box, child) {

          return SafeArea(

              child: box.length > 0
                  ? ListView.builder(
                      shrinkWrap: true,
                      itemCount: box.length,
                      itemBuilder: (context, index) {
                        var userData = box.getAt(index);
                        return Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              border: Border.all(color: Colors.black87),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Text(
                                            userData.name,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const VerticalDivider(
                                            color: Colors.black87,
                                            thickness: 2,
                                          ),
                                          Text(
                                            userData.description,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: "Hobby:",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                        children: <TextSpan>[
                                          TextSpan(
                                              // text: userData.hobby,
                                              text: userData.hobby,
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 0,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          isUpdate.value = true;
                                          nameController.text = userData.name;
                                          hobbyController.text = userData.hobby;
                                          descriptionController.text =
                                              userData.description;
                                          _showDialog(context, index);
                                        },
                                        child: const Icon(
                                          Icons.edit, size: 30,
                                          // color: Colors.blue.shade900,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text(
                                                  'Are you sure you want to delete ${userData.name}?',
                                                  style: const TextStyle(
                                                      fontSize: 20),
                                                ),
                                                actions: <Widget>[
                                                  customTextButton(
                                                      buttonName: "Yes",
                                                      index: index),
                                                  customTextButton(
                                                      buttonName: "No",
                                                      index: index),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        child: const Icon(
                                          Icons.delete,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        );
                      },
                    )
                  : const Center(
                      child: Text("No Data Found"),
                    ));
        },
      ),
    );
  }

  _showDialog(BuildContext context, [int? index]) {
    return showDialog(
      barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => Dialog(
          backgroundColor: Colors.white,
          child: Stack(
            alignment: Alignment.topRight,
            children: [

              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    customTextField(
                        controller: nameController, labelText: "Name"),
                    customTextField(
                        controller: hobbyController, labelText: "Hobby"),
                    customTextField(
                        controller: descriptionController,
                        labelText: "Description"),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.black87)),
                        onPressed: () {
                          if (isUpdate.value) {
                            // final Note notes = Note(noteTitle: "sd", noteDescription: "sd", imagePath: "sd");
                            // final user = UsersModel(dateCreated:"fg" , moodScale: 3, moodState: 3, notes: notes);
                            final user = UsersModel(
                              name: nameController.text,
                              hobby: hobbyController.text,
                              description: descriptionController.text,


                            );

                            if (nameController.text.isNotEmpty && hobbyController.text.isNotEmpty && descriptionController.text.isNotEmpty ) {
                              _hiveDataStore
                                  .updateUser(usersModel: user, index: index!)
                                  .then((value) {
                                Navigator.of(context).pop();
                                nameController.clear();
                                hobbyController.clear();
                                descriptionController.clear();
                                // Navigator.pop(context);
                              });
                            }
                            else
                              {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:  Text("Please Fill all Field")));
                              }
                          } else {
                            final user = UsersModel(
                              name: nameController.text,
                              hobby: hobbyController.text,
                              description: descriptionController.text,
                            );
                            if (nameController.text.isNotEmpty && hobbyController.text.isNotEmpty && descriptionController.text.isNotEmpty ) {
                              _hiveDataStore.addUser(usersModel: user).then((value) {
                                Navigator.of(context).pop();
                                nameController.clear();
                                hobbyController.clear();
                                descriptionController.clear();
                                // Navigator.pop(context);
                              });
                            }
                          _hiveDataStore.showdetails();
                          }
                        },
                        child: Text(isUpdate.value ? "Update" : "Add",
                            style: const TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  nameController.clear();
                  hobbyController.clear();
                  descriptionController.clear();

                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(color: Colors.black,shape: BoxShape.circle),
                  child: const Icon(Icons.close,color: Colors.white,),
                ),
              ),
            ],
          ),
        ));
  }
//   onInit() async {
//     // box = await Hive.openBox("myBox");
// await Hive.openBox("myBox");
//   var  b = Hive.box("myBox");
//     await b!.put("Id", 10);
// // b!.put("Name", "Sanket");
// // b!.put("Language", ["c","c++","python","dart"]);
// b!.putAll({"Dept":[
//   {"Dept":{
//     {"Dept":"IT", "Designation":"Flutter Developer"}
//   }, "Designation":"Flutter Developer"}
// ], "Designation":"Flutter Developer"});
//
// print(b.get("Dept"));
// // print(b.keys);
// // print(b.values);
// // print(b.keyAt(2));
// // print(b.length);
//
//     // read value from the Box
//
//     // print(b.get("Id"));
//     // print(b.get("Name"));
//     // print(b.get("Language"));
//     // print(b.get("Dept"));
//     // print(b.get("Designation"));
//     // print(b.get("x",defaultValue: "This is not null value"));
//     // print(b.get("x",defaultValue: "This is null value"));
//
//     //update the value in box
//     // b.put("Id", 7);
//     // print(b.get("Id"));
//
//     //   Delete the value in box
//
// // b!.delete("Id");
// // b!.deleteAll(b!.keys);  // to delete all value in box
// // print(b!.get("Id"));
//
// // b!.deleteFromDisk(); // this method will delete all value and close the box
//   }

  Widget customTextField({required controller, required String labelText}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: labelText),
    );
  }

  Widget customTextButton({required int index, required String buttonName}) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
        elevation: MaterialStateProperty.all(3),
        shadowColor:
            MaterialStateProperty.all(Colors.deepPurple), //Defines shadowColor
      ),
      onPressed: buttonName == "Yes"
          ? () {
              _hiveDataStore.deleteUser(index: index);
              Navigator.of(context).pop();
            }
          : () {
              Navigator.of(context).pop();
            },
      child: Text(
        buttonName,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

}
