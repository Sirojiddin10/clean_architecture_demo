import 'package:clean_architecture_demo/core/failures/failures.dart';
import 'package:clean_architecture_demo/featrues/weather/domain/entities/waether_entity.dart';
import 'package:dartz/dartz.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getEatherData(
      String appId, String city);
}
