import 'package:clean_architecture_demo/featrues/weather/domain/entities/coordinates.dart';
import 'package:clean_architecture_demo/featrues/weather/domain/entities/main.dart';
import 'package:clean_architecture_demo/featrues/weather/domain/entities/weather.dart';

class WeatherEntity {
  final Coordinates coordinates;
  final Weather weather;
  final String base;
  final Main main;
  final String name;
  const WeatherEntity({
    required this.base,
    required this.coordinates,
    required this.main,
    required this.name,
    required this.weather,
  });
}
