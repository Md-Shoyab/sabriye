import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:sabriye/app/constants/api_constants.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
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
          API_BASE_URL_2 + API_GET_ABOUT_INFO,
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

  Future<Map> getBookDetails() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_BOOK_DETAILS,
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
          API_BASE_URL_2 + API_GET_GIVING_BACK,
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

  Future<Map> getGivingBackInfo2() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_GIVING_BACK2,
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

  Future<Map> getFaqIntro() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_FAQ_INTRO,
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

  Future<List> getFaqInnerUnion() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_FAQ_INNER_UNION,
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

  Future<List> getFaqTeachings() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_FAQ_TEACHING,
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

  Future<List> getFaqAccount() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_FAQ_MANAGING_ACCOUNT,
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

  Future<List> getFaqTroubleshoot() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_FAQ_MANAGING_ACCOUNT,
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

  Future<void> loginUser(String basicAuth) async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL + API_LOGIN,
        ),
        headers: <String, String>{'Authorization': basicAuth},
      );
      if (response.statusCode == 200) {
        SessionManager.saveUserToken(basicAuth);
        Get.offAllNamed(Routes.MAIN_SCREEN);
      } else {
        Future.error('Server Error');
      }
    } catch (e) {
      Future.error('Exception error');
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
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error('Exception error');
    }
  }

  Future<List> getAllCommentsById() async {
    try {
      var response = await http.get(
        Uri.parse(API_BASE_URL + API_GET_COMMENTS_BY_ID),
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

  Future<List> getAllStories() async {
    try {
      var response = await http.get(
        Uri.parse(API_BASE_URL + API_GET_ALL_STORIES),
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

  Future<List> getRelatedPosts() async {
    try {
      var response = await http.get(
        Uri.parse(API_BASE_URL + API_GET_RELATED_POST),
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

  Future<Map> getComingIntoOneness() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_COMING_INTO_ONENESS,
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

  Future<Map> getPattyTestimonial() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_PATTY_TESTIMONIALS,
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

  Future<Map> getTheProgramDetailsComingInOneness() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_THE_PROGRAM_DETAILS,
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

  Future<Map> getWhoIsComingInOneness() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_WHO_IS_COMING_INTO_ONENESS,
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

  Future<List> fourStagesInnerUnion() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_FOUR_STAGES_INNER_UNION,
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

  Future<Map> membershipIntro() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_MEMBERSHIP_INTRO,
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

  Future<Map> membershipCheckPoints() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_MEMBERSHIP_CHECKPOINTS,
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

  Future<List> membershipAccordion() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_MEMBERSHIP_ACCORDIONS,
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

  Future<List> membershipPayment() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_MEMBERSHIP_PAYMENTS,
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

  Future<Map> sessionDetails() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_SESSIONS_PART1_DETAILS,
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

  Future<Map> sessionDetailsPartTwo() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_SESSIONS_PART2_DETAILS,
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

  Future<Map> sessionDetailsPartThree() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_SESSIONS_PART3_DETAILS,
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

  Future<Map> sessionDetailsPartFour() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_SESSIONS_PART4_DETAILS,
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

  Future<Map> sessionDetailsPartFive() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_SESSIONS_PART5_DETAILS,
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

  Future<List> sessionCardsDetails() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_SESSIONS_CARDS_DETAILS,
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

  Future<List> sessionTestimony() async {
    try {
      var response = await http.get(
        Uri.parse(
          API_BASE_URL_2 + API_GET_SESSIONS_TESTIMONY,
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
