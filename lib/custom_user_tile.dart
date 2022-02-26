import 'package:flutter/material.dart';
import 'package:flutter_application_1/tile.dart';

class CustomUserTile extends StatelessWidget {
  final bool hasStory;
  final String image;
  final bool isOnline;
  final String name;
  final String message;
  final String time;
  final VoidCallback onTap;

  const CustomUserTile({
    Key? key,
    required this.hasStory,
    required this.image,
    required this.isOnline,
    required this.name,
    required this.message,
    required this.time,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            CustomStoryView(
              isAddButton: false,
              image: image,
              hasStory: hasStory,
              isOnline: isOnline,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.teal[800],
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 135,
                  child: Text(
                    message + "-" + time.toString(),
                    style: TextStyle(
                      color: Colors.teal[800],
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
