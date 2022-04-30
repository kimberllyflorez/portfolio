import 'package:http/http.dart' as http;

class IOService {
  final String _baseUrl =
      'portafolio-9ce0d-default-rtdb.firebaseio.com';

  Future<String> get(String segment) async {
    try {
      final url =  Uri.https(_baseUrl, segment);
      final response = await http.get(url);
      return response.body;
    } catch (e) {
      return '';
    }
  }
}
