import 'package:control_work/pages/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesctopVersions extends StatefulWidget {
  static const String path = "/desctop_app";
  const DesctopVersions({Key? key}) : super(key: key);

  @override
  State<DesctopVersions> createState() => _DesctopVersionsState();
}

class _DesctopVersionsState extends State<DesctopVersions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(60),
            width: 450,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/image2.png",
                    width: 100,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Welcome to Uno To Do!",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: 50, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Start using the best to-do app, you can create and manage your To Do lists to improve your organization.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: const Color(0xFF5835E5),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
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
          Expanded(
              child: Container(
            height: double.infinity,
            color: const Color.fromRGBO(89, 70, 210, 0.08),
            child: const Image(
              image: AssetImage(
                "assets/image_1.png",
              ),
              fit: BoxFit.fitWidth,
            ),
          ))
        ],
      ),
    );
  }
}
