import 'package:flutter/material.dart';
import 'package:flutter_application_1/chats_story.dart';
import 'package:flutter_application_1/my_story.dart';
import 'package:flutter_application_1/tile.dart';

class MyChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewChat(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 15,
            bottom: 15,
          ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomStoryView(
                    isAddButton: false,
                    image:
                        "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
                    hasStory: false,
                    isOnline: false,
                  ),
                  Text(
                    " My Chats",
                    style: TextStyle(
                      color: Colors.teal[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  PopupMenuButton(
                    color: Colors.teal[100],
                    child: Padding(
                      child: Icon(Icons.settings),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                    ),
                    padding: EdgeInsets.all(8),
                    itemBuilder: (context) {
                      return itemList;
                    },
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  cursorColor: Colors.teal,
                  controller: _search,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.teal,
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(
                      color: Colors.teal,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              _stories(context),
              SizedBox(height: 10),
              _conversations(context),
            ],
          ),
        ),
      ),
    );
  }
}

_stories(BuildContext context) {
  return Story();
}

_conversations(BuildContext context) {
  return Chats();
}

List<PopupMenuItem> itemList = [
  PopupMenuItem(
    child: TextButton(
      child: Text(
        "Edit",
        style: TextStyle(
          color: Colors.teal[800],
          fontSize: 15,
        ),
      ),
      onPressed: () {},
    ),
  ),
  PopupMenuItem(
    child: TextButton(
      child: Text(
        "Settings",
        style: TextStyle(
          color: Colors.teal[800],
          fontSize: 15,
        ),
      ),
      onPressed: () {},
    ),
  ),
  PopupMenuItem(
    child: TextButton(
      child: Text(
        "Calls",
        style: TextStyle(
          color: Colors.teal[800],
          fontSize: 15,
        ),
      ),
      onPressed: () {},
    ),
  ),
  PopupMenuItem(
    child: TextButton(
      child: Text(
        "Recent",
        style: TextStyle(
          color: Colors.teal[800],
          fontSize: 15,
        ),
      ),
      onPressed: () {},
    ),
  ),
  PopupMenuItem(
    child: TextButton(
      child: Text(
        "Profile",
        style: TextStyle(
          color: Colors.teal[800],
          fontSize: 15,
        ),
      ),
      onPressed: () {},
    ),
  )
];
