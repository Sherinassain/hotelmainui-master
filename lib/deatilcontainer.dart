import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second_container extends StatelessWidget {
  final String imagepath;
  final String title;

  final String amount;
  const Second_container({
    Key? key,
    required this.imagepath,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: screensize.width * 0.33,
        width: screensize.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white54,
        ),
        child: Row(
          children: [
            Container(
              width: screensize.width * 0.27,
              height: screensize.width * 0.33,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagepath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15))),
            ),
            SizedBox(
              width: screensize.width * 0.05,
            ),
            Container(
              width: screensize.width * 0.36,
              height: screensize.width * 0.8,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screensize.height * 0.01,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  SizedBox(
                    height: screensize.height * 0.006,
                  ),
                  Text(
                    'A Five Star Hotel in\nKochi',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screensize.width * 0.015,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${amount} / night',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.017,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: screensize.width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImageIcon(
                          AssetImage('icons/car.png'),
                          color: Colors.blue,
                        ),
                        ImageIcon(
                          AssetImage('icons/bathicon.png'),
                          color: Colors.blue,
                        ),
                        ImageIcon(
                          AssetImage('icons/glassicon.png'),
                          color: Colors.blue,
                        ),
                        ImageIcon(
                          AssetImage('icons/wifi.png'),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: screensize.width * 0.03,
            ),
            // Button
            Container(
              height: screensize.width * 0.12,
              width: screensize.width * 0.19,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Book',
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
