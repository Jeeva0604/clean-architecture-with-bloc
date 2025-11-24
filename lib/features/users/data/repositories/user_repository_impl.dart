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
      name: '',
      email: '',
      city: '',
      isActive: true,
      orderId: 0,
      userId: '',
      age: '',
      quantity: '',
      year: 0,
      latitude: '',
      longitude: 0,
      price: '',
      rating: 0,
      discount: 0,
      temperature: 0,
      speed: '',
      height: 0,
      weight: 0,
      length: '',
      country: '',
      status: '',
      isAdmin: false,
      isPremium: '',
      isVerified: true,
      hasOrders: '',
    );
  }
}
