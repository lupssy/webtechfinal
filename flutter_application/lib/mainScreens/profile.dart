import 'package:flutter/material.dart';
import 'package:flutter_application/mainScreens/edit_profile.dart';
import 'package:flutter_application/models/UserModel.dart';
import 'package:flutter_application/widgets/custom_scaffold_cover.dart';


class Profile extends StatefulWidget {
  final UserModel userModel;
  const Profile({super.key,required this.userModel});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: 1440,
    height: 1024,
    child: CustomScaffold(child: Column(
      children: [
      
        ListTile(
          title: Text('Name'),
          subtitle: Text(widget.userModel.userName),
        ),
              ListTile(
          title: Text('Student ID'),
          subtitle: Text(widget.userModel.userID),
        ),
              ListTile(
          title: Text('date of birth'),
          subtitle: Text(widget.userModel.dateOfBirth),
        ),
              ListTile(
          title: Text('year Group'),
          subtitle: Text(widget.userModel.yearGroup),
        ),
      ListTile(
          title: Text('major'),
          subtitle: Text(widget.userModel.major),
        ),
              ListTile(
          title: Text('favourite food'),
          subtitle: Text(widget.userModel.favFood),
        ),
              ListTile(
          title: Text('favourite Movie'),
          subtitle: Text(widget.userModel.favMovie),
        ),
               ListTile(
          title: Text('Campus Residency?'),
          subtitle: Text(widget.userModel.campusResidence),
        ),
        SizedBox(height:100),
          ElevatedButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfile(userModel: widget.userModel,)));
            }, child: Text('Edit Profile')),
      ],
    ))
);
  }
}

