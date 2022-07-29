import 'package:clean_architecture_with_dio/domain/entities/weather.dart';
import 'package:clean_architecture_with_dio/domain/repository/weatherRepository.dart';

class GetWeatherByCountryName{
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String cityName)async {
    return await repository.getWeatherByCityName(cityName);
}

}