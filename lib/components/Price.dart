
import 'package:covid_rx/constants/SizeConfig.dart';
import 'package:covid_rx/constants/constants.dart';
import 'package:covid_rx/model/HomeScreenModel.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  final AsyncSnapshot<HomeScreenModel> snapshot;
  final int index;
  const Price({
    Key key,
    this.snapshot,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal, vertical: 12),
          child: Row(
            children: [
              Text('NPR', style: kMoneyTexStyle),
              SizedBox(width: SizeConfig.safeBlockHorizontal * 2),
              Text('${snapshot.data.courses[index].coursePrice}',
                  style: kMoneyTexStyle),
              Spacer()
            ],
          ),
        ),
      ],
    );
  }
}









