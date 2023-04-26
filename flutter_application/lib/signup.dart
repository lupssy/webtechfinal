import 'package:flutter/material.dart';
import 'package:flutter_application/login.dart';
import 'package:flutter_application/models/UserModel.dart';
import 'package:flutter_application/widgets/button.dart';
import 'package:flutter_application/widgets/custom_scaffold_cover.dart';
import 'package:flutter_application/widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();
  TextEditingController namecontroller= TextEditingController();
  TextEditingController idcontroller= TextEditingController();
  TextEditingController dobcontroller= TextEditingController();
  TextEditingController majorcontroller= TextEditingController();
  TextEditingController yeargroupcontroller= TextEditingController();
  TextEditingController favfoodcontroller= TextEditingController();
  TextEditingController favmoviecontroller= TextEditingController();
  TextEditingController residencecontroller= TextEditingController();


  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
  body: CustomScaffold(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
       Image.asset('images/connect.png'),
                Text('Join the Connetikit family now! Sign up'),
                  SizedBox(height: 10,),
        
                Center(
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextField(controller: namecontroller, text: 'Name'),
                        CustomTextField(controller: emailcontroller, text: 'Email'),
                        CustomTextField(controller: idcontroller, text: 'StudentID'),
                        CustomTextField(controller: dobcontroller, text: 'Date of Birth'),
                        CustomTextField(controller: majorcontroller, text: 'Major'),
                        CustomTextField(controller: yeargroupcontroller, text: 'Year group'),
                        CustomTextField(controller: favfoodcontroller, text: 'Favourite Food'),
                        CustomTextField(controller: favmoviecontroller, text: 'Favourite Movie'),
                        CustomTextField(controller: residencecontroller, text: 'Campus Residency?'),
                        CustomTextField(controller: passwordcontroller, text: 'Create Password'),
                      ],
                    ),
                  ),
                ),
                  MyButton(onPressed: (){
                   if(formkey.currentState!.validate()){
                         UserModel userModel = UserModel(
                          password: passwordcontroller.text,
                            userID: idcontroller.text, 
                            favFood: favfoodcontroller.text, 
                            favMovie: favmoviecontroller.text, 
                            dateOfBirth: dobcontroller.text, 
                            yearGroup: yeargroupcontroller.text, 
                            userName: namecontroller.text, 
                            email: emailcontroller.text, 
                            campusResidence: residencecontroller.text, 
                       
                            major: majorcontroller.text
                            );
                          // showDialog(context: context, builder: ((context) => const CustomLoader()));
                           userModel.createtUserAccount(context);
                           print('email:${emailcontroller.text}');
                    
                           
  
  
                      }
                     
                }, text: 'SignUp'),
                MyButton(onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>  Login()));
                }, text: 'Go to Log In' )
                  
      ]),
    ),
  ),
)
);
  }
}