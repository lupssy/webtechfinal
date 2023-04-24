import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
    width: 1440,
    height: 1024,
    child: Material(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.only(left: 250, right: 454, top: 42, bottom: 156, ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                    Container(
                        width: 144,
                        height: 169,
                        child: FlutterLogo(size: 144),
                    ),
                    SizedBox(height: 23),
                    SizedBox(
                        width: 532,
                        height: 68,
                        child: Text(
                            "Already a member? Log in",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                            ),
                        ),
                    ),
                    SizedBox(height: 23),
                    SizedBox(
                        width: 164,
                        height: 67,
                        child: Text(
                            "email:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                            ),
                        ),
                    ),
                    SizedBox(height: 23),
                    SizedBox(
                        width: 532,
                        height: 113,
                        child: Material(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                        ),
                    ),
                    SizedBox(height: 23),
                    SizedBox(
                        width: 256,
                        height: 80,
                        child: Text(
                            "password:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                            ),
                        ),
                    ),
                    SizedBox(height: 23),
                    SizedBox(
                        width: 532,
                        height: 113,
                        child: Material(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                        ),
                    ),
                    SizedBox(height: 23),
                    SizedBox(
                        width: 164,
                        height: 78,
                        child: Text(
                            "sign in",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                            ),
                        ),
                    ),
                ],
            ),
        ),
    ),
);
  }
}