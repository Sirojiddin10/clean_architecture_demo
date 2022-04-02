import 'package:clean_architecture_demo/core/failures/failures.dart';
import 'package:clean_architecture_demo/core/usecases/usecases.dart';
import 'package:clean_architecture_demo/featrues/weather/domain/entities/coordinates.dart';
import 'package:clean_architecture_demo/featrues/weather/domain/entities/main.dart';
import 'package:clean_architecture_demo/featrues/weather/domain/entities/waether_entity.dart';
import 'package:clean_architecture_demo/featrues/weather/domain/entities/weather.dart';
import 'package:clean_architecture_demo/featrues/weather/domain/repositories/weather_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetWeatherData implements UseCase<WeatherEntity, Params> {
  final WeatherRepository repository;
  const GetWeatherData(this.repository);
  @override
  Future<Either<Failure, WeatherEntity>> call(Params params) async {
    return await repository.getEatherData('', '');
  }
}

class Params extends Equatable {
  final Coordinates coordinates;
  final Weather weather;
  final String base;
  final Main main;
  final String name;

  const Params({
    required this.base,
    required this.coordinates,
    required this.main,
    required this.name,
    required this.weather,
  });

  @override
  List<Object?> get props => [
        base,
        coordinates,
        main,
        name,
        weather,
      ];
}
