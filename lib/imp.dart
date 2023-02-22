// import 'dart:convert';

// Users usersFromJson(String str) => Users.fromJson(json.decode(str)); //????
// String usersToJson(Users data) => json.encode(data.toJson());

// class Users {
//   Users({
//     required this.data,
//   });

//   List<Datum> data;

//   factory Users.fromJson(Map<String, dynamic> json) => Users(
//         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//       };
// }

// class Datum {
//   Datum({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.phone,
//     required this.status,
//     required this.images,
//   });

//   int id;
//   String name;
//   String email;
//   String phone;
//   String status;
//   List<Image> images;

//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         id: json["id"],
//         name: json["name"],
//         email: json["email"],
//         phone: json["phone"],
//         status: json["status"],
//         images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "email": email,
//         "phone": phone,
//         "status": status,
//         "images": List<dynamic>.from(images.map((x) => x.toJson())),
//       };
// }

// class Image {
//   int id;
//   String url;
//   int isProfileImage;
//   Image({
//     required this.id,
//     required this.url,
//     required this.isProfileImage,
//   });

//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//         id: json["id"],
//         url: json["url"],
//         isProfileImage: json["is_profile_image"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "url": url,
//         "is_profile_image": isProfileImage,
//       };
// }
