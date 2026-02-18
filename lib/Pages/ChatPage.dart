import 'package:chat_app/Model/ChatModel.dart';
import 'package:chat_app/Screens/SelectContact.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/CustomUI/CustomCard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "John Doe",
      currentMessage: "Hi, Dev Stack! How are you!",
      time: "18:08",
      isGroup: false,
      status: "",
    ),
    ChatModel(
      name: "Flutter Devs",
      currentMessage: "Flutter 3.0 is released!",
      time: "17:45",
      isGroup: true,
      status: "",
    ),
    ChatModel(
      name: "Server chat",
      currentMessage: "Hi everyone on this group",
      time: "17:20",
      isGroup: true,
      status: "",
    ),
    ChatModel(
      name: "Jane Smith",
      currentMessage: "Let's catch up later.",
      time: "16:30",
      isGroup: false,
      status: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (builder) => SelectContact()),
          );
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
