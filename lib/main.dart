import 'package:five_media/authModule/ui/login_page.dart';
import 'package:five_media/trainingModule/bloc/login_bloc.dart';
import 'package:five_media/trainingModule/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:five_media/authModule/ui/landing_page.dart';
import 'package:five_media/appModule/ui/app_bar.dart';

// training module
import 'package:five_media/trainingModule/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Comment Dewa.. to navigate to salmans
// void main() {
//   runApp(const OnboardPageClass());
// }

// Dewa.. Training only
void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const MaterialApp(
        home: Scaffold(
          body: LoginPage(),
        ),
      ),
    );
  }
}
