import 'package:flutter/material.dart';
import 'package:flutter_doctors/const/doctors_const.dart';
import 'package:flutter_doctors/widget/text_blue_bold.dart';

class AlertMessage extends StatelessWidget {
  const AlertMessage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: CircleAvatar(
                  backgroundColor: DoctorsConst.colorBlue,
                  child: Icon(
                    Icons.close,
                    color: DoctorsConst.colorWhite,
                  ),
                ),
              )
            ],
          ),
          DoctorsConst.sizedBoxHeight10,
          TextBlueBold(text: text),
        ],
      ),
    );
  }
}
