import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Message Page',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Color(0xFFEA3B4A)),),
      ),
    );
  }
}
