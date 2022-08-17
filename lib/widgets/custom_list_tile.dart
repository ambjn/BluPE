import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key, this.prefixIcon, this.trailingIcon, this.myTitle})
      : super(key: key);

  final prefixIcon, myTitle, trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [prefixIcon, const SizedBox(width: 10), Text(myTitle)],
          ),
          trailing: trailingIcon,
        ),
        const Divider(color: Colors.grey)
      ],
    );
  }
}
