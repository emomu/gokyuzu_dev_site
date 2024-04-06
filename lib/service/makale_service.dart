import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:gokyuzudevsite/repo/makaleModel.dart';

class MakaleService {
  final String url = "https://gokyuzudev.com.tr/makale.json";
  Future<MakaleModel?> fetchUsers() async {
    var res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      final String veri = utf8.decode(res.bodyBytes);
      var jsonBody = MakaleModel.fromJson(jsonDecode(veri));
      return jsonBody;
    } else {
      print("İstek başarısız oldu => ${res.statusCode}");
    }
  }
}