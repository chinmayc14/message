import 'package:flutter/material.dart';
import 'package:message/pages/RegisterPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:message/pages/ConversationPageSlide.dart';
import 'package:message/repositories/AuthenticationRepository.dart';
import 'package:message/repositories/StorageRepository.dart';
import 'package:message/repositories/UserDataRepository.dart';
import 'package:message/blocs/authentication/Bloc.dart';

void main() {
  final AuthenticationRepository authRepository = AuthenticationRepository();
  final UserDataRepository userDataRepository = UserDataRepository();
  final StorageRepository storageRepository = StorageRepository();
  runApp(
    BlocProvider(
      builder: (context) => AuthenticationBloc(
          authenticationRepository: authRepository,
          userDataRepository: userDataRepository,
          storageRepository: storageRepository)
        ..dispatch(AppLaunched()),
      child: Message(),
    ),
  );
}

class Message extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is UnAuthenticated) {
            return RegisterPage();
          } else if (state is ProfileUpdated) {
            return ConversationPageSlide();
          } else {
            return RegisterPage();
          }
        },
      ),
    );
  }
}
