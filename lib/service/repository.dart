
import 'package:pinterest/model/collection_response.dart';

import '../model/image_response.dart';
import '../model/user_response.dart';
import 'api_service.dart';

class Repository {
  final _apiService = ApiService(buildDioClient('https://api.unsplash.com/'));

  Future<List<Results>> getImageList(String query) async {
    try {
      final result = await _apiService.getImages(query);
      return result.results ?? [];
    } catch(e) {
      print('@@@ $e');
      return [];
    }
  }

  Future<List<CollectionResponse>> getCategoryList() async {
    try {
      final result = await _apiService.getCollections();
      return result;
    } catch(e) {
      print('@@@ $e');
      return[];
    }
  }

  Future<UserResponse?> getUser(String username) async {
    try {
      final user = await _apiService.getProfile(username);
      return user;
    } catch(e) {
      return null;
    }
  }
}