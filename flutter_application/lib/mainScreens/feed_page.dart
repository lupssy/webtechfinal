import 'dart:convert';
import 'package:flutter_application/mainScreens/createpost.dart';
import 'package:flutter_application/models/PostModel.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_application/mainScreens/edit_profile.dart';
import 'package:flutter_application/widgets/custom_scaffold_cover.dart';



class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
     _stream = getPosts();
  }
  late Stream<List<PostModel>> _stream;

  Stream<List<PostModel>> getPosts() async* {
    while (true) {
       var response = await http.get(
    Uri.parse('http://127.0.0.1:5000/Posts'),
    headers:  <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    
    },
    
    );
   
      final List<dynamic> data = jsonDecode(response.body);
      final List<PostModel> posts = data.map((post) => PostModel.fromJson(post)).toList();
      yield posts;
      await Future.delayed(Duration(seconds: 5));
    }
  }


    getpostlist() {
    return StreamBuilder(
      stream: _stream,
      builder: (BuildContext context,  snapshot){
        if (snapshot.hasData) {
            List<Padding> postList = [];
       final posts = snapshot.data;
      for (var element in posts!) {
        print('object1s');

       postList.add(Padding(
         padding: const EdgeInsets.all(8.0),
         child: ListTile(
          subtitle: Text(element.message), title: Text(element.userEmail)),
       ));
      }
       return Column(children: postList ,);
          
      }
      else{
        print('object');
        return SizedBox.shrink();
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return
    SizedBox(
    width: 1440,
    height: 1024,
    child:
    CustomScaffold(
        
      child: SingleChildScrollView(
        child: Column(children: [
          ElevatedButton(
            child: Text('Create Post'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePost(),));
            },
          ),
          getpostlist()
        ]),

    )));
  }
}