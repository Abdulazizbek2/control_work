import 'package:control_work/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustoMobDialog extends StatelessWidget {
  const CustoMobDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        "New List",
        style: GoogleFonts.roboto(
            fontSize: 22, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Card(
            child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter list title",
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    filled: true,
                    hintStyle: GoogleFonts.roboto(fontSize: 17))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: MyColors.kok,
                        fontWeight: FontWeight.w700),
                  )),
              CupertinoButton(
                  padding: const EdgeInsets.only(left: 15, right: 20),
                  borderRadius: BorderRadius.circular(20),
                  onPressed: () {},
                  color: MyColors.kok,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Create",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }
}
