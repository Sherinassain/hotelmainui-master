import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class First_containers extends StatelessWidget {
  final String imagepath;
  final String title;
  final String description;
  final String amount;
  final String rating;
  const First_containers(
      {Key? key,
      required this.imagepath,
      required this.title,
      required this.description,
      required this.amount,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screensize.width * 0.43,
        height: screensize.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white54,
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 12,
          //   )
          // ]
        ),
        child: Column(
          children: [
            Container(
              width: screensize.width * 0.43,
              height: screensize.width * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14)),
                  image: DecorationImage(
                      image: AssetImage(imagepath), fit: BoxFit.cover),
                  boxShadow: [BoxShadow(blurRadius: 6, color: Colors.grey)]),
            ),
            SizedBox(
              height: screensize.width * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Text(
                    'A ${description} Star Hotel in Kochi',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screensize.width * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${amount} / night',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            rating,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: screensize.width * 0.01,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.blue,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
