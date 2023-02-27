import 'package:farhan_ferdous/components.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  uriLauncher(String imgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imgPath,
        width: 35,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xff14332B),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/Farhan.jpg"),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold("Md Farhan Ferdous", 30.0),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                uriLauncher("assets/instagram.svg",
                    "https://www.instagram.com/ferdous.farhan/"),
                uriLauncher("assets/github.svg",
                    "https://github.com/FarhanFerdousLemon"),
                uriLauncher("assets/linkedin.svg",
                    "https://www.linkedin.com/in/farhan-ferdous-914821177/"),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff14332B),
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.withOpacity(0.1),
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.white),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            Text(
              "Abouts",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Text(
              "Works",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Text(
              "Experience",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Text(
              "Contact",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: heightDevice - 256,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent.withOpacity(0.6),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Text(
                        "Hello I'm",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Md Farhan Ferdous",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 19,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text("farhan145165@gmail.com",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 19,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text("+8801952197656",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.white,
                          size: 19,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Ahmednagar, Mirpur-1, Dhaka",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 77,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 73,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/Farhan-circle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: heightDevice / 2.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/web.png", height: widthDevice / 2.5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "About me",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hello I'm Farhan Ferdous and I enjoy creating",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "things that live on the internet. My interest",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "in mobile/web development started in 2020,",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "then it turns my passion into profession. I",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "also worked for various clients across the",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "world. If you've any ideas about creating a",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "project or something, feel free to contact me!",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            "Flutter",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            "Dart",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            "Android",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            "iOS",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(3.0),
                          child: Text(
                            "Firebase",
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(5.0)),
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        "REST API",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: heightDevice / 1.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "What I do?",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardMob(
                        imagePath: "assets/flutter.png",
                        text: "Flutter development"),
                    AnimatedCardMob(
                      imagePath: "assets/android.png",
                      text: "Android/iOS development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardMob(
                      imagePath: "assets/web1.png",
                      text: "Web development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardMob(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development",
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "My Noteworthy Projects",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Card(
                        color: Color(0xffE0FFF8),
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        shadowColor: Colors.tealAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Grocery App",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "- A Ecommerce app by using Flutter,Dart & Firebase.",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "- User can buy products by using this app.",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "- User can search and order products. ",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Card(
                        color: Color(0xffE0FFF8),
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        shadowColor: Colors.tealAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Weather App",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "- A simple app by using Flutter,Dart & API.       ",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "- User can see their current location.",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "- User can search any location's weather. ",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Card(
                        color: Color(0xffE0FFF8),
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        shadowColor: Colors.tealAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "News App",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "- A News app created by using Flutter,Dart & API.   ",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "- User can read news from this app.",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "- User can also search news . ",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Card(
                        color: Color(0xffE0FFF8),
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        shadowColor: Colors.tealAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "News App",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "- A News app created by using Flutter,Dart & API.   ",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "- User can read news from this app.",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "- User can also search news . ",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
