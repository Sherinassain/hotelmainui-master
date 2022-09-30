import 'package:flutter/material.dart';
class Circlesizedboxwidth extends StatelessWidget {
  const Circlesizedboxwidth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final Size screensize = MediaQuery.of(context).size;

    return  SizedBox(width:  screensize.width * 0.06,);
    
  }
}