import 'package:flutter/material.dart';
import 'package:msg_app/CustomUI/OwnCustomCard.dart';
import 'package:msg_app/CustomUI/ReplyCard.dart';
import '../Model/ChatModel.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_back),
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blueGrey,
            )
          ],
        ),
      ),
        title: Container(
          margin: EdgeInsets.all(5),
          child:
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.chatModel.name,
              style: TextStyle(fontSize: 20.5,fontWeight: FontWeight.bold),),
            Text("Last seen at 12:00",
              style: TextStyle(fontSize: 13),)

          ]
          ,
        ),
      ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
            height: MediaQuery.of(context).size.height - 175,
              child: ListView(
              shrinkWrap: true,
              children: [
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard(),
                ReplyCard(),
                OwnCustomCard()
            ],
            ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width - 60,
                    child:
                    Card(
                      margin: EdgeInsets.only(left: 2, right: 2, bottom: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          minLines: 1,
                          decoration: InputDecoration(
                            hintText: "Type a message",
                            prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions)),
                            contentPadding: EdgeInsets.all(5)
                          ),
                        )
                    )
                ),
                    CircleAvatar()
              ],
            ),
            )
          ],
        ),

      ),
    );
  }
}
