import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../data_sources/user_remote_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<UserEntity>> getUsers() => remoteDataSource.getUsers();

  @override
  Future<UserEntity> createUser(UserEntity user) async {
    return UserEntity(
      id: '',
      name: '',
      email: '',
      avatar: '',
      city: '',
      pincode: '',
      state: '',
      birthday: DateTime.now(),
      isActive: true,
      gender: '',
      address: '',
    );
  }
}
