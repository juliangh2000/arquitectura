import 'package:adoptme/pages/get_started.dart';
import 'package:adoptme/provider/LoginFormProvider.dart';
import 'package:adoptme/provider/VeterinariaFormProvider.dart';
import 'package:adoptme/services/AuthService.dart';
import 'package:adoptme/services/VeterService.dart';
import 'package:adoptme/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AdoptMe',
      theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: Styles.blackColor,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(primary: Styles.blackColor)),
      home: const GetStarted(),
    );
  }
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthService(),
        ),
        ChangeNotifierProvider(
          create: (_) => LoginFormProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => VeterinariaFormProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => VeterService(),
        ),
      ],
      child: MyApp(),
    );
  }
}
