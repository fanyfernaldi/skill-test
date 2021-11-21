import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/services/google_signin_service.dart';
import 'package:to_do/ui/pages/sign_in_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GoogleSignInService(),
          child: SignInPage(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SignInPage(),
        },
      ),
    );
  }
}
