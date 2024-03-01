
import 'dart:convert';

Employee employeeFromJson( str) => Employee.fromJson(str);

String employeeToJson(Employee data) => json.encode(data.toJson());

class Employee {
  String status;
  Data data;

  Employee({
    required this.status,
    required this.data,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    status: json["status"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
  };
}

class Data {
  String name;
  String salary;
  String age;
  int id;

  Data({
    required this.name,
    required this.salary,
    required this.age,
    required this.id,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    name: json["name"],
    salary: json["salary"],
    age: json["age"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "salary": salary,
    "age": age,
    "id": id,
  };
}
