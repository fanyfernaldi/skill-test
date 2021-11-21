import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/services/google_signin_service.dart';
import 'package:to_do/ui/pages/main_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget loggedInUI(GoogleSignInService model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(model.googleAccount!.photoUrl ?? '').image,
          radius: 50,
        ),
        Text(model.googleAccount!.displayName ?? ''),
        Text(model.googleAccount!.email),
        ActionChip(
          avatar: Icon(Icons.logout),
          label: Text("Logout"),
          onPressed: () {
            Provider.of<GoogleSignInService>(context, listen: false).signOut();
          },
        )
      ],
    );
  }

  loginControls(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Provider.of<GoogleSignInService>(context, listen: false).signIn();
            },
            child: Container(
              width: 200,
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo_google.png',
                    width: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Sign in with Google',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget body() {
    return Consumer<GoogleSignInService>(
      builder: (context, model, child) {
        print('model.googleAccount: ${model.googleAccount}');
        if (model.googleAccount != null) {
          return Center(
            // child: loggedInUI(model),
            child: MainPage(model: model),
          );
        } else {
          return loginControls(context);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFCFF),
      body: body(),
    );
  }
}
