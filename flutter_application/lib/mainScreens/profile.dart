import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: 1440,
    height: 1024,
    child: Material(
        color: Colors.white,
        child: Stack(
            children:[
                Positioned(
                    left: 255,
                    top: 172,
                    child: SizedBox(
                        width: 930,
                        height: 812,
                        child: Material(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                                children:[
                                    Positioned(
                                        left: 0,
                                        top: 715,
                                        child: SizedBox(
                                            width: 170,
                                            height: 47,
                                            child: Text(
                                                "Edit",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 633,
                                        top: 340,
                                        child: SizedBox(
                                            width: 297,
                                            height: 54,
                                            child: Text(
                                                "laila.hijazi@ashesi.edu.gh",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 655,
                                        top: 383,
                                        child: SizedBox(
                                            width: 275,
                                            height: 38,
                                            child: Text(
                                                "72652024",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 645,
                                        top: 421,
                                        child: SizedBox(
                                            width: 285,
                                            height: 43,
                                            child: Text(
                                                "27/05/2000",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 639,
                                        top: 464,
                                        child: SizedBox(
                                            width: 285,
                                            height: 46,
                                            child: Text(
                                                "C’2024",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 0,
                                        top: 464,
                                        child: SizedBox(
                                            width: 170,
                                            height: 46,
                                            child: Text(
                                                "fav food:",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 0,
                                        top: 510,
                                        child: SizedBox(
                                            width: 170,
                                            height: 78,
                                            child: Text(
                                                "fav movie:",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 0,
                                        top: 549,
                                        child: SizedBox(
                                            width: 360,
                                            height: 72,
                                            child: Text(
                                                "do you reside on campus?:",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 170,
                                        top: 464,
                                        child: SizedBox(
                                            width: 215,
                                            height: 46,
                                            child: Text(
                                                "Pasta and sauce",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 170,
                                        top: 510,
                                        child: SizedBox(
                                            width: 190,
                                            child: Text(
                                                "Who da man",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 360,
                                        top: 542,
                                        child: SizedBox(
                                            width: 95,
                                            height: 46,
                                            child: Text(
                                                "no",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 20,
                                        top: 759,
                                        child: SizedBox(
                                            width: 170,
                                            height: 53,
                                            child: Text(
                                                "Sign Out",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: SizedBox(
                                                width: 930,
                                                height: 324,
                                                child: Material(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(30),
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 32,
                                        top: 115,
                                        child: SizedBox(
                                            width: 196,
                                            height: 182,
                                            child: Material(
                                                color: Color(0xffd9d9d9),
                                                shape: CircleBorder(),
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 520,
                    top: 74,
                    child: SizedBox(
                        width: 665,
                        height: 61,
                        child: Material(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                                children:[
                                    Positioned(
                                        left: 210,
                                        top: 14,
                                        child: SizedBox(
                                            width: 95,
                                            height: 38,
                                            child: Text(
                                                "Home",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 305,
                                        top: 14,
                                        child: SizedBox(
                                            width: 170,
                                            height: 38,
                                            child: Text(
                                                "Messages",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 475,
                                        top: 14,
                                        child: SizedBox(
                                            width: 115,
                                            height: 38,
                                            child: Text(
                                                "Settings",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 20,
                                        top: 10,
                                        child: SizedBox(
                                            width: 170,
                                            height: 42,
                                            child: Material(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(30),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 20,
                                        top: 14,
                                        child: SizedBox(
                                            width: 170,
                                            height: 47,
                                            child: Text(
                                                "Search...",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 255,
                    top: 84,
                    child: SizedBox(
                        width: 170,
                        height: 42,
                        child: Material(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                        ),
                    ),
                ),
                Positioned(
                    left: 255,
                    top: 88,
                    child: SizedBox(
                        width: 170,
                        height: 47,
                        child: Text(
                            "Back",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 187,
                    top: 503,
                    child: SizedBox(
                        width: 475,
                        height: 75,
                        child: Text(
                            "Laila Hijazi",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 197,
                    top: 589,
                    child: SizedBox(
                        width: 550,
                        height: 66,
                        child: Text(
                            "Management Informations systems",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                            ),
                        ),
                    ),
                ),
            ],
        ),
    ),
);
  }
}