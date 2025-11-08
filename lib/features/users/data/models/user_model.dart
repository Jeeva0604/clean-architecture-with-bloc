// import '../../domain/entities/user_entity.dart';

// class UserModel extends UserEntity {
//   UserModel({required super.id, required super.name, required super.email});

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     final stopwatch = Stopwatch()..start();

//     final model = UserModel(
//       id: JsonHelper.toStringValue(json['id']),
//       // id: json['id'] ?? '',
//       name: json['title'] ?? '',
//       email: json['url'] ?? '',
//     );

//     stopwatch.stop();
//     // print(
//     //   '⏱ UserModel.fromJson executed in ${stopwatch.elapsedMicroseconds} µs',
//     // );

//     return model;
//   }

//   Map<String, dynamic> toJson() {
//     final stopwatch = Stopwatch()..start();

//     final json = {'id': id, 'name': name, 'email': email};

//     stopwatch.stop();
//     // print('⏱ UserModel.toJson executed in ${stopwatch.elapsedMicroseconds} µs');

//     return json;
//   }
// }

// class JsonHelper {
//   static String toStringValue(dynamic value) {
//     final stopwatch = Stopwatch()..start();

//     final result = value?.toString() ?? '';

//     stopwatch.stop();
//     // print(
//     //   '⚙️ JsonHelper.toStringValue took ${stopwatch.elapsedMicroseconds} µs',
//     // );

//     return result;
//   }
// }

import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.name,
    required super.email,
    required super.avatar,
    required super.city,
    required super.pincode,
    required super.state,
    required super.birthday,
    required super.isActive,
    required super.gender,
    required super.address,
  });

  // factory UserModel.fromJson(Map<String, dynamic> json) {
  //   return UserModel(
  //     id: json['id'] ?? '',
  //     name: json['name'] ?? '',
  //     email: json['email'] ?? '',
  //     avatar: json['avatar'] ?? '',
  //     city: json['city'] ?? '',
  //     pincode: json['pincode'] ?? '',
  //     state: json['state'] ?? '',
  //     birthday: DateTime.tryParse(json['birthday'] ?? '') ?? DateTime.now(),
  //     isActive: json['is_active'] ?? false,
  //     gender: json['gender'] ?? '',
  //     address: json['address'] ?? '',
  //   );
  // }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final stopwatch = Stopwatch()..start();

    final model = UserModel(
      id: JsonHelper.toStringValue(json['id']),
      name: JsonHelper.toStringValue(json['name']),
      email: JsonHelper.toStringValue(json['email']),
      avatar: JsonHelper.toStringValue(json['avatar']),
      city: JsonHelper.toStringValue(json['city']),
      pincode: JsonHelper.toStringValue(json['pincode']),
      state: JsonHelper.toStringValue(json['state']),
      birthday: DateTime.tryParse(json['birthday'] ?? '') ?? DateTime.now(),
      isActive: json['is_active'] ?? false,
      gender: JsonHelper.toStringValue(json['gender']),
      address: JsonHelper.toStringValue(json['address']),
    );

    stopwatch.stop();
    // print('⏱ UserModel.fromJson executed in ${stopwatch.elapsedMicroseconds} µs');
    return model;
  }

  Map<String, dynamic> toJson() {
    final stopwatch = Stopwatch()..start();

    final json = {
      'id': id,
      'name': name,
      'email': email,
      'avatar': avatar,
      'city': city,
      'pincode': pincode,
      'state': state,
      'birthday': birthday.toIso8601String(),
      'is_active': isActive,
      'gender': gender,
      'address': address,
    };

    stopwatch.stop();
    // print('⏱ UserModel.toJson executed in ${stopwatch.elapsedMicroseconds} µs');
    return json;
  }

  /// Convert a list of JSON objects into a list of models
  static List<UserModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => UserModel.fromJson(json)).toList();
  }
}

class JsonHelper {
  static String toStringValue(dynamic value) {
    if (value == null) return '';
    return value.toString();
  }
}
