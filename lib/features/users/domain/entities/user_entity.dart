// class UserEntity {
//   final String id;
//   final String name;
//   final String email;

//   UserEntity({required this.id, required this.name, required this.email});
// }

// class UserEntity {
//   final String id;
//   final String name;
//   final String email;
//   final String avatar;
//   final String city;
//   final String pincode;
//   final String state;
//   final DateTime birthday;
//   final bool isActive;
//   final String gender;
//   final String address;

//   const UserEntity({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.avatar,
//     required this.city,
//     required this.pincode,
//     required this.state,
//     required this.birthday,
//     required this.isActive,
//     required this.gender,
//     required this.address,
//   });
// }

class UserEntity {
  final int orderId;
  final String userId;
  final String age;
  final String quantity;
  final int year;
  final String latitude;
  final double longitude;
  final String price;
  final double rating;
  final double discount;
  final double temperature;
  final String speed;
  final double height;
  final double weight;
  final String length;
  final String name;
  final String email;
  final String city;
  final String country;
  final String status;
  final bool isActive;
  final bool isAdmin;
  final String isPremium;
  final bool isVerified;
  final String hasOrders;

  const UserEntity({
    required this.orderId,
    required this.userId,
    required this.age,
    required this.quantity,
    required this.year,
    required this.latitude,
    required this.longitude,
    required this.price,
    required this.rating,
    required this.discount,
    required this.temperature,
    required this.speed,
    required this.height,
    required this.weight,
    required this.length,
    required this.name,
    required this.email,
    required this.city,
    required this.country,
    required this.status,
    required this.isActive,
    required this.isAdmin,
    required this.isPremium,
    required this.isVerified,
    required this.hasOrders,
  });
}
