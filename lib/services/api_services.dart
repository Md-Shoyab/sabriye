import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sabriye/app/constants/api_constants.dart';

class ApiServices {
  Future<List> getAllPost() async {
    try {
      var response = await http.get(
        Uri.parse(API_BASE_URL + API_GET_BLOGPOST_LIST),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Exception error');
    }
  }

  Future<List> getAllTeachingsCategories() async {
    try {
      var response = await http.get(
        Uri.parse(API_BASE_URL + API_GET_TEACHINNGS_CATEGORIES),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Exception error');
    }
  }

  Future<List> getAllTeachingsSubCategories(String id) async {
    try {
      var response = await http.get(
        Uri.parse(API_BASE_URL + API_GET_TEACHINNGS_SUBCATEGORIES + id),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Exception error');
    }
  }

  Future<List> getAllSpritiualSpotlightVideoInterview() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_GET_ALL_SPIRITUAL_SPOTLIGHT_VIDEO_INTERVIEW,
        ),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Exception error');
    }
  }

  Future<Map> getAboutInfo() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_GET_ABOUT_INFO,
        ),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Exception error');
    }
  }

  Future<Map> getSpiritualSpotlightVideoInterViewDetails(String id) async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL +
              API_GET_SPIRITUAL_SPOTLIGHT_VIDEO_INTERVIEW_DETAILS +
              id,
        ),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Exception error');
    }
  }
}
