import 'package:flutter/material.dart';
import 'package:flutter_application/models/UserModel.dart';
import 'package:flutter_application/widgets/custom_textfield.dart';


class EditProfile extends StatefulWidget {
  final UserModel userModel;
  const EditProfile({super.key,
  required this.userModel});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
      TextEditingController dobcontroller= TextEditingController();
  TextEditingController majorcontroller= TextEditingController();
  TextEditingController yeargroupcontroller= TextEditingController();
  TextEditingController favfoodcontroller= TextEditingController();
  TextEditingController favmoviecontroller= TextEditingController();
  TextEditingController campuscontroller= TextEditingController();
  TextEditingController residecontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Edit Profile'),
    ),
    body: ListView(children: [
       CustomTextField(controller: dobcontroller, text: 'Date of Birth'),
                    CustomTextField(controller: majorcontroller, text: 'Major'),
                    CustomTextField(controller: yeargroupcontroller, text: 'Year group'),
                    CustomTextField(controller: favfoodcontroller, text: 'Favourite Food'),
                    CustomTextField(controller: favmoviecontroller, text: 'Favourite Movie'),
                    CustomTextField(controller: residecontroller, text: 'Campus Residency?'),

                    ElevatedButton(onPressed: (){
                        UserModel userModel = UserModel(
                          password: widget.userModel.password,
                            userID: widget.userModel.userID,
                            favFood: favfoodcontroller.text,
                            favMovie: favmoviecontroller.text,
                            dateOfBirth: dobcontroller.text,
                            yearGroup: yeargroupcontroller.text,
                            userName: widget.userModel.userName,
                            email: widget.userModel.email,
                            campusResidence: widget.userModel.campusResidence,
                            major:majorcontroller.text);
                            userModel.updateUserDetails(widget.userModel.email);
                    }, child: Text('SAVE'))
    ]),
  );
  }
}