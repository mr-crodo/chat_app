import "package:flutter/material.dart";

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 30),
      title: Text(
        "John Doe",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(width: 3),
          Text("Hi, Dev Stack! How are you!", style: TextStyle(fontSize: 14)),
        ],
      ),
      trailing: Text("18:08"),
    );
  }
}
