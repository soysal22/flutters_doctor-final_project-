import 'package:flutter/material.dart';
import 'package:flutter_doctors/const/doctors_const.dart';

class TextfieldCustom extends StatelessWidget {
  const TextfieldCustom(
      {super.key,
      required this.labelText,
      required this.icons,
      required this.keyboardType,
      required this.textfieldController});

  final textfieldController;

  final String labelText;
  final IconData icons;
  final TextInputType keyboardType;

  final double height12 = 12;
  final double left20 = 20;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: mediaHeight / height12,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: DoctorsConst.borderRadius40,
          //side: BorderSide(color: DoctorsConst.colorBlue),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: left20),
          child: Center(
            child: TextField(
              controller: textfieldController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: labelText,
                  labelStyle: TextStyle(color: DoctorsConst.colorBlue),
                  prefixIcon: Icon(icons)),
              keyboardType: keyboardType,
            ),
          ),
        ),
      ),
    );
  }
}
