import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomContacts extends StatelessWidget {
  const CustomContacts({Key? key, this.imageUrl, this.categoryName})
      : super(key: key);

  final imageUrl, categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25),
      child: Column(children: [
        Flexible(
          child: SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: imageUrl,
              ),
            ),
          ),
        ),
        Container(
            alignment: Alignment.center,
            child: Text(
              categoryName,
            ))
      ]),
    );
  }
}
