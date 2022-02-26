import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

List storyList = [
  {
    "Name": "vrunda",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_X55SY3RrRyc_MYzbc4LC55jga-kkWG2ZtA&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "Name": "Krishna",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5a2Jlwqb29SKFj5NV7BQ_Q7O7Y_oxOGF5_Q&usqp=CAU",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "Name": "Jemisha",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtHKQxjY1rDnpvPoHxlWPfRdaKBHnrL0mQ8g&usqp=CAU",
    "isOnline": true,
    "hasStory": false,
  },
  {
    "Name": "Mansi",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFERL9wvve6caZmEdeP79y1S6ajRlEJike7w&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
  },
  {
    "Name": "Karan",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYTcfczm7tW9foerJfrRDFZq3X0DFnjQioAQ&usqp=CAU",
    "isOnline": false,
    "hasStory": false,
  },
  {
    "Name": "sidhharth",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT80BB2a87XGuLHjC_fiCnKV_UU8HjuvppgnA&usqp=CAU",
    "isOnline": false,
    "hasStory": true,
  },
];
List conversationList = [
  {
    "Name": "vrunda",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_X55SY3RrRyc_MYzbc4LC55jga-kkWG2ZtA&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
    "Massage": "Where are you?",
    "time": "5:00 pm",
  },
  {
    "Name": "Krishna",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5a2Jlwqb29SKFj5NV7BQ_Q7O7Y_oxOGF5_Q&usqp=CAU",
    "isOnline": false,
    "hasStory": false,
    "Massage": "how are you?",
    "time": "7:00 am",
  },
  {
    "Name": "Jemisha",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtHKQxjY1rDnpvPoHxlWPfRdaKBHnrL0mQ8g&usqp=CAU",
    "isOnline": true,
    "hasStory": false,
    "Massage": "it's good!",
    "time": "YesterDay",
  },
  {
    "Name": "Rutika",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFERL9wvve6caZmEdeP79y1S6ajRlEJike7w&usqp=CAU",
    "isOnline": true,
    "hasStory": true,
    "Massage": "sorry, I forgot!",
    "time": "25th jan",
  },
  {
    "Name": "Karan",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYTcfczm7tW9foerJfrRDFZq3X0DFnjQioAQ&usqp=CAU",
    "isOnline": false,
    "hasStory": false,
    "Massage": "No,I won't go",
    "time": "2nd feb",
  },
  {
    "Name": "sidhharth",
    "imageUrl":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT80BB2a87XGuLHjC_fiCnKV_UU8HjuvppgnA&usqp=CAU",
    "isOnline": false,
    "hasStory": true,
    "Massage": "Been a while!",
    "time": "23rd march",
  },
];

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Massenger Demo",
      home: MyWork(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class MyWork extends StatefulWidget {
  @override
  _MyWorkState createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://randomuser.me/api/portraits/men/11.jpg"),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "Chats",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: Colors.pink,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                cursorColor: Colors.pink,
                controller: _searchController,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.pink,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.pink[150],
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 20),
            stories(),
            SizedBox(height: 20),
            conversations(context),
          ],
        ),
      )),
    );
  }
}

stories() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Column(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    size: 33,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 75,
                child: Align(
                    child: Text(
                  'Your Story',
                  style: TextStyle(
                    color: Colors.pink[800],
                  ),
                  overflow: TextOverflow.ellipsis,
                )),
              )
            ],
          ),
        ),
        Row(
            children: List.generate(storyList.length, (index) {
          return Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: Stack(
                    children: <Widget>[
                      storyList[index]['hasStory']
                          ? Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.pinkAccent, width: 3)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              storyList[index]['imageUrl']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                          : Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          storyList[index]['imageUrl']),
                                      fit: BoxFit.cover)),
                            ),
                      storyList[index]['isOnline']
                          ? Positioned(
                              top: 38,
                              left: 42,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.pink,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 3,
                                    )),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 75,
                  child: Align(
                      child: Text(
                    storyList[index]['Name'],
                    style: TextStyle(
                      color: Colors.pink[800],
                    ),
                    overflow: TextOverflow.ellipsis,
                  )),
                )
              ],
            ),
          );
        }))
      ],
    ),
  );
}

conversations(BuildContext context) {
  return Column(
    children: List.generate(conversationList.length, (index) {
      return InkWell(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                child: Stack(
                  children: <Widget>[
                    if (conversationList[index]['hasStory']) ...{
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.pinkAccent, width: 3)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        conversationList[index]['imageUrl']),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )
                    } else ...{
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    conversationList[index]['imageUrl']),
                                fit: BoxFit.cover)),
                      )
                    },
                    conversationList[index]['isOnline']
                        ? Positioned(
                            top: 38,
                            left: 42,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.white, width: 3)),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    conversationList[index]['Name'],
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.pink[800],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 135,
                    child: Text(
                      conversationList[index]['Massage'] +
                          " - " +
                          conversationList[index]['time'],
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.pink,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    }),
  );
}
