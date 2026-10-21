import 'package:url_launcher/url_launcher.dart';

class MakePhoneCall {
  Future<void> makePhoneCall(String number) async {
    final Uri url = Uri.parse("tel:$number");
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw "Could not launch $number";
    }
  }
}
