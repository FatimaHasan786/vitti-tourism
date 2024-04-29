import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:vitti_heritage_app/components/backPageButton.dart';
import 'package:vitti_heritage_app/components/button.dart';
import 'package:vitti_heritage_app/components/richText.dart';
import 'package:vitti_heritage_app/screens/login/components/textBox.dart';
import 'package:vitti_heritage_app/utils/constants/colors.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
           height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
             padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                  children: [
                    BackPageButton(),
                  ],
                ),
                 const SizedBox(
                    height: 70,
                  ),
                  RichTextField(
                    text1: "Log in",
                    text2: " with OTP",
                    size: 32,
                    weight: FontWeight.bold,
                    color1: TColors.orange,
                    color2: Colors.black87,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  TextBox(text: "Enter your Mobile No."),
                  SizedBox(height: 25,),
                  RoundedBorderButton1(text: "Send OTP", onTap: (){}),
                  SizedBox(height: 30,),
                  Text("Enter OTP Here",style: GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w500),),
                  OTPTextField(
  length: 6,
  width: MediaQuery.of(context).size.width,
  style: TextStyle(
    fontSize: 17
  ),
  textFieldAlignment: MainAxisAlignment.spaceAround,
  fieldStyle: FieldStyle.underline,
  onCompleted: (pin) {
    print("Completed: " + pin);
  },
),
SizedBox(height: 15,),
Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Text("Resend OTP",style: GoogleFonts.poppins(fontSize:16,color:TColors.orange,fontWeight:FontWeight.w600),),
  ],
),
SizedBox(height: 20,),
RoundedBorderButton1(text: "Log In", onTap: (){})
              ],
             ),
          ),
        )
      ],),
    );
  }
}