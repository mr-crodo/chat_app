import 'package:chat_app/CustomUI/ButtonCard.dart';
import 'package:chat_app/CustomUI/ContactCard.dart';
import 'package:chat_app/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(name: "Dev Stack", status: "A full stack developer"),
      ChatModel(name: "Balras", status: "Flutter developer"),
      ChatModel(name: "Maksim", status: "Dev Ops engineer"),
      ChatModel(name: "John", status: "Software engineer"),
      ChatModel(name: "Alice", status: "Backend developer"),
      ChatModel(name: "Dev Stack", status: "A full stack developer"),
      ChatModel(name: "Balras", status: "Flutter developer"),
      ChatModel(name: "Maksim", status: "Dev Ops engineer"),
      ChatModel(name: "John", status: "Software engineer"),
      ChatModel(name: "Alice", status: "Backend developer"),
      ChatModel(name: "Dev Stack", status: "A full stack developer"),
      ChatModel(name: "Balras", status: "Flutter developer"),
      ChatModel(name: "Maksim", status: "Dev Ops engineer"),
      ChatModel(name: "John", status: "Software engineer"),
      ChatModel(name: "Alice", status: "Backend developer"),
      ChatModel(name: "Dev Stack", status: "A full stack developer"),
      ChatModel(name: "Balras", status: "Flutter developer"),
      ChatModel(name: "Maksim", status: "Dev Ops engineer"),
      ChatModel(name: "John", status: "Software engineer"),
      ChatModel(name: "Alice", status: "Backend developer"),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Contact",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            const Text("256 contacts", style: TextStyle(fontSize: 13)),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.search, size: 26), onPressed: () {}),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert), // Вертикальные точки
            offset: const Offset(0, 50), // Появляется под AppBar
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "Invite a friend",
                  child: Text("Invite a friend"),
                ),
                const PopupMenuItem(value: "Contacts", child: Text("Contacts")),
                const PopupMenuItem(value: "Refresh", child: Text("Refresh")),
                const PopupMenuItem(value: "Help", child: Text("Help")),
              ];
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ButtonCard(icon: Icons.group, name: "New group");
          } else if (index == 1) {
            return ButtonCard(icon: Icons.person_add, name: "New contact");
          }

          return ContactCard(contact: contacts[index - 2]);
        },
      ),
    );
  }
}
