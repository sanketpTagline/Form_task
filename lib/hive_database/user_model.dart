import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UsersModel extends HiveObject
{
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String hobby;

  @HiveField(2)
  final String description;

  UsersModel({required this.name, required this.hobby, required this.description});
}

//
// @HiveType(typeId: 0)
// class UsersModel extends HiveObject {
//   UsersModel({
//     required this.dateCreated,
//     required this.moodScale,
//     required this.moodState,
//     required this.notes,
//   });
//
//   @HiveField(0)
//   String dateCreated;
//   @HiveField(1)
//   int moodScale;
//   @HiveField(2)
//   int moodState;
//   @HiveField(3)
//   Note notes;
// }
//
// @HiveType(typeId: 1)
// class Note  {
//   Note(
//       {required this.noteTitle,
//         required this.noteDescription,
//         required this.imagePath});
//
//   @HiveField(0)
//   String noteTitle;
//   @HiveField(1)
//
//   String noteDescription;
//   @HiveField(2)
//
//   String imagePath;
// }