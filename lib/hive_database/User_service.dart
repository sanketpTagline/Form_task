import 'package:hive_flutter/adapters.dart';
import 'package:hive/hive.dart';
import 'package:untitled/hive_database/user_model.dart';

import '../http_package_api/Api_calling/firstmodel.dart';

class HiveDataStore {
  static  String boxName = "userBox";

  static Box<UsersModel> box = Hive.box<UsersModel>(boxName);


  Future addUser({required UsersModel usersModel}) async {
    await box.add(usersModel);
  }

  Future<void> getUser({required String id}) async{
    await box.get(id);
  }

  Future<void> updateUser({required int index,required UsersModel usersModel}) async {
    await box.putAt(index,usersModel);
  }

  Future<void> deleteUser({required int index}) async {
    await box.deleteAt(index);
  }


  Future<void>showdetails() async {
    print(box.values);
  }

}