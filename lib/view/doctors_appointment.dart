import 'package:flutter/material.dart';
import 'package:flutter_doctors/const/doctors_const.dart';
import 'package:flutter_doctors/view/doctors_home.dart';
import 'package:flutter_doctors/view/page_design.dart';
import 'package:flutter_doctors/widget/appointment_card.dart';

class DoctorsAppointment extends StatelessWidget {
  const DoctorsAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    final double top = mediaWidth / 20;
    double toolbarHeight6 = 6;
    final double left = mediaWidth / 18;
    return Scaffold(
      appBar: _appBarDesign(mediaHeight, toolbarHeight6),
      body: Padding(
        padding:
            EdgeInsets.only(top: top, left: left, right: left, bottom: left),
        child: Column(
          children: [
            const AppointmentCard(),
            DoctorsConst.sizedBoxHeight10,
            const AppointmentCard(),
            DoctorsConst.sizedBoxHeight10,
            const AppointmentCard(),
            DoctorsConst.sizedBoxHeight10,
            SizedBox(
                width: mediaWidth,
                height: mediaHeight / 15,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PageDesign(),
                      ));
                    },
                    child: Text(DoctorsConst.appointmentNew,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: DoctorsConst.colorWhite,
                            ))))
          ],
        ),
      ),
    );
  }

  AppBar _appBarDesign(double mediaHeight, double toolbarHeight6) {
    return AppBar(
      backgroundColor: DoctorsConst.colorBlue,
      toolbarHeight: mediaHeight / toolbarHeight6,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_outlined,
                size: iconSize25,
                color: DoctorsConst.colorWhite,
              ),
              DoctorsConst.sizedBoxWidth20,
              const titleAppBar(text: DoctorsConst.appointmentAppBar),
            ],
          ),
          const rowMaiilAndStackNotificationIconCircleAvatar(),
        ],
      ),
    );
  }
}

class titleAppBar extends StatelessWidget {
  const titleAppBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorsConst.colorWhite,
            ));
  }
}
