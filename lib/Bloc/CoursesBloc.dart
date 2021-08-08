import 'package:covid_rx/Repository/Repository.dart';
import 'package:covid_rx/model/HomeScreenModel.dart';
import 'package:rxdart/rxdart.dart';

class CoursesBloc{
   // ignore: close_sinks
  final BehaviorSubject<HomeScreenModel> _coursesData = BehaviorSubject<HomeScreenModel>();
  Stream<HomeScreenModel> get coursesData => _coursesData.stream;
  // ignore: non_constant_identifier_names
  void GetHomeScreenData() {
    repo.getHomeScreenData().then((value) {
      _coursesData.sink.add(value);
    });
  }
}
// ignore: non_constant_identifier_names
CoursesBloc coursesBloc = CoursesBloc();
