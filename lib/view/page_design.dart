import 'package:flutter/material.dart';
import 'package:flutter_doctors/const/doctors_const.dart';

class PageDesign extends StatelessWidget {
  const PageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(DoctorsConst.textPageDesing,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: DoctorsConst.colorBlue,
                    )),
            DoctorsConst.sizedBoxHeight20,
            CircularProgressIndicator.adaptive(
              backgroundColor: DoctorsConst.colorRed,
            ),
          ],
        ),
      ),
    );
  }
}
