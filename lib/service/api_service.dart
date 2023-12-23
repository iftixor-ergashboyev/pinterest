import 'package:dio/dio.dart' hide Headers;
import 'package:pinterest/model/user_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import '../model/collection_response.dart';
import '../model/image_response.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
 factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

 @Headers({
  "Authorization": "Client-ID KR7Tcw-RNnurIM-7JDGj9S-5DUeFhVTx1YNxoR-vRkg"
 })
 @GET('/search/photos/?page=1&per_page=20&query=')
 Future<ImageResponse> getImages(@Query('query') String query);

 @Headers({
  "Authorization": "Client-ID KR7Tcw-RNnurIM-7JDGj9S-5DUeFhVTx1YNxoR-vRkg"
 })
 @GET('/collections')
 Future<List<CollectionResponse>> getCollections();

 @Headers({
  "Authorization" : "Client-ID KR7Tcw-RNnurIM-7JDGj9S-5DUeFhVTx1YNxoR-vRkg"
 })
 @GET('/users/{username}')
 Future<UserResponse> getProfile(@Path('username')String username);
}


Dio buildDioClient(String base) {
 final dio = Dio()..options = BaseOptions(baseUrl: base);
 dio.interceptors.add(PrettyDioLogger(
     requestHeader: true,
     requestBody: true,
     responseBody: true,
     responseHeader: false,
     error: true,
     compact: true,
     maxWidth: 90));
 return dio;
}