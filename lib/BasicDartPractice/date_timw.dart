import 'package:flutter/foundation.dart';

void main() {
  DateTime dt = DateTime.parse("2024-02-14");
  DateTime dt1 = DateTime.parse("2003-08-10");
  if (kDebugMode) {
    print(dt.day);
  }

  // print(dt1.difference(dt).inDays.toString());
  dt = dt.subtract(const Duration(days: 2));
  if (kDebugMode) {
    print(dt.day);
  }

  DateTime myBirthdayCheck = DateTime.parse("2024-02-14");
  DateTime today = DateTime.parse("2024-02-14");

  if (myBirthdayCheck.isAtSameMomentAs(today)) {
    if (kDebugMode) {
      print("Today birthday");
    }
  }
  else if (myBirthdayCheck.isBefore(dt)) {
    if (kDebugMode) {
      print("Before my birthday");
    }
  } else if (myBirthdayCheck.isAfter(dt)) {
    if (kDebugMode) {
      print("AFTER my birthday");
    }
  }


}
