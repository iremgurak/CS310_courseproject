import 'package:flutter/material.dart';

import 'create_account_view.dart';
import 'login_view.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

  class _HomeState extends State<Welcome> {

      login2() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginView()),
        );
      }

      signup() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CreateAccountView()),
        );
      }

      Scaffold buildUnAuthScreen() {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Theme
                      .of(context)
                      .colorScheme
                      .primary,
                  Theme
                      .of(context)
                      .colorScheme
                      .onPrimary,
                ],
              ),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Familicious',
                  style: TextStyle(
                    fontFamily: "Signatra",
                    fontSize: 90.0,
                    color: Colors.white,
                  ),
                ),

                OutlinedButton(

                  child: const Text("Login",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold
                    ),
                  ),

                  onPressed: login2,
                ),
                const SizedBox(height: 10,),
                OutlinedButton(

                  child: const Text("Sign Up",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold
                    ),
                  ),

                  onPressed: signup,
                ),

              ],
            ),
          ),
        );
      }

      @override
      Widget build(BuildContext context) {
        return buildUnAuthScreen();
      }
    }