import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';

import '../data/model/body/signup_body.dart';
import '../data/model/response/response_model.dart';
import '../data/repository/auth_repo.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;
  AuthController({required this.authRepo});


  bool _isLoading = false;
  bool get isLoading=>_isLoading;

  bool _token = false;
  bool get token=>_token;

  Future<ResponseModel> login(String email, String password) async {
    _isLoading = true;
    update();
    Response response = await authRepo.login(email: email, password: password);

    ResponseModel responseModel;
    if (response != null && response.statusCode == 200) {
      var responseBody = response.body;
      String message = responseBody['message'];
      _token = responseBody['token'];
      responseModel = ResponseModel(true, 'Login Successful');
    } else {
      responseModel = ResponseModel(false, 'Login Failed');
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  Future<ResponseModel> registration({SignUpBody? signUpBody}) async {
    _isLoading = true;
    update();

    Response response;
    response = await authRepo.register(signUpBody!);

    ResponseModel responseModel;
    if (response.statusCode == 200) {
      var responseBody = response.body;
      responseBody['user']['email'];
      responseModel = ResponseModel(true, 'Registration Successful');
    } else {
      responseModel = ResponseModel(false, response.body['message']);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_object', '');
    await prefs.setString('user_login_type', '');
    await prefs.setString('user_token', '');
  }
}