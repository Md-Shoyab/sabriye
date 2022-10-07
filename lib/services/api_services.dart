import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sabriye/app/constants/api_constants.dart';
import 'package:sabriye/app/routes/app_pages.dart';

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

  Future<List> getAllBlogsByTeachingsSubCategories(String id) async {
    try {
      var response = await http.get(
        Uri.parse(API_BASE_URL + API_GET_BLOGPOST_BY_SUB_TEACHING + id),
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

  Future<Map> getBlogDetailsById(String id) async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_GET_BLOG_DETAILS_ID + id,
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

  Future<Map> getGivingBackInfo() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_GET_GIVING_BACK,
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

  Future<Map> getFaq() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_GET_ALL_FAQ,
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

  Future<Map> getSessions() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_GET_SESSIONS_DETAILS,
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

  Future<Map> getMembershipDetails() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_GET_MEMBERSHIP_DETAILS,
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

  Future loginUser(String basicAuth) async {
    try {
      log(basicAuth);
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_LOGIN,
        ),
        headers: <String, String>{'Authorization': basicAuth},
      );
      log(response.body);
      if (response.statusCode == 200) {
        return Get.toNamed(Routes.MAIN_SCREEN);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Exception error');
    }
  }

  Future<List> getAllCards() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_GET_ALL_CARDS,
        ),
      );
      if (response.statusCode == 200) {
        log(response.body);
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Exception error');
    }
  }
}
