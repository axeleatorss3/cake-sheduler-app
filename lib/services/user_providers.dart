import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

import '../models/User/user.dart';
import '../services/api.dart';

part 'user_providers.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio) {
    dio.interceptors
        .add(PrettyDioLogger(requestBody: true, responseHeader: true));
    return _RestClient(dio, baseUrl: baseUrl);
  }

  @GET("/user/{id}")
  Future<User> getUser(@Path('id') String id);
}
