import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotelmainui/view.dart';

import 'containers.dart';
import 'deatilcontainer.dart';

class Bottomnav extends StatelessWidget {
  const Bottomnav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screensize.width * 0.02,
                      ),
                      Text(
                        'Hello @Sherinas',
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        'Find Your Favouriate Hotel',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      )
                    ],
                  ),
                  Container(
                    width: screensize.width * 0.155,
                    height: screensize.width * 0.14,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('assets/dp.jpeg'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
              SizedBox(
                height: screensize.width * 0.06,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    hintText: 'Search For Hotel',
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: InputBorder.none,
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: screensize.width * 0.05,
              ),
              Text(
                'Popular Hotel',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: screensize.width * 0.03,
              ),
              Row(
                children: [
                  // First item container
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: screensize.width * 0.67,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          First_containers(
                              imagepath: 'assets/pic1.jpeg',
                              title: 'Crown Plazza',
                              description: 'Five',
                              amount: '180',
                              rating: '4.5'),
                          First_containers(
                              imagepath: 'assets/pic2.jpg',
                              title: 'Grand Hyatt',
                              description: 'Five',
                              amount: '190',
                              rating: '4.8'),
                          First_containers(
                              imagepath: 'assets/pic3.jpeg',
                              title: 'Trident',
                              description: 'Five',
                              amount: '140',
                              rating: '3.9'),
                          First_containers(
                              imagepath: 'assets/pic4.jpg',
                              title: 'Ramada Resort',
                              description: 'Five',
                              amount: '200',
                              rating: '4.7'),
                          First_containers(
                              imagepath: 'assets/pic2.jpg',
                              title: 'Radisson Blu',
                              description: 'Five',
                              amount: '150',
                              rating: '4.2'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screensize.width * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hotel Packages',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return viewtab();
                        }));
                      },
                      child: Text(
                        'view all',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: screensize.width * 0.01,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: ListView(
                    children: [
                      // second containers
                      Second_container(
                          imagepath: 'assets/pic1.jpeg',
                          title: 'Crown Plazza',
                          amount: '180'),
                      Second_container(
                          imagepath: 'assets/pic2.jpg',
                          title: 'Grand Hyatt',
                          amount: '190'),
                      Second_container(
                          imagepath: 'assets/pic3.jpeg',
                          title: 'Trident',
                          amount: '140'),
                      Second_container(
                          imagepath: 'assets/pic4.jpg',
                          title: 'Ramada Resort',
                          amount: '200'),
                      Second_container(
                          imagepath: 'assets/pic5.jpg',
                          title: 'Radisson Blu',
                          amount: '150'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
