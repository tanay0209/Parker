import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AuthFunctions {
  userSignUp(
      String userName, String email, String password, String role) async {
    late int code;
    Response response = await http.post(
      Uri.parse("http://127.0.0.1:8000/parker/signup"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(<String, String>{
        "userName": userName,
        "email": email,
        "password": password,
        "role": role
      }),
    );
    code = response.statusCode;
    if (code != 200) {
      return null;
    } else {
      var body = jsonDecode(response.body);
      return body;
    }
  }

  loginAuthentication(String email, String password) async {
    late int code;

    dynamic response = await http.post(
      Uri.parse("http://127.0.0.1:8000/parker/login/"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(<String, String>{"email": email, "password": password}),
    );
    code = response.statusCode;
    if (code != 200) {
      return null;
    } else {
      var body = jsonDecode(response.body);
      return body;
    }
  }
}
