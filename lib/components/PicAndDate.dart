import 'package:covid_rx/constants/SizeConfig.dart';
import 'package:covid_rx/model/HomeScreenModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PicAndDate extends StatelessWidget {
  final AsyncSnapshot<HomeScreenModel> snapshot;
  final int index;

  const PicAndDate({
    Key key,
    this.snapshot,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime datee, startDate;
    String startdate = snapshot.data.courses[index].startdate;
    String date = snapshot.data.courses[index].enddate;

    startDate = DateTime.parse(startdate);
    datee = DateTime.parse(date);

    final String formatted = DateFormat('MMMM,d,y').format(datee);
    final String formatedStartDate =
        DateFormat('MMMM,d,y').format(startDate);

    return Stack(
      children: [
        Container(
          width: SizeConfig.blockSizeHorizontal * 90,
          height: SizeConfig.blockSizeVertical * 30,
          child: Image.network(
            '${snapshot.data.courses[index].courseImage}',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.amber,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal,
                  vertical: SizeConfig.blockSizeVertical / 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //
                  Text('$formatedStartDate'),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal,
                  ),
                  Text('-'),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal,
                  ),
                  //Text('${snapshot.data.courses[index].enddate}')
                  Text('$formatted'),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
