import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/injector.dart' as di;
import 'features/users/presentation/bloc/user_bloc.dart';
import 'features/users/presentation/pages/user_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean Arch BLoC Demo',
      home: BlocProvider(
        create: (_) => di.sl<UserBloc>(),

        child: const UserPage(),
      ),
    );
  }
}
