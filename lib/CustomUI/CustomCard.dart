import 'package:flutter/material.dart';
import 'package:msg_app/Model/ChatModel.dart';
import 'package:msg_app/Screens/IndividualPage.dart';


class CustomCard extends StatelessWidget {
  final ChatModel chatModel;
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context,MaterialPageRoute
          (builder: (context) => IndividualPage( chatModel: chatModel,)));
      },
      leading: CircleAvatar( radius: 30),
      title: Text(chatModel.name, style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(
            width: 3,
          ),
          Text(chatModel.currentMessage,
            style:
            TextStyle(
                fontSize: 13
            ),
          ),
        ],
      ),
      trailing: Text(chatModel.time),
    );
  }
}
