import 'package:clean_architecture_with_dio/core/utils/constances.dart';
import 'package:clean_architecture_with_dio/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}



class RemoteDataSource  implements BaseRemoteDataSource {

  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName)async {

    try {
      var response = await Dio().get(
          "${Constance.baseUrl}/weather?q=$cityName&appid=${Constance.apiKey}");


      print(response);
      return WeatherModel.fromJson(response.data);

    } catch (e) {
      print(e);
      return null;
    }

  }

}