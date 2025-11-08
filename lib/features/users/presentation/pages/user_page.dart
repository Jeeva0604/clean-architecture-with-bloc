import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaaroz_sdk/app_loader.dart';

import '../bloc/user_bloc.dart';
import '../bloc/user_event.dart';
import '../bloc/user_state.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return Center(child: AppLoader(size: 30, color: Colors.red));
          }
          if (state is UserLoaded) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (_, i) => ListTile(
                title: Text(state.users[i].name.toString()),
                subtitle: Text(state.users[i].email.toString()),
              ),
            );
          }

          if (state is UserError) return Center(child: Text(state.message));
          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<UserBloc>().add(FetchUsers());
              },
              child: const Text("Fetch Users"),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // final user = UserEntity(
          //   id: "0",
          //   name: 'Zaaroz',
          //   email: 'Zaaroz@example.com',
          // );
          context.read<UserBloc>().add(FetchUsers());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
