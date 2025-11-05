import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/users/data/data_sources/user_remote_data_source.dart';
import '../../features/users/data/repositories/user_repository_impl.dart';
import '../../features/users/domain/usecases/get_users.dart';
import '../../features/users/domain/usecases/create_user.dart';
import '../../features/users/presentation/bloc/user_bloc.dart';
import '../network/dio_client.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// ---- CORE ----
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<DioClient>(() => DioClient(sl<Dio>()));

  /// ---- DATA SOURCES ----
  sl.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSource(sl<DioClient>()),
  );

  /// ---- REPOSITORY ----
  sl.registerLazySingleton<UserRepositoryImpl>(
    () => UserRepositoryImpl(sl<UserRemoteDataSource>()),
  );

  /// ---- USE CASES ----
  sl.registerLazySingleton<GetUsersUseCase>(
    () => GetUsersUseCase(sl<UserRepositoryImpl>()),
  );
  sl.registerLazySingleton<CreateUserUseCase>(
    () => CreateUserUseCase(sl<UserRepositoryImpl>()),
  );

  /// ---- BLOC ----
  sl.registerFactory<UserBloc>(
    () => UserBloc(sl<GetUsersUseCase>(), sl<CreateUserUseCase>()),
  );
}
