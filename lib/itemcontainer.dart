import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Item_container extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color;
  const Item_container(
      {Key? key, required this.icon, required this.title, required this.Color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screensize.width * 0.24,
        width: screensize.width * 0.24,
        decoration:
            BoxDecoration(color: Color, borderRadius: BorderRadius.circular(8)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            height: screensize.width * 0.02,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          )
        ]),
      ),
    );
  }
}
