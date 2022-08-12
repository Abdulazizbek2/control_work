import 'package:control_work/main.dart';
import 'package:control_work/pages/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileVersions extends StatefulWidget {
  static const String path = "/mobile3_app";
  const MobileVersions({Key? key}) : super(key: key);

  @override
  State<MobileVersions> createState() => _MibileVersionsState();
}

class _MibileVersionsState extends State<MobileVersions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/image_1.png"),
              Padding(
                padding: const EdgeInsets.all(35),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Welcome to Uno To Do!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontSize: 36, fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Start using the best To Do app",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: const Color(0xFF5835E5),
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              CupertinoButton(
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5835E5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Get started",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: const Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(SeconPage.path);
                  })
            ]),
      ),
    );
  }
}
