import 'package:farhan_ferdous/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice= MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25.0,
          color: Colors.black
        ),
        title: Row(
          children: [
            Spacer(flex: 3,),
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
            height: heightDevice-56,
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
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                        child: SansBold("Hello I'm",15),

                    ),
                    SizedBox(height: 15,),
                    SansBold("Md Farhan Ferdous", 50.0),
                    Sans("Flutter Developer", 30.0),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20.0,),
                        Sans("farhan145165@gmail.com", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20.0,),
                        Sans("+8801952197656", 15.0),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20.0,),
                        Sans("Ahmednagar, Mirpur-1, Dhaka", 15.0),
                      ],
                    ),

                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140,
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
            height: heightDevice/1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/web.png",height: widthDevice/1.9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40),
                    SizedBox(height: 15,),
                    Sans("Hello I'm Md Farhan Ferdous I spacialize in flutter development. ", 15),
                    Sans("I strive to ensure astounding performance with state of ", 15),
                    Sans("the art security for Android, Ios, Web, Mac, Linux and Windows. ", 15),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0
                            ),
                            borderRadius: BorderRadius.circular(5.0)

                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Flutter",15),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0
                              ),
                              borderRadius: BorderRadius.circular(5.0)

                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Firebase",15),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0
                              ),
                              borderRadius: BorderRadius.circular(5.0)

                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Android",15),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0
                              ),
                              borderRadius: BorderRadius.circular(5.0)

                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Ios",15),
                        ),
                        SizedBox(width: 7,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.tealAccent,
                                  style: BorderStyle.solid,
                                  width: 2.0
                              ),
                              borderRadius: BorderRadius.circular(5.0)

                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Windows",15),
                        ),
                        SizedBox(width: 7,),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          //Third section
          Container(
            height: heightDevice/1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(imagePath: "assets/web1.png", text: "Web development"),
                    AnimatedCardWeb(imagePath: "assets/app.png", text: "App development",
                    fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(imagePath: "assets/firebase.png", text: "Back-end development"),
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
                SansBold("Contact me", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [

                        TextForm(width: 350,heading: "First Name",hintText: "Please type your first name",),
                        SizedBox(height: 15),
                        TextForm(heading: "Email", width: 350, hintText: "Please enter your email address")
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(heading: "Last Name", width: 350, hintText: "Please enter your last name"),
                        SizedBox(height: 15,),
                        TextForm(heading:"Phone Number" , width: 350, hintText: "Please type your phone number"),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: widthDevice/1.5,
                  hintText: "Please type your message",
                  maxLines: 10,
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit",20.0),
                  onPressed: (){},

                ),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}
