import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Api {
  static const baseUrl = "http://localhost:3307/api/";

  static addjob(Map jobdata) async {
    print(jobdata);
    var url = Uri.parse("${baseUrl}add_job");

    try {
      final res = await http.post(url, body: jobdata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print("fail to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
