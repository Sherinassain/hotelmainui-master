import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotelmainui/profile/profilecontainer.dart';



import 'const.dart';


class Profile_page extends StatelessWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image_iconer(
                  iconpath: 'profileimage/arrowtop.png',
                  color: Colors.grey,
                ),
                Image_iconer(
                  iconpath: 'profileimage/menutop.png',
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: CircleAvatar(
              radius: 73,
              backgroundImage: AssetImage('assets/dp.jpeg'),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'profileicon/facebook.png',
                ),
              ),
              Circlesizedboxwidth(),
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'profileicon/google.png',
                ),
              ),
              Circlesizedboxwidth(),
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('profileicon/twitter.png'),
              ),
              Circlesizedboxwidth(),
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('profileicon/linkedin.png'),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            'Sherinas S',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              '@amFOSS',
              style: TextStyle(
                  color: Colors.grey[600], fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screensize.width * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screensize.width * 0.09,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile App Developer and Open',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screensize.width * 0.09),
                        child: Text(
                          'source enthusiastic',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screensize.width * 0.03,
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          profile_container(
                              title: 'Privacy', iconpath: 'profileimage/privacy.png'),
                          profile_container(
                              title: 'Purchase History',
                              iconpath: 'profileimage/history.png'),
                          profile_container(
                              title: 'Help & Support',
                              iconpath: 'profileimage/help.png'),
                          profile_container(
                              title: 'Settings',
                              iconpath: 'profileimage/settings.png'),
                          profile_container(
                              title: 'invite a Friend',
                              iconpath: 'profileimage/invite.png'),
                          profile_container(
                              title: 'Logout', iconpath: 'profileimage/logout.png'),
                        ],
                      )),
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}

class Image_iconer extends StatelessWidget {
  final String iconpath;
  final color;
  const Image_iconer({Key? key, required this.iconpath, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(iconpath),
      color: color,
    );
  }
}