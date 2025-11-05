import '../../domain/entities/user_entity.dart';

abstract class UserEvent {}

class FetchUsers extends UserEvent {}

class AddUser extends UserEvent {
  final UserEntity user;
  AddUser(this.user);
}
