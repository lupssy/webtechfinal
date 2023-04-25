import 'package:flutter/material.dart';
import 'package:flutter_application/models/PostModel.dart';
import 'package:flutter_application/widgets/button.dart';
import 'package:flutter_application/widgets/custom_textfield.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {

    TextEditingController emailcontroller= TextEditingController();
    TextEditingController namecontroller =  TextEditingController();
  TextEditingController messagecontroller =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
             
                        CustomTextField(controller: emailcontroller, text: 'Email'),
                        CustomTextField(controller: namecontroller, text: 'Name'),
                    CustomTextField(controller: messagecontroller, text: 'Message'),
                    

                    MyButton(onPressed: (){
                       PostModel post = PostModel(
                                          userName: namecontroller.text,
                                          timestamp: DateTime.now(),

                                          message: messagecontroller.text,
                                           userEmail: emailcontroller.text, 
                                       );
                                          post.createtUserPost(context);
                    }, text: 'Create')
        ]),
      ),
    );
  }
}