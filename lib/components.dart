import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title,{Key? key}) : super(key: key);

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected= false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_){
        setState(() {
          isSelected=true;
        });
        print('Entered');
      },
      onExit: (_){
        setState(() {
          isSelected=false;
        });
        print('Exit');
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
        ? TextStyle(
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(0, -8),
              ),
            ],
            fontSize: 25.0,
        fontWeight: FontWeight.w700,
        color: Colors.transparent,
          decoration: TextDecoration.underline,
          decorationThickness: 2,
          decorationColor: Colors.tealAccent)
        : GoogleFonts.oswald(fontSize: 23,fontWeight: FontWeight.w700,color: Colors.black),

        child: Text(widget.title, ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text,this.size,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: GoogleFonts.openSans(
          fontSize: size,fontWeight: FontWeight.bold),
    );
  }
}
class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text,this.size,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: GoogleFonts.openSans(
          fontSize: size,),
    );
  }
}


