import 'package:abraham_app/Components/coversation_list.dart';
import 'package:abraham_app/Models/chat_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
      name: "Jane Russel",
      messageText: "Good Morning. Did you sleep well?",
      imageURL:
          "https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80",
      time: "Today",
    ),
    ChatUsers(
      name: "Glady's Murphy",
      messageText: "How is it going?",
      imageURL:
          "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW4lMjBwb3J0cmFpdHxlbnwwfHwwfHw%3D&w=1000&q=80",
      time: "17/6",
    ),
    ChatUsers(
      name: "Jorge Henry",
      messageText: "Hey where are you?",
      imageURL: "https://i.ytimg.com/vi/L3wKzyIN1yk/maxresdefault.jpg",
      time: "17/6",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatUsers.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 16),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ConversationList(
            name: chatUsers[index].name,
            messageText: chatUsers[index].messageText,
            imageUrl: chatUsers[index].imageURL,
            time: chatUsers[index].time,
            isMessageRead: index == 2 || index == 0 ? true : false,
            isActive: index == 0 ? true : false,
          );
        },
      ),
    );
  }
}
