import 'package:http/http.dart' as http;
import 'dart:convert';

class Post {
  String baseUrl =
      'https://sabriyeayana.com/wp-json/wp/v2/posts/?categories=108';

  Future<List> getAllPost() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
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
