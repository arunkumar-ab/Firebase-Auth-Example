import 'package:auth_example/sign_up_view.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SignUpView(),
                        ),
                      );
                    },
                    child: Text(
                      "Dont have an account?",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign In"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/sign_up_banner.png",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
