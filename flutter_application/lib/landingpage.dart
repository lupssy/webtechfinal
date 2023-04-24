// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class landingpage extends StatelessWidget {
//   const landingpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft, 
//           colors:[
//       Color(0x00FFFFD800),
//         Color(0xffffbf00),
//         Color(0xffffff00)
//           ] )),
//     child: Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
//         child: Column(
//           //crossAxisAlignment: CrossAxisAlignment.start ,
//           children:[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'CONNETIKIT', 
//                   style: TextStyle(
//                     color:Colors.white, 
//                     fontSize: 30, 
//                     fontWeight: FontWeight.bold),),
//                 Row(
//                   children: [
//                     Text('Login', style: TextStyle(color:Colors.white, fontSize: 15, fontWeight: FontWeight.normal)),
//                     SizedBox(width: 50),
//                     Text('SignUp', style: TextStyle(color:Colors.white, fontSize: 15, fontWeight: FontWeight.normal)),
//                     SizedBox(width: 50),
//                     Text('FAQs', style: TextStyle(color:Colors.white, fontSize: 15, fontWeight: FontWeight.normal)),
//                     SizedBox(width: 50),
//                     Icon(Icons.search, color: Colors.white),
                  
//               ]
//                 )
              
//                 ],
          
//                 )
//             ,SizedBox(height:40)
//             ,Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 children: [
//                   SizedBox(height: 100),
//                   Text(
//                     'A safe space', 
//                     style: TextStyle(
//                       color: Colors.white, fontSize: 20)),
//                 SizedBox(height: 20,),
//                 Text('welcome to Connetikit', style: TextStyle(fontSize: 20)),
//                 ],
//               ),
//               Image.asset(
//                 'images/happyman.jpeg',
//                 width: 300,
//                 )
//             ],
//           )
//           ]
//           ),
//         ),
//       ),);
    
//   }
// }


import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
      width: 1440,
      height: 1024,
      color: Colors.white,
      child: Stack(
          children:[
              Positioned(
                  left: 635,
                  top: 0,
                  child: Container(
                      width: 642,
                      height: 1024,
                      child: FlutterLogo(size: 642),
                  ),
              ),
              Positioned(
                  left: 160,
                  top: 78,
                  child: Container(
                      width: 144,
                      height: 169,
                      child: FlutterLogo(size: 144),
                  ),
              ),
              Positioned(
                  left: 269,
                  top: 374,
                  child: SizedBox(
                      width: 308,
                      height: 253,
                      child: Text(
                          "Connect and network today on Connetikit",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                          ),
                      ),
                  ),
              ),
              Positioned(
                  left: 255,
                  top: 879,
                  child: Container(
                      width: 265,
                      height: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffd9d9d9),
                      ),
                      padding: const EdgeInsets.only(left: 59, right: 52, ),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                              Text(
                                  "Signup",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                  ),
                              ),
                              SizedBox(width: 9),
                              Text(
                                  "\"",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                  ),
                              ),
                              SizedBox(width: 9),
                              Text(
                                  "login",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                  ),
                              ),
                          ],
                      ),
                  ),
              ),
          ],
      ),
    ),
    );
  }
}