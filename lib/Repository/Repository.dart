import 'package:covid_rx/model/HomeScreenModel.dart';
import 'package:covid_rx/services/HomeScreenProvider.dart';

class Repository {
  HomeScreenProvider _home = HomeScreenProvider();
  Future<HomeScreenModel> getHomeScreenData() {
    return _home.getData();
  }
}

Repository repo = Repository();
