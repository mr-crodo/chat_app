import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(
                "assets/groups.svg",
                color: Colors.white,
                width: 38,
                height: 38,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              "John Doe",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 3),
                Text(
                  "Hi, Dev Stack! How are you!",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            trailing: Text("18:08"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(thickness: 1),
          ),
        ],
      ),
    );
  }
}
