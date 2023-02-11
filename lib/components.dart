import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class TextForm extends StatelessWidget {
  final heading;
  final width;
  final hintText;
  final maxLines;


  const TextForm({Key? key,@required this.heading,@required this.width, @required this.hintText, this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16.0),
        SizedBox(height: 5,),
        SizedBox(
            width:width,
            child: TextFormField(
              // inputFormatters: [
              //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
              // ],
              maxLines: maxLines== null?null: maxLines,
              decoration: InputDecoration(
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.tealAccent),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(fontSize: 14),
              ),
              // validator: (text){
              //   if(RegExp("\\bfarhan\\b",caseSensitive: false).hasMatch(text.toString())){
              //     return "Match found";
              //   }
              // },
              // autovalidateMode: AutovalidateMode.onUserInteraction,

            ),
        ),
      ],
    );
  }
}



