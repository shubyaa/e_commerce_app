import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

void checkPermission() async {
  var status = await Permission.location.status;
  if (status.isDenied) {
    Map<Permission, PermissionStatus> _statusMap = await [
      Permission.location,
    ].request();
  }
  if (status.isPermanentlyDenied) {
    openAppSettings();
  }
}

Future<void> makePhoneCall(String phone) async {
  var url = Uri.parse('tel:${phone}');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw ("Could\'nt launch a call");
  }
}
