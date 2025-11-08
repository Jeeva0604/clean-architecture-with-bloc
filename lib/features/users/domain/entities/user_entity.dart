// class UserEntity {
//   final String id;
//   final String name;
//   final String email;

//   UserEntity({required this.id, required this.name, required this.email});
// }


class UserEntity {
  final String id;
  final String name;
  final String email;
  final String avatar;
  final String city;
  final String pincode;
  final String state;
  final DateTime birthday;
  final bool isActive;
  final String gender;
  final String address;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.avatar,
    required this.city,
    required this.pincode,
    required this.state,
    required this.birthday,
    required this.isActive,
    required this.gender,
    required this.address,
  });
}
