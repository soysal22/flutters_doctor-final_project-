import 'package:flutter/material.dart';
import 'package:flutter_doctors/const/doctors_const.dart';

class TextSmallBoldGrey extends StatelessWidget {
  const TextSmallBoldGrey({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: DoctorsConst.colorGrey,
              fontWeight: FontWeight.bold,
            ));
  }
}
