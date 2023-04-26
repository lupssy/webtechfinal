import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class MyWidget extends StatefulWidget {
  final String userName;
  final String message;
  final double timeStamp;

  const MyWidget({super.key,
  required this.message,
  required this.userName,
  required this.timeStamp
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // checklikes()
  }


  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
              title: Text(widget.userName),
              subtitle: Text(widget.message,),

              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    isliked = !isliked;
                  });
                },
                icon:Icon(Icons.favorite, color: isliked? Colors.red: Colors.white,),)
              ),
              Text(timeago.format(DateTime.fromMillisecondsSinceEpoch((widget.timeStamp*1000).toInt()
              ))),
              Divider()
      ],
    );
  }
}