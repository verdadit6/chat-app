import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_user_tile.dart';
import 'package:flutter_application_1/my_story.dart';
import 'tile.dart';

List _storyList = [
  {
    "name": "Akanksha",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIl714Md7R4kfqBRlN6Qv3LPPBDT6zppvutA&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "name": "Sandhya",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREup2wtY-tnYjJIHb166r4534Wvq2YtGZLFQ&usqp=CAU",
    "isOnline": true,
    "hasStory": false,
  },
  {
    "name": "Pakhi",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmTp53usov8jrMruJBul3GBKH3ni5W0r_dDA&usqp=CAU",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "name": "Harshil",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQil-uJyG3wmwxcuEzOuvroQDwW6mwZ1yemg&usqp=CAU",
    "isOnline": false,
    "hasStory": true,
  },
  {
    "name": "Jaydeep",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5X7fv_GkaXVqngUkrrpqlZltuGEMa1VrOwQ&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "name": "Akshay",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROitDlmEnYYyV-cFiCW3wLRoTJeqjGHg354w&usqp=CAU",
    "isOnline": false,
    "hasStory": true,
  },
  {
    "name": "Trusha",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ27OFqx218T0mEVJOs-oCykZB6dFosSB-fhg&usqp=CAU",
    "isOnline": true,
    "hasStory": false,
  },
  {
    "name": "Jinal",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzi9U-C7Z0CPpb0-tlP6LkXTk73ostEuc3Bw&usqp=CAU",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "name": "Vikas",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5SrHxvJ6GixZfDWawfO4LAhnamt0Jg8RAmQ&usqp=CAU",
    "isOnline": true,
    "hasStory": false,
  },
  {
    "name": "Hiren",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY5KCHbfFHe6ERFoQ9FVYTisRdpGIpN0zffQ&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
  },
];

List _conversationList = [
  {
    "name": "Akanksha",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIl714Md7R4kfqBRlN6Qv3LPPBDT6zppvutA&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
    "massage": "hello! how are you?",
    "time": "11:00 pm",
  },
  {
    "name": "Sandhya",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREup2wtY-tnYjJIHb166r4534Wvq2YtGZLFQ&usqp=CAU",
    "isOnline": true,
    "hasStory": false,
    "massage": "Sorry,I missed it!",
    "time": "12:00 pm",
  },
  {
    "name": "Pakhi",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmTp53usov8jrMruJBul3GBKH3ni5W0r_dDA&usqp=CAU",
    "isOnline": false,
    "hasStory": false,
    "massage": "let's go on coffe!",
    "time": "3:00 pm",
  },
  {
    "name": "Harshil",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQil-uJyG3wmwxcuEzOuvroQDwW6mwZ1yemg&usqp=CAU",
    "isOnline": false,
    "hasStory": true,
    "massage": "plese,send me the documents!",
    "time": "5:00 pm",
  },
  {
    "name": "Jaydeep",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5X7fv_GkaXVqngUkrrpqlZltuGEMa1VrOwQ&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
    "massage": "I'll be ready at 8:00 pm",
    "time": "4:00 pm",
  },
  {
    "name": "Akshay",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROitDlmEnYYyV-cFiCW3wLRoTJeqjGHg354w&usqp=CAU",
    "isOnline": false,
    "hasStory": true,
    "massage": "What are you doing?",
    "time": "9:00 pm",
  },
  {
    "name": "Trusha",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ27OFqx218T0mEVJOs-oCykZB6dFosSB-fhg&usqp=CAU",
    "isOnline": true,
    "hasStory": false,
    "massage": "why are you laughing?",
    "time": "2:00 pm",
  },
  {
    "name": "Jinal",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzi9U-C7Z0CPpb0-tlP6LkXTk73ostEuc3Bw&usqp=CAU",
    "isOnline": false,
    "hasStory": false,
    "massage": "can you give me your notes?",
    "time": "7:00 pm",
  },
  {
    "name": "Vikas",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5SrHxvJ6GixZfDWawfO4LAhnamt0Jg8RAmQ&usqp=CAU",
    "isOnline": true,
    "hasStory": false,
    "massage": "are you mad?",
    "time": "8:00 pm",
  },
  {
    "name": "Hiren",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY5KCHbfFHe6ERFoQ9FVYTisRdpGIpN0zffQ&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
    "massage": "hey! Please listen !",
    "time": "1:00 pm",
  },
];

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        _conversationList.length,
        (index) {
          return CustomUserTile(
            hasStory: _storyList[index]["hasStory"],
            image: _storyList[index]["imageUrl"],
            message: _conversationList[index]["massage"],
            time: _conversationList[index]["time"],
            name: _conversationList[index]["name"],
            isOnline: _storyList[index]["isOnline"],
            onTap: () {
              if (_conversationList[index]["name"] == "Akanksha") {
                print("This is akanksha");
              } else {
                print("There is someone else");
              }
            },
          );
        },
      ),
    );
  }
}

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                CustomStoryView(
                  isAddButton: true,
                  onAddButtonTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return MyStory();
                    }));
                  },
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 75,
                  child: Align(
                    child: Text(
                      "Your Story",
                      style: TextStyle(
                        color: Colors.teal[800],
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(
              _storyList.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      CustomStoryView(
                        isAddButton: false,
                        image: _storyList[index]['imageUrl'],
                        hasStory: _storyList[index]['hasStory'],
                        isOnline: _storyList[index]['isOnline'],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 15,
                        child: Align(
                          child: Text(
                            _storyList[index]["name"],
                            style: TextStyle(
                              color: Colors.teal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
