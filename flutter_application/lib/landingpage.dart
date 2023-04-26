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
import 'package:flutter_application/login.dart';
import 'package:flutter_application/signup.dart';
import 'package:flutter_application/widgets/button.dart';
import 'package:flutter_application/widgets/custom_scaffold_cover.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}
//LANDING PAGE DESIGN
class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScaffold(
          child: Container(
          width: 1440,
          height: 1024,
          child: Stack(
              children:[
                  Positioned(
                      left: 635,
                      top: 0,
                      child: Container(
                          width: 600,
                          height: 900,
                          child: Image.asset('images/wtpic.jpeg'),
                      ),
                  ),
                  Positioned(
                      left: 160,
                      top: 78,
                      child: Container(
                          width: 144,
                          height: 169,
                          child: Image.asset('images/connect.png')
                      ),
                  ),
                  Positioned(
                      left: 269,
                      top: 374,
                      child: Column(
                        children: [
                          SizedBox(
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
                        //BUTTON FOR LOG IN AND SIGN IN
                          MyButton(onPressed: (){
                            Navigator.pushAndRemoveUntil(
                              context, MaterialPageRoute(
                                builder:(context)=> const SignUp() ), (route) => false);
                          }, text: 'SignUp'),
                          SizedBox(height: 10,),
                           MyButton(onPressed: (){
                            Navigator.pushAndRemoveUntil(
                              context, MaterialPageRoute(
                                builder:(context)=> const Login() ), (route) => false);
                          }, text: 'Login')
                        ],
                      ),
                  ),
                  
                          
                      
                  
              ],
          ),
              ),
        ),
      
    );
  }
}