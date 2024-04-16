import 'dart:io';

ChickInternet() async {
  try {
    var result = await InternetAddress.lookup("googel.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}
