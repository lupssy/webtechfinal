import 'dart:convert';
import 'package:flutter_application/mainScreens/createpost.dart';
import 'package:flutter_application/models/PostModel.dart';
import 'package:flutter_application/widgets/posttile.dart';
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
    setState(() {
    _stream = getPosts();
  
    });
  }
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController= TextEditingController();
  //final String pid = const Uuid().v4();
   late Stream<List<PostModel>> _stream;

  Stream<List<PostModel>> getPosts() async* {
    while (true) {
        print('searching post');

       var response = await http.get(
    Uri.parse('https://webtech-final-384819.uc.r.appspot.com/Posts'),
    headers:  <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    
    },
    
    );
    print('status ${response.statusCode}');
    final List<dynamic> data =jsonDecode(response.body);
    final List<PostModel> posts = data.map((post) => PostModel.fromJson(post)).toList();
    yield posts;
      // await Future.delayed(Duration(seconds: 5));
    }
    
  
  }

  postTile(){
    
  }

    postList() {
    return StreamBuilder(
      stream: _stream,
      builder: (BuildContext context,  dynamic snapshot){
        if (snapshot.hasData) {
            List<Padding> postList = [];
        final posts = snapshot.data;
      for (var post in posts!) {
        print('posts loaded');

       postList.add(Padding(
         padding: const EdgeInsets.all(8.0),

         
         child: MyWidget(
          message: post.message,
          userName: post.userName,
          timeStamp: post.timestamp,
          )
          
       ));
      }
       return Column(children: postList ,);
          
      }
      else{
        print('post not available');
        return SizedBox.shrink();
      }

    
            // return ListView.builder(
            //  // itemCount: posts!.length,
            //   itemBuilder: (context, index) {
            //     return Text('data');
            //   });
      
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
          postList()
        ]),

    )));
  }
}