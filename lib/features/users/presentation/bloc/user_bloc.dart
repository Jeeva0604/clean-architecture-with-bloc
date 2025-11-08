import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_users.dart';
import '../../domain/usecases/create_user.dart';
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsersUseCase getUsersUseCase;
  final CreateUserUseCase createUserUseCase;

  UserBloc(this.getUsersUseCase, this.createUserUseCase)
    : super(UserInitial()) {
    on<FetchUsers>(_onFetchUsers);
    on<AddUser>(_onAddUser);
  }

  Future<void> _onFetchUsers(FetchUsers event, Emitter<UserState> emit) async {
    emit(UserLoading());
    await Future.delayed(Duration(seconds: 3));
    try {
      final users = await getUsersUseCase();
      emit(UserLoaded(users));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }

  Future<void> _onAddUser(AddUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    try {
      await createUserUseCase(event.user);
      final users = await getUsersUseCase();
      emit(UserLoaded(users));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}
