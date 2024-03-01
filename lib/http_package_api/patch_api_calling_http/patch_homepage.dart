import 'package:flutter/material.dart';
import 'package:untitled/http_package_api/patch_api_calling_http/patch_model.dart';
import 'package:untitled/http_package_api/patch_api_calling_http/patch_repository.dart';

class PatchHomePage extends StatefulWidget {
  const PatchHomePage({super.key});

  @override
  State<PatchHomePage> createState() => _PatchHomePageState();
}

class _PatchHomePageState extends State<PatchHomePage> {
  TextEditingController name = TextEditingController();
  TextEditingController job = TextEditingController();
  JobModel? jobModel;

  @override
  Widget build(BuildContext context) {
    name.text = "hello";
    job.text = "Developer";
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center
            ,
            children: [
              TextFormField(
                controller: name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter the your name";
                  }
                  return null;
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "Enter Your name",
                ),
              ),
              h15(),
              TextFormField(
                controller: job,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter the your job";
                  }
                  return null;
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.work),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "Enter Your job",
                ),
              ),
              h15(),

              InkWell(
                onTap: (){
                  Map<String,dynamic> data = {
                    "name": name.text.toString(),
                    "job": job.text.toString(),
                  };
//                   PatchJob().patchJobApi(data).then((value) {
//                     print(value.runtimeType);
//                     jobModel = value;
//                     name.text = jobModel!.name;
//                     job.text = jobModel!.job;
// setState(() {
//
// });
//
//                   });
                PatchJob().patchJobApiDio(data).then((value) {
                  print(" value ==> ${value}   ${value.runtimeType}");
                  jobModel = value;
                  name.text = jobModel!.name;
                    job.text = jobModel!.job;
                    setState(() {

                    });
                });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15)),
                  child:const Center(
                      child:  Text(
                        "Update Item",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

h15()
{
  return const SizedBox(height: 15,);
}