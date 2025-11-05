import '../../../../core/network/dio_client.dart';
import '../models/user_model.dart';

class UserRemoteDataSource {
  final DioClient dioClient;

  UserRemoteDataSource(this.dioClient);

  Future<List<UserModel>> getUsers() async {
    final response = await dioClient.get('/users');
    return (response.data as List)
        .map((json) => UserModel.fromJson(json))
        .toList();
  }

  Future<UserModel> createUser(UserModel user) async {
    final response = await dioClient.post('/posts', user.toJson());
    return UserModel.fromJson(response.data);
  }
}
