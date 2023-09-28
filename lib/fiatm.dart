import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:simple_gradient_text/simple_gradient_text.dart';

void main(){
  runApp(MaterialApp(
    home: FiAtm(),
  ));
}

class FiAtm extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("FI ATM"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Container(
                height: 250,
                width:400,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(18.0),
                  color: Colors.teal,
                ),
              ),
              Positioned(
                top: 80,
                left:50,
                child: Row(
                  children: [
                   Transform.rotate(
                       angle: 90 * math.pi/4,
                       child: FaIcon(FontAwesomeIcons.simCard,color: Colors.white60,size: 50,)
                   ),
                    SizedBox(width: 8,),
                    Transform.rotate(
                        angle: 90 * math.pi/4,
                        child: FaIcon(FontAwesomeIcons.wifi,color: Colors.white60,size: 25,)
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 15,
                  left:15,
                  child: Text("Aravind V",
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Colors.white60
                  ),)),
              Positioned(
                  bottom:5,
                  right:15,
                  child: Text("VISA",
                    style: GoogleFonts.passionOne(
                        fontSize: 40,
                      color: Colors.white60
                    ),)),
              Positioned(
                  right:15,
                  child: GradientText("Fi",
                    style: GoogleFonts.candal(
                      fontSize: 70,
                      fontWeight: FontWeight.bold
                    ),
                    colors: [
                    Colors.black26,
                    Colors.white,
                    Colors.black12
                  ],
                  // stops: [
                  //   0,.6,1
                  // ],
                  gradientDirection: GradientDirection.ttb,
                  )),

            ],
          ),
        ),
      ),
    );
  }
}