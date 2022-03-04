import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'circle_image.dart';
import 'fooderlish_theme.dart';
import 'package:get/get.dart';

class AuthorCard extends StatelessWidget {
  AuthorCard(
      {required this.authorName, required this.title, this.imageProvider});

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace return Container(...);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              // 2
              const SizedBox(width: 8),
              // 3
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  )
                ],
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[700],
            onPressed: () {
              Get.snackbar(
                "Added to Fav",
                "You Added this author into your fav",
                icon: Icon(Icons.person, color: Colors.white),
                snackPosition: SnackPosition.BOTTOM,
              );
            },
          ),
        ],
      ),
    );
  }
}
