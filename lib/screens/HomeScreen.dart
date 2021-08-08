import 'package:covid_rx/Bloc/CoursesBloc.dart';
import 'package:covid_rx/components/CircleAndTexts.dart';
import 'package:covid_rx/components/CourseAndName.dart';
import 'package:covid_rx/components/PicAndDate.dart';
import 'package:covid_rx/components/Price.dart';
import 'package:covid_rx/constants/SizeConfig.dart';
import 'package:covid_rx/model/HomeScreenModel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    coursesBloc.GetHomeScreenData();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: StreamBuilder<HomeScreenModel>(
              stream: coursesBloc.coursesData,
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return ListView.builder(
                    itemCount: snapshot.data.courses.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              PicAndDate(
                                snapshot: snapshot,
                                index: index,
                              
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 2.25),
                              CourseAndName(
                                snapshot: snapshot,
                                index: index,
                              ),
                              SizedBox(
                                  height: SizeConfig.blockSizeVertical * 3),
                              CircleAndTexts(
                                snapshot: snapshot,
                                index: index,
                              ),
                              SizedBox(
                                height: SizeConfig.blockSizeVertical * 2,
                                child: Divider(
                                  height: SizeConfig.blockSizeVertical * 2,
                                  // color: Colors.teal.shade100,
                                ),
                              ),
                              Price(
                                snapshot: snapshot,
                                index: index,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                return CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}
