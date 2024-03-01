import 'dart:convert';

JobModel jobModelFromJson(String str) => JobModel.fromJson(json.decode(str));
JobModel jobModelFromJson1( str) => JobModel.fromJson((str));

String jobModelToJson(JobModel data) => json.encode(data.toJson());

class JobModel {
  String name;
  String job;
  DateTime updatedAt;

  JobModel({
    required this.name,
    required this.job,
    required this.updatedAt,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
    name: json["name"],
    job: json["job"],
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "job": job,
    "updatedAt": updatedAt.toIso8601String(),
  };
}
