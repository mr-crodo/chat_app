import 'package:flutter/material.dart';
import '../Pages/ChatPage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // Todo: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp Clone"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: "New group", child: Text("New group")),
                PopupMenuItem(
                  value: "New broadcast",
                  child: Text("New broadcast"),
                ),
                PopupMenuItem(value: "Whatsap Web", child: Text("Whatsap Web")),
                PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                PopupMenuItem(value: "Settings", child: Text("Settings")),
                PopupMenuItem(value: "Logout", child: Text("Logout")),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          labelColor: Colors.white, // активRная вкладка
          unselectedLabelColor: Colors.white70, // неактивные
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [Text("Camera"), ChatPage(), Text("Calls"), Text("Status")],
      ),
    );
  }
}
