import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:chat_app/Model/ChatModel.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({super.key, required this.chatModel});
  final ChatModel chatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0, // убираем стандартный отступ слева у title
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 24),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blueGrey,
              child: SvgPicture.asset(
                widget.chatModel.iconPath,
                color: Colors.white,
                width: 30,
                height: 30,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              margin: EdgeInsets.all(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.chatModel.name,
                    style: const TextStyle(
                      fontSize: 18.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Last seen today at 12:05",
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call),
            style: IconButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            style: IconButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {},
          ),
          PopupMenuButton(itemBuilder: null),
        ],
      ),
      body: const SizedBox.shrink(),
    );
  }
}
