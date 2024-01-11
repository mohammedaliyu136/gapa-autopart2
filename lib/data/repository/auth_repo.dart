import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:citester/data/api/api_client.dart';
import 'package:citester/data/model/body/signup_body.dart';
import 'package:citester/data/model/response/profile_model.dart';
import 'package:citester/data/model/response/util_models.dart';
import 'package:citester/util/app_constants.dart';
import 'package:http/http.dart' as http;

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> register(SignUpBody signUpBody) async {
    return await apiClient.postData(AppConstants.REGISTER_URI, '', signUpBody.toJson());
  }

  Future<Response> login({required String email, required String password}) async {
    return await apiClient.postData(AppConstants.LOGIN_URI, '', {"email": email, "password": password});
  }
  Future<bool> saveUserToken(String token) async {
    apiClient.token = token;
    //apiClient.updateHeader(token, null);
    //return await sharedPreferences.setString(AppConstants.TOKEN, token);
    return true;
  }
}
