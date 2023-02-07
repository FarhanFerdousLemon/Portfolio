import 'package:farhan_ferdous/components.dart';
import 'package:flutter/material.dart';


class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
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
              children: [
                Column(
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

                        child: Text("Hello I'm ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
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
        ],
      ),
    );
  }
}
