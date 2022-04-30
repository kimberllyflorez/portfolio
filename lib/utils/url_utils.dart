import 'package:url_launcher/url_launcher.dart';

class UrlUtils {
  static void openUrl(url) async {
    if (!await launchUrl(url)) throw 'Could not launch $url';
  }
}
