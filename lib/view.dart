import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotelmainui/hotels.dart';
import 'package:hotelmainui/itemcontainer.dart';

class viewtab extends StatelessWidget {
  const viewtab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
              height: screensize.width * 0.48,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screensize.width * 0.1,
                    ),
                    Text(
                      'Type your Location',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: 'Bouddha, Kathmandu',
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screensize.width * 0.03,
                          horizontal: screensize.width * 0.033),
                      child: Row(
                        children: [
                          //item contaoiner
                          Item_container(
                            icon: Icons.hotel,
                            title: 'Hotel',
                            Color: Color.fromARGB(197, 151, 12, 58),
                          ),
                          Item_container(
                            icon: Icons.restaurant,
                            title: 'Restaurant',
                            Color: Colors.lightBlue,
                          ),
                          Item_container(
                            icon: Icons.coffee,
                            title: 'Cafe',
                            Color: Color.fromARGB(223, 240, 146, 5),
                          ),
                        ],
                      ),
                    ),
                    //hotelcontainer
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Hotels(
                              rate: '40',
                              imagepath: 'assets/pic1.jpeg',
                              review: '220',
                              title: 'Crown Plazza'),
                          Hotels(
                              rate: '30',
                              imagepath: 'assets/pic2.jpg',
                              review: '320',
                              title: 'Grand Hyatt'),
                          Hotels(
                              rate: '50',
                              imagepath: 'assets/pic3.jpeg',
                              review: '340',
                              title: 'Trident'),
                          Hotels(
                              rate: '70',
                              imagepath: 'assets/pic4.jpg',
                              review: '128',
                              title: 'Ramada Resort'),
                          Hotels(
                              rate: '96',
                              imagepath: 'assets/pic2.jpg',
                              review: '600',
                              title: 'Radisson Blu'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
