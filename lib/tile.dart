import 'package:flutter/material.dart';

class CustomStoryView extends StatelessWidget {
  final bool? hasStory;
  final bool? isOnline;
  final String? image;
  final bool isAddButton;
  final VoidCallback? onAddButtonTap;

  CustomStoryView({
    this.image,
    this.hasStory,
    this.isOnline,
    required this.isAddButton,
    this.onAddButtonTap,
  }) {
    if (!isAddButton) {
      assert(hasStory != null);
      assert(isOnline != null);
      assert(image != null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.teal,
        shape: BoxShape.circle,
      ),
      child: isAddButton
          ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.teal,
              ),
              child: Center(
                child: IconButton(
                  iconSize: 33,
                  icon: Icon(Icons.add),
                  onPressed: onAddButtonTap ?? () {},
                ),
              ),
            )
          : Stack(
              children: [
                if (hasStory!) ...{
                  Container(
                    height: 75,
                    width: 75,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            image!,
                          ),
                          fit: BoxFit.cover,
                        )),
                  )
                } else ...{
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                            image!,
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                },
                isOnline!
                    ? Positioned(
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.teal.shade50, width: 3),
                          ),
                        ),
                        top: 38,
                        left: 42,
                      )
                    : Container(),
              ],
            ),
    );
  }
}



// height: height,
//       width: width,
//       decoration: BoxDecoration(
//         border: border,
//         borderRadius: borderRadius,
//         color: Colors.teal,
//         shape: BoxShape.circle,
//         image: image == null
//             ? null
//             : DecorationImage(
//                 image: image!,
//                 fit: BoxFit.cover,
//               ),
//       ),
//     );