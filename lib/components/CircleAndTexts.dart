
import 'package:covid_rx/constants/SizeConfig.dart';
import 'package:covid_rx/model/HomeScreenModel.dart';
import 'package:flutter/material.dart';

class CircleAndTexts extends StatelessWidget {
  final AsyncSnapshot<HomeScreenModel> snapshot;
  final int index;
  const CircleAndTexts({
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
              horizontal: SizeConfig.blockSizeHorizontal,
              vertical: SizeConfig.blockSizeVertical),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('${snapshot.data.courses[index].courseImage}',
                
                ),
                //  backgroundImage:  Image.network(
                //     '${snapshot.data.courses[index].courseImage}',
                //    ,
                maxRadius:
                    SizeConfig.blockSizeVertical * 3,
                minRadius:
                    SizeConfig.blockSizeVertical * 3,
              ),
              SizedBox(
                  width:
                      SizeConfig.blockSizeVertical * 2),
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${snapshot.data.courses[index].courseDesignedBy[0].username}',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                      height:
                          SizeConfig.blockSizeVertical / 3.5),
                  Text(
                    'FullStack Developer',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'evenir'),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}