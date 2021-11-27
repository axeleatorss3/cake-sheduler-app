import 'package:cake_scheduler/models/User/user.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import '../services/api.dart';

part 'auth_provider.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio) {
    dio.interceptors
        .add(PrettyDioLogger(requestBody: true, responseHeader: true));
    return _RestClient(dio, baseUrl: baseUrl);
  }

  @GET("/user/{id}")
  Future<User> getUser();
}
