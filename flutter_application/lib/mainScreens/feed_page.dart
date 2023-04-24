import 'package:flutter/material.dart';



class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
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
                    left: 250,
                    top: 37,
                    child: SizedBox(
                        width: 210,
                        height: 949,
                        child: Material(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                            child: Padding(
                                padding: const EdgeInsets.only(top: 45, bottom: 18, ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                        SizedBox(
                                            width: 129,
                                            height: 121,
                                            child: Material(
                                                color: Colors.white,
                                                shape: CircleBorder(),
                                            ),
                                        ),
                                        SizedBox(height: 83),
                                        Text(
                                            "Laila Hijazi",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                            ),
                                        ),
                                        SizedBox(height: 83),
                                        Text(
                                            "72652024",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                            ),
                                        ),
                                        SizedBox(height: 83),
                                        Text(
                                            "View Profile",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                            ),
                                        ),
                                        SizedBox(height: 83),
                                        Text(
                                            "New Post",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                            ),
                                        ),
                                        SizedBox(height: 83),
                                        SizedBox(
                                            width: 170,
                                            height: 42,
                                            child: Text(
                                                "FAQ’s",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                        SizedBox(height: 83),
                                        SizedBox(
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
                                    ],
                                ),
                            ),
                        ),
                    ),
                ),
                Positioned(
                    left: 535,
                    top: 51,
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
                    left: 535,
                    top: 174,
                    child: SizedBox(
                        width: 665,
                        height: 198,
                        child: Material(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                                children:[
                                    Positioned(
                                        left: 103,
                                        top: 61,
                                        child: SizedBox(
                                            width: 440,
                                            height: 129,
                                            child: Text(
                                                "I found a new shop near the campus. \nThey have reasonably priced water.\nIts called water world check it out!",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 103,
                                        top: 17,
                                        child: SizedBox(
                                            width: 164,
                                            height: 40,
                                            child: Text(
                                                "Miriam U.",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 11,
                                        top: 17,
                                        child: SizedBox(
                                            width: 92,
                                            height: 88,
                                            child: Material(
                                                color: Colors.white,
                                                shape: CircleBorder(),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 451,
                                        top: 13,
                                        child: SizedBox(
                                            width: 184,
                                            height: 50,
                                            child: Text(
                                                "5 minutes ago...",
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
                    left: 535,
                    top: 443,
                    child: SizedBox(
                        width: 665,
                        height: 198,
                        child: Material(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                                children:[
                                    Positioned(
                                        left: 103,
                                        top: 99,
                                        child: SizedBox(
                                            width: 532,
                                            child: Text(
                                                "Can someone please tutor me in mecatronics?",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 103,
                                        top: 17,
                                        child: SizedBox(
                                            width: 164,
                                            height: 38,
                                            child: Text(
                                                "Felix Prince",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 11,
                                        top: 17,
                                        child: SizedBox(
                                            width: 92,
                                            height: 88,
                                            child: Material(
                                                color: Colors.white,
                                                shape: CircleBorder(),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 449,
                                        top: 17,
                                        child: SizedBox(
                                            width: 186,
                                            height: 44,
                                            child: Text(
                                                "10 minutes ago...",
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
                    left: 535,
                    top: 712,
                    child: SizedBox(
                        width: 665,
                        height: 198,
                        child: Material(
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(30),
                            child: Stack(
                                children:[
                                    Positioned(
                                        left: 103,
                                        top: 99,
                                        child: SizedBox(
                                            width: 532,
                                            height: 84,
                                            child: Text(
                                                "Uber on campus in 40 minutes. His number:\n023674892",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 103,
                                        top: 17,
                                        child: SizedBox(
                                            width: 124,
                                            height: 38,
                                            child: Text(
                                                "Lurika T.",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 11,
                                        top: 17,
                                        child: SizedBox(
                                            width: 92,
                                            height: 88,
                                            child: Material(
                                                color: Colors.white,
                                                shape: CircleBorder(),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 444,
                                        top: 20,
                                        child: Text(
                                            "20 minutes ago...",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                            ),
                                        ),
                                    ),
                                ],
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