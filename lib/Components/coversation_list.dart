import 'package:abraham_app/Constants/colors.dart';
import 'package:abraham_app/Screens/chat_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConversationList extends StatefulWidget {
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  bool isActive;
  ConversationList(
      {required this.name,
      required this.messageText,
      required this.imageUrl,
      required this.time,
      required this.isMessageRead,
      required this.isActive});
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatDetail(
            name: widget.name,
            chatcheck: 'old',
          );
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(widget.imageUrl),
                        maxRadius: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: sizeWidth / 10),
                        child: Container(
                          height: widget.isActive ? sizeHeight / 65 : 0.0,
                          width: widget.isActive ? sizeWidth / 30 : 0.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(ColorX.notificationGreen),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: sizeWidth / 32,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: sizeHeight / 70,
                          ),
                          Text(
                            widget.messageText,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(ColorX.darkGrey),
                                fontWeight: widget.isMessageRead
                                    ? FontWeight.w700
                                    : FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: widget.isMessageRead ? sizeHeight / 55 : 0.0,
                  width: widget.isMessageRead ? sizeWidth / 25 : 0.0,
                  margin: widget.isMessageRead
                      ? EdgeInsets.only(bottom: 5)
                      : EdgeInsets.zero,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(ColorX.lightBlue)),
                  child: widget.isMessageRead
                      ? Center(
                          child: Text(
                            '${1}',
                            style: TextStyle(
                                color: Color(ColorX.blue),
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        )
                      : null,
                ),
                Text(
                  widget.time,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: widget.isMessageRead
                          ? FontWeight.w700
                          : FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
