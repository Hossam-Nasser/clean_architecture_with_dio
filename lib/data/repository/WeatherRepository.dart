import 'package:clean_architecture_with_dio/data/datasource/remote_datasoure.dart';
import 'package:clean_architecture_with_dio/domain/entities/weather.dart';
import 'package:clean_architecture_with_dio/domain/repository/weatherRepository.dart';

class WeatherRepository implements BaseWeatherRepository {

  final BaseRemoteDataSource baseRemoteDataSource;


  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async{
    return (await baseRemoteDataSource.getWeatherByCountryName(cityName))!;


    throw UnimplementedError();
  }

}