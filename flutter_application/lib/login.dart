import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application/homepage.dart';
import 'package:flutter_application/models/UserModel.dart';
import 'package:flutter_application/widgets/button.dart';
import 'package:flutter_application/widgets/custom_scaffold_cover.dart';
import 'package:flutter_application/widgets/custom_textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScaffold(
    // width: 1440,
    // height: 1024,
    child: Center(
      child: Column(
       
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
          Image.asset('images/connect.png'),
          Text('Log in to your account'),
            SizedBox(height: 10,),

          Form(
            key: formkey,
            child: Column(
              children: [
                CustomTextField(controller: emailcontroller, text: 'Email'),
                CustomTextField(controller: passwordcontroller, text: 'Password'),
              ],
            ),
          ),
          MyButton(onPressed: ()async{
              
                  if(formkey.currentState!.validate()){
                    UserModel userModel = UserModel(
                      password: passwordcontroller.text,
                    userID: '', favFood: 'favourite Food', favMovie: 'favourite Movie', dateOfBirth: 'Date Of Birth', yearGroup: 'yearGroup', userName: 'userName', email: emailcontroller.text, campusResidence: 'CampusResidence', 
                    major: 'major');
                    UserModel userdoc = await userModel.getUser(emailcontroller.text);
                   
                   //authentication logic
                   //User email and id typed are compared with details gotten from firestore
                    if(
                      userdoc.email == emailcontroller.text
                      && userdoc.password == passwordcontroller.text){
                        // Obtain shared preferences.
                        try{
                        final prefs = await SharedPreferences.getInstance();
                        // Save user login session
                        await prefs.setString('userEmail', emailcontroller.text);
                        print('successful');
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                         builder: (context)=>  HomePage(userModel: userModel,)), (route) => false);
                        }
                        catch(e){
                         ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: 
                              Text( 'Error',
                              
                              )));
                        }
                       
                    }

                    else{
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                       const SnackBar(
                          content: Text(
                           'Error',
                          
                          )));
                    }
    
                  }
                  
                
                
          }, text: 'Login'),
          Spacer()
          ],
        ),
    ),
    )
    
);
  }
}