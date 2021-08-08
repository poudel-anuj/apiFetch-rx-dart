import 'package:covid_rx/constants/SizeConfig.dart';
import 'package:covid_rx/model/HomeScreenModel.dart';
import 'package:flutter/material.dart';

class CourseAndName extends StatelessWidget {
  final AsyncSnapshot<HomeScreenModel> snapshot;
  final int index;
  const CourseAndName({
    Key key,
    this.snapshot,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${snapshot.data.courses[index].courseCatagory}',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),
         SizedBox(
        height: SizeConfig.blockSizeHorizontal * 2),
    Text(
      '${snapshot.data.courses[index].name}',
      style: Theme.of(context).textTheme.headline6,
    ),
      ],
    );
  }
}