import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter_application/login.dart';
import 'package:flutter_application/mainScreens/feed_page.dart';
import 'package:flutter_application/mainScreens/profile.dart';
import 'package:flutter_application/models/UserModel.dart';
import 'package:flutter_application/widgets/custom_scaffold_cover.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  final UserModel userModel;
  const HomePage({
    super.key,
    required this.userModel
    });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final Future<SharedPreferences> _prefs =  SharedPreferences.getInstance();
  String page = '';
  UserModel userModel = UserModel(
    userID: 'N/A', 
    favFood: 'N/A', 
    favMovie:  'N/A', 
    dateOfBirth:  'N/A', 
    yearGroup:  'N/A', 
    userName:  'N/A', 
    email:  'N/A', 
    campusResidence: 
     'N/A', 
    password:  'N/A', 
    major:  'N/A');
      
  @override
  void initState() {
    super.initState();
    getUser();
  }

  
  Future<void> getUser()async{
   UserModel userModel = await widget.userModel.getUser(widget.userModel.email);
   setState(() {
     this.userModel = userModel;
   });}

   Widget sidebar(){
    return
    Container(
      decoration: BoxDecoration(
        border: Border.all()
      ),
      width: MediaQuery.of(context).size.width*0.2,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          DrawerHeader(
          padding: EdgeInsets.zero,
            child: Image.asset('images/connect.png')),
          ListTile(
      onTap: (){
        setState(() {
          page = 'Profile';
        });
      },
      title: Text(
        'Profile',
        
        ),
      trailing: const Icon(Icons.arrow_forward_ios),
    ),
     ListTile(
      onTap: (){
        setState(() {
          page = 'FeedPage';
        });
      },
      title: Text(
        'Feed',
        
        ),
      trailing: const Icon(Icons.arrow_forward_ios),
    ),
        
          const Spacer(),

        //Logout button
        ListTile(
      onTap: ()async{
        // remove variable from shared preferences 
        SharedPreferences prefs = await _prefs;
        prefs.remove('userEmail').then((value) =>  Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(
            builder: (context)=> const Login()), (route) => false));
       
      },
      title: const Text(
        'Log Out',
   
        ),
      trailing: const Icon(Icons.arrow_forward_ios),
    )


          
      ]),
    );
  }
    Widget changePage(){
   switch (page){
    case 'FeedPage':
      return Container(
        width: MediaQuery.of(context).size.width*0.6,
        height: MediaQuery.of(context).size.height,
        child: FeedPage());
    
    case 'Profile': 
      return Container(
        width: MediaQuery.of(context).size.width*0.8,
        height: MediaQuery.of(context).size.height,
        child: Profile(
          userModel: userModel,

        ));

    // case 'FeedPage':
    //   return Container(
    //     width: MediaQuery.of(context).size.width*0.8,
    //     height: MediaQuery.of(context).size.height,
    //     child: FeedPage()); 
    default:
      return  SizedBox(
        width: MediaQuery.of(context).size.width*0.8,
        height: MediaQuery.of(context).size.height,
        child: const Scaffold(body: Center(child: Text('No information')),));
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
      width: 1440,
      height: 1024,
     
      child: Row(
        children: [
                  Spacer(),

          sidebar(),
          SizedBox(
            child: changePage(),
          ),
          
         Spacer()
        ],
      ),
    ),
    
    );
  }
}