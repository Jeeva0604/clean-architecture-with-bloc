// // import '../../domain/entities/user_entity.dart';

// // class UserModel extends UserEntity {
// //   UserModel({required super.id, required super.name, required super.email});

// //   factory UserModel.fromJson(Map<String, dynamic> json) {
// //     final stopwatch = Stopwatch()..start();

// //     final model = UserModel(
// //       id: JsonHelper.toStringValue(json['id']),
// //       // id: json['id'] ?? '',
// //       name: json['title'] ?? '',
// //       email: json['url'] ?? '',
// //     );

// //     stopwatch.stop();
// //     // print(
// //     //   '⏱ UserModel.fromJson executed in ${stopwatch.elapsedMicroseconds} µs',
// //     // );

// //     return model;
// //   }

// //   Map<String, dynamic> toJson() {
// //     final stopwatch = Stopwatch()..start();

// //     final json = {'id': id, 'name': name, 'email': email};

// //     stopwatch.stop();
// //     // print('⏱ UserModel.toJson executed in ${stopwatch.elapsedMicroseconds} µs');

// //     return json;
// //   }
// // }

// // class JsonHelper {
// //   static String toStringValue(dynamic value) {
// //     final stopwatch = Stopwatch()..start();

// //     final result = value?.toString() ?? '';

// //     stopwatch.stop();
// //     // print(
// //     //   '⚙️ JsonHelper.toStringValue took ${stopwatch.elapsedMicroseconds} µs',
// //     // );

// //     return result;
// //   }
// // }

// import '../../domain/entities/user_entity.dart';

// class UserModel extends UserEntity {
//   const UserModel({
//     required super.id,
//     required super.name,
//     required super.email,
//     required super.avatar,
//     required super.city,
//     required super.pincode,
//     required super.state,
//     required super.birthday,
//     required super.isActive,
//     required super.gender,
//     required super.address,
//   });

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       id: json['id'] ?? '',
//       name: json['name'] ?? '',
//       email: json['email'] ?? '',
//       avatar: json['avatar'] ?? '',
//       city: json['city'] ?? '',
//       pincode: json['pincode'] ?? '',
//       state: json['state'] ?? '',
//       birthday: DateTime.tryParse(json['birthday'] ?? '') ?? DateTime.now(),
//       isActive: json['is_active'] ?? false,
//       gender: json['gender'] ?? '',
//       address: json['address'] ?? '',
//     );
//   }

//   // factory UserModel.fromJson(Map<String, dynamic> json) {
//   //   final stopwatch = Stopwatch()..start();

//   //   final model = UserModel(
//   //     id: JsonHelper.toStringValue(json['id']),
//   //     name: JsonHelper.toStringValue(json['name']),
//   //     email: JsonHelper.toStringValue(json['email']),
//   //     avatar: JsonHelper.toStringValue(json['avatar']),
//   //     city: JsonHelper.toStringValue(json['city']),
//   //     pincode: JsonHelper.toStringValue(json['pincode']),
//   //     state: JsonHelper.toStringValue(json['state']),
//   //     birthday: DateTime.tryParse(json['birthday'] ?? '') ?? DateTime.now(),
//   //     isActive: json['is_active'] ?? false,
//   //     gender: JsonHelper.toStringValue(json['gender']),
//   //     address: JsonHelper.toStringValue(json['address']),
//   //   );

//   //   stopwatch.stop();
//   //   // print('⏱ UserModel.fromJson executed in ${stopwatch.elapsedMicroseconds} µs');
//   //   return model;
//   // }

//   Map<String, dynamic> toJson() {
//     final stopwatch = Stopwatch()..start();

//     final json = {
//       'id': id,
//       'name': name,
//       'email': email,
//       'avatar': avatar,
//       'city': city,
//       'pincode': pincode,
//       'state': state,
//       'birthday': birthday.toIso8601String(),
//       'is_active': isActive,
//       'gender': gender,
//       'address': address,
//     };

//     stopwatch.stop();
//     // print('⏱ UserModel.toJson executed in ${stopwatch.elapsedMicroseconds} µs');
//     return json;
//   }

//   /// Convert a list of JSON objects into a list of models
//   static List<UserModel> fromJsonList(List<dynamic> jsonList) {
//     return jsonList.map((json) => UserModel.fromJson(json)).toList();
//   }
// }

// class JsonHelper {
//   static String toStringValue(dynamic value) {
//     if (value == null) return '';
//     return value.toString();
//   }

//   static bool toBoolValue(dynamic value) {
//     if (value == null) return false;
//     if (value is bool) return value;
//     if (value is String) {
//       return value.toLowerCase() == 'true' || value == '1';
//     }
//     if (value is num) return value == 1;
//     return false;
//   }

//   static double toDoubleValue(dynamic value) {
//     if (value == null) return 0.0;
//     if (value is double) return value;
//     return double.tryParse(value.toString()) ?? 0.0;
//   }
// }

import 'package:flutter_clean_arc/features/users/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.orderId,
    required super.userId,
    required super.age,
    required super.quantity,
    required super.year,
    required super.latitude,
    required super.longitude,
    required super.price,
    required super.rating,
    required super.discount,
    required super.temperature,
    required super.speed,
    required super.height,
    required super.weight,
    required super.length,
    required super.name,
    required super.email,
    required super.city,
    required super.country,
    required super.status,
    required super.isActive,
    required super.isAdmin,
    required super.isPremium,
    required super.isVerified,
    required super.hasOrders,
  });

  // factory UserModel.fromJson(Map<String, dynamic> json) {
  //   return UserModel(
  //     orderId: json['orderId'] ?? 0,
  //     userId: json['userId'] ?? '',
  //     age: json['age'] ?? '',
  //     quantity: json['quantity'] ?? '',
  //     year: json['year'] ?? 0,
  //     latitude: json['latitude'] ?? '',
  //     longitude: json['longitude'] ?? 0.0,
  //     price: json['price'] ?? '',
  //     rating: json['rating'] ?? 0.0,
  //     discount: json['discount'] ?? 0.0,
  //     temperature: json['temperature'] ?? 0.0,
  //     speed: json['speed'] ?? '',
  //     height: json['height'] ?? 0.0,
  //     weight: json['weight'] ?? 0.0,
  //     length: json['length'] ?? '',
  //     name: json['name'] ?? '',
  //     email: json['email'] ?? '',
  //     city: json['city'] ?? '',
  //     country: json['country'] ?? '',
  //     status: json['status'] ?? '',
  //     isActive: json['isActive'] ?? false,
  //     isAdmin: json['isAdmin'] ?? false,
  //     isPremium: json['isPremium'] ?? '',
  //     isVerified: json['isVerified'] ?? false,
  //     hasOrders: json['hasOrders'] ?? '',
  //   );
  // }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      orderId: json['orderId'] ?? 0,
      userId: JsonHelper.toStringValue(json['userId']),
      age: JsonHelper.toStringValue(json['age']),
      quantity: JsonHelper.toStringValue(json['quantity']),
      year: json['year'] ?? 0,
      latitude: JsonHelper.toStringValue(json['latitude']),
      longitude: JsonHelper.toDoubleValue(json['longitude']),
      price: JsonHelper.toStringValue(json['price']),
      rating: JsonHelper.toDoubleValue(json['rating']),
      discount: JsonHelper.toDoubleValue(json['discount']),
      temperature: JsonHelper.toDoubleValue(json['temperature']),
      speed: JsonHelper.toStringValue(json['speed']),
      height: JsonHelper.toDoubleValue(json['height']),
      weight: JsonHelper.toDoubleValue(json['weight']),
      length: JsonHelper.toStringValue(json['length']),
      name: JsonHelper.toStringValue(json['name']),
      email: JsonHelper.toStringValue(json['email']),
      city: JsonHelper.toStringValue(json['city']),
      country: JsonHelper.toStringValue(json['country']),
      status: JsonHelper.toStringValue(json['status']),
      isActive: JsonHelper.toBoolValue(json['isActive']),
      isAdmin: JsonHelper.toBoolValue(json['isAdmin']),
      isPremium: JsonHelper.toStringValue(json['isPremium']),
      isVerified: JsonHelper.toBoolValue(json['isVerified']),
      hasOrders: JsonHelper.toStringValue(json['hasOrders']),
    );
  }

  Map<String, dynamic> toJson() => {
    'orderId': orderId,
    'userId': userId,
    'age': age,
    'quantity': quantity,
    'year': year,
    'latitude': latitude,
    'longitude': longitude,
    'price': price,
    'rating': rating,
    'discount': discount,
    'temperature': temperature,
    'speed': speed,
    'height': height,
    'weight': weight,
    'length': length,
    'name': name,
    'email': email,
    'city': city,
    'country': country,
    'status': status,
    'isActive': isActive,
    'isAdmin': isAdmin,
    'isPremium': isPremium,
    'isVerified': isVerified,
    'hasOrders': hasOrders,
  };

  static List<UserModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => UserModel.fromJson(json)).toList();
  }
}

class JsonHelper {
  static String toStringValue(dynamic value) {
    if (value == null) return '';
    return value.toString();
  }

  static bool toBoolValue(dynamic value) {
    if (value == null) return false;
    if (value is bool) return value;
    if (value is String) {
      return value.toLowerCase() == 'true' || value == '1';
    }
    if (value is num) return value == 1;
    return false;
  }

  static double toDoubleValue(dynamic value) {
    if (value == null) return 0.0;
    if (value is double) return value;
    return double.tryParse(value.toString()) ?? 0.0;
  }
}
