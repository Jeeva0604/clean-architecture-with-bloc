import 'dart:developer';

import '../../../../core/network/dio_client.dart';
import '../models/user_model.dart';

class UserRemoteDataSource {
  final DioClient dioClient;

  UserRemoteDataSource(this.dioClient);

  Future<List<UserModel>> getUsers() async {
    // Measure total time (network + model conversion)
    final totalStopwatch = Stopwatch()..start();

    // Measure raw JSON fetch time only
    final apiStopwatch = Stopwatch()..start();
    final response = await dioClient.get('/api//v1/api');
    apiStopwatch.stop();

    if (response.statusCode == 200) {
      log('🌐 Raw JSON fetch time: ${apiStopwatch.elapsedMilliseconds} ms');

      // Measure model conversion
      final conversionStopwatch = Stopwatch()..start();

      final users = (response.data as List)
          .map((json) => UserModel.fromJson(json))
          .toList();

      conversionStopwatch.stop();
      totalStopwatch.stop();

      log(
        '⚙️ Total (API + Model conversion): ${totalStopwatch.elapsedMilliseconds} ms',
      );

      return users;
    } else {
      String msg = response.data['msg'];
      throw Exception(msg);
    }
  }

  Future<UserModel> createUser(UserModel user) async {
    final response = await dioClient.post('/posts', user.toJson());
    if (response.statusCode == 201) {
      return UserModel.fromJson(response.data);
    } else {
      String msg = response.data['msg'];
      throw Exception(msg);
    }
  }
}
