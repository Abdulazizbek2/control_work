import 'package:control_work/consts/consts.dart';
import 'package:control_work/pages/dialog_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeconPage extends StatefulWidget {
  static const String path = "/seconnnn_app";
  const SeconPage({Key? key}) : super(key: key);

  @override
  State<SeconPage> createState() => _SeconPagetate();
}

class _SeconPagetate extends State<SeconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (MediaQuery.of(context).size.width > 500) {
          return Row(
            children: [
              Container(
                width: 280,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: secondWindowPage(),
              ),
              Expanded(
                  child: Container(
                height: double.infinity,
                color: const Color(0xFFB0A2F2),
              ))
            ],
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: secondWindowPage(),
        );
      },
    ));
  }

  Column secondWindowPage() {
    return Column(children: [
      AppBar(
        toolbarHeight: 44,
        backgroundColor: Colors.white,
        elevation: .0,
      ),
      listileWid(),
      listileWid2(
          icon: const Icon(
            Icons.star_outlined,
            color: Colors.red,
          ),
          title: "Important"),
      listileWid2(
          icon: const Icon(
            Icons.house_siding_outlined,
            color: MyColors.kok,
          ),
          title: "Tasks"),
      const Divider(
        height: 1,
      ),
      listileWid2(
          icon: const Icon(
            Icons.list,
            color: MyColors.iconColor,
          ),
          title: "Task list"),
      listileWid2(
          icon: const Icon(
            Icons.list,
            color: MyColors.iconColor,
          ),
          title: "House List"),
      const Spacer(),
      Padding(
        padding: const EdgeInsets.only(left: 23.0, bottom: 26),
        child: Builder(builder: (context) {
          return TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const CustoMobDialog();
                    });
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.add,
                    color: MyColors.kok,
                  ),
                  Text(
                    "New List",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: MyColors.kok,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ));
        }),
      )
    ]);
  }

  ListTile listileWid() {
    return ListTile(
        horizontalTitleGap: 9,
        leading: CircleAvatar(
          backgroundColor: MyColors.kok,
          child: Text(
            "AB",
            style: GoogleFonts.roboto(
                fontSize: 14,
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500),
          ),
        ),
        title: Text(
          "Antonio Bonilla",
          style: GoogleFonts.roboto(
              fontSize: 16,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(
          Icons.search,
          color: MyColors.kok,
        ));
  }

  ListTile listileWid2({required Icon icon, required String title}) {
    return ListTile(
        horizontalTitleGap: 0,
        leading: icon,
        title: Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: 16,
              color: const Color(0xFF000000),
              fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(
          Icons.chevron_right,
        ));
  }
}
