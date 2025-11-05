import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class CreateUserUseCase {
  final UserRepository repository;
  CreateUserUseCase(this.repository);

  Future<UserEntity> call(UserEntity user) => repository.createUser(user);
}
