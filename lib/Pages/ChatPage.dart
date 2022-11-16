import 'package:flutter/material.dart';
import 'package:msg_app/CustomUI/CustomCard.dart';
import '../Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Estelle Bright",
      isGroup: false,
      currentMessage: "Hello",
      time: "4:00",
    ),
    ChatModel(
      name: "Rean Schwarzer",
      isGroup: false,
      currentMessage: "Hey",
      time: "6:00",
    ),
    ChatModel(
      name: "Lloyd Bannings",
      isGroup: false,
      currentMessage: "Hey Whatsup",
      time: "6:00",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index]),
      ),
    );
  }
}
