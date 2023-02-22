import 'package:farhan_ferdous/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 30,
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("Abouts"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //First Page
          Container(
            height: heightDevice - 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: SansBold("Hello I'm", 13),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SansBold("Md Farhan Ferdous", 20.0),
                    Sans("Flutter Developer", 15.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("farhan145165@gmail.com", 13.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("+8801952197656", 13.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("Ahmednagar, Mirpur-1, Dhaka", 13.0),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 33,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/Farhan-circle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Second Page
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/web.png", height: widthDevice / 1.9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 25),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                        "Hello I'm Md Farhan Ferdous and I enjoy creating things that live ",
                        13),
                    Sans(
                        " on the internet. My interest in mobile/web development started  ",
                        13),
                    Sans(
                        "in 2020, then it turns my passion into profession. I also freelance ",
                        13),
                    Sans(
                        "for various clients across the world. If you've any ideas about",
                        13),
                    Sans(
                        "creating a project or something, feel free to contact me! ",
                        13),
                    SizedBox(
                      height: 10,
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
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Flutter", 13),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Dart", 13),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Android", 13),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("iOS", 13),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Firebase", 13),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("REST API", 13),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          //Third section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(
                        imagePath: "assets/flutter.png",
                        text: "Flutter development"),
                    AnimatedCardWeb(
                      imagePath: "assets/android.png",
                      text: "Android/iOS development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                        imagePath: "assets/firebase.png",
                        text: "Back-end development"),
                  ],
                ),
              ],
            ),
          ),
          //Forth section
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          width: 550,
                          heading: "First Name",
                          hintText: "Please type your first name",
                        ),
                        SizedBox(height: 15),
                        TextForm(
                            heading: "Email",
                            width: 50,
                            hintText: "Please enter your email address")
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            heading: "Last Name",
                            width: 50,
                            hintText: "Please enter your last name"),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                            heading: "Phone Number",
                            width: 50,
                            hintText: "Please type your phone number"),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: widthDevice / 1.5,
                  hintText: "Please type your message",
                  maxLines: 10,
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  height: 60.0,
                  minWidth: 20.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 15.0),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
