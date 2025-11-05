import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class GetUsersUseCase {
  final UserRepository repository;
  const GetUsersUseCase(this.repository);

  Future<List<UserEntity>> call() => repository.getUsers();
}
