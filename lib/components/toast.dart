import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class XToast extends StatelessWidget {
  final String msg;
  final Map colors = {
    "info": Colors.blueAccent,
    "warning": Colors.orange,
    "danger": Colors.redAccent,
    "success": Colors.green
  },
      icons = {
        "info": Icons.info_outline,
        "warning": Icons.warning_amber_outlined,
        "danger": Icons.dangerous_outlined,
        "success": Icons.check_circle_outline
      };
  final String type;
  XToast({Key? key, required this.msg, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30, left: 25, right: 25),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: colors[type],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //icon
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: Icon(
                  icons[type],
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Expanded(
                  child: Text(msg,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.urbanist(
                          fontSize: 15,
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))),
            ]),
      ),
    );
  }
}