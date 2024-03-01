import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/http_package_api/Api_calling/customTextfeild.dart';

import 'firstmodel.dart';


class UserPersonalDetail extends StatefulWidget {
  UserModel personalDetail;

  UserPersonalDetail(this.personalDetail, {super.key});

  @override
  State<UserPersonalDetail> createState() => _UserPersonalDetailState();
}

class _UserPersonalDetailState extends State<UserPersonalDetail> {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(widget.personalDetail.name);
    }
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("User's Details"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            height: 50,
            child: Text(
              widget.personalDetail.name,
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 20,
              thickness: 2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Personal Details",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black))),
          ),
          CustomTextFields(
            name: widget.personalDetail.name,
            title: "Name",
            icon: Icons.person,
          ),
          CustomTextFields(
            name: widget.personalDetail.email,
            title: "Email",
            icon: Icons.alternate_email,
          ),
          CustomTextFields(
            name: widget.personalDetail.phone,
            title: "Phone",
            icon: Icons.phone,
          ),
          CustomTextFields(
            name: widget.personalDetail.website,
            title: "Website",
            icon: Icons.home,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Address",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black))),
          ),
          CustomTextFields(
            name: widget.personalDetail.address.street,
            title: "Street",
            icon: Icons.location_pin,
          ),
          CustomTextFields(
            name: widget.personalDetail.address.city,
            title: "City",
            icon: Icons.location_city,
          ),
          CustomTextFields(
            name: widget.personalDetail.address.zipcode,
            title: "Zipcode",
            icon: Icons.pin_outlined,
          ),
          CustomTextFields(
            name: widget.personalDetail.address.suite,
            title: "Suite",
            icon: Icons.airline_seat_individual_suite,
          ),
        ],
      ),
    ));
  }
}
