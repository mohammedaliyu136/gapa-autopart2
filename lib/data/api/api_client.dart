import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:http_parser/http_parser.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path/path.dart';
import 'package:flutter/foundation.dart' as Foundation;
import 'package:http/http.dart' as Http;
import 'package:citester/data/model/response/error_response.dart';
import 'package:citester/util/app_constants.dart';

class ApiClient extends GetxService {
  final String appBaseUrl;
  final SharedPreferences sharedPreferences;
  final String noInternetMessage = 'Connection to API server failed due to internet connection';
  final int timeoutInSeconds = 30;

  String token = '';
  Map<String, String> _mainHeaders = {};

  ApiClient({required this.appBaseUrl, required this.sharedPreferences}) {
    token = sharedPreferences.getString(AppConstants.TOKEN)??'000';
    try {
      //_addressModel = AddressModel.fromJson(jsonDecode(sharedPreferences.getString(AppConstants.USER_ADDRESS)));
    }catch(e) {}
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      //'Authorization': 'Bearer $token',
      //AppConstants.ZONE_ID: _addressModel == null ? null : _addressModel.zoneId.toString()
    };
  }

  void updateHeader(String token, String zoneID) {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
    };
    this.token = token;
  }

  Future<Response> getData(String uri, {Map<String, dynamic>? query, Map<String, String>? headers}) async {
    try {
      if(Foundation.kDebugMode) {
        print('====> API Call: $uri\nToken: $token');
      }
      print('--------------------------------');
      print('uri');
      print(uri);
      print('_mainHeaders');
      print(_mainHeaders);
      String url = '';
      if(token=='000'){
        url = appBaseUrl+uri;
      }else{
        url = appBaseUrl+uri+token;
      }

      Http.Response _response = await Http.get(
        Uri.parse(url),
        headers: headers ?? _mainHeaders,
      ).timeout(Duration(seconds: timeoutInSeconds));
      Response response = handleResponse(_response);
      if(Foundation.kDebugMode) {
        print('====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> postData(String uri, String account, dynamic body, {Map<String, String>? headers}) async {
    try {
      if(Foundation.kDebugMode) {
        print('====> API Call: $uri\nToken: $token');
        print('====> API Body: $body');
      }
      String url = '';
      if(account=='Hospital'){
        if(token=='000'){
          url = 'https://78248815-1b43-402b-ac9c-37eb54e7ae1d.mock.pstmn.io'+uri;
        }else{
          url = 'https://78248815-1b43-402b-ac9c-37eb54e7ae1d.mock.pstmn.io'+uri+token;
        }
      }else{
        if(token=='000'){
          url = appBaseUrl+uri;
        }else{
          url = appBaseUrl+uri+token;
        }
      }
      //url = appBaseUrl+uri+'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvc29ub2NhcmUuYXBwXC9hcGlcL2RvY3RvcmxvZ2luIiwiaWF0IjoxNjQwMjQxNjI5LCJleHAiOjIyNDAyNDE2MjksIm5iZiI6MTY0MDI0MTYyOSwianRpIjoiOWdDcE4xV3JpaHh4ZlFRSCIsInN1YiI6NDgsInBydiI6IjdmNzA2MmMzZDlkOTdhMjg3YjZkY2Y2NTkzNWFkNmRkZjJhNzI0N2YifQ.Vi7yMFNiyXH2avp7tHTYVSHAZye9Z5gVKSIAKp3mmJk';
      Http.Response _response = await Http.post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(Duration(seconds: timeoutInSeconds));
      Response response = handleResponse(_response);
      if(Foundation.kDebugMode) {
        print('====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> postMultipartData(String uri, Map<String, String> body, List<MultipartBody> multipartBody, {Map<String, String>? headers}) async {
    try {
      if(Foundation.kDebugMode) {
        print('====> API Call: $uri\nToken: $token');
        print('====> API Body: $body');
      }
      Http.MultipartRequest _request = Http.MultipartRequest('POST', Uri.parse(appBaseUrl+uri));
      _request.headers.addAll(headers ?? _mainHeaders);
      for(MultipartBody multipart in multipartBody) {
        if(multipart.file != null) {
          if(Foundation.kIsWeb) {
            Uint8List _list = await multipart.file.readAsBytes();
            Http.MultipartFile _part = Http.MultipartFile(
              multipart.key, multipart.file.readAsBytes().asStream(), _list.length,
              filename: basename(multipart.file.path), contentType: MediaType('image', 'jpg'),
            );
            _request.files.add(_part);
          }else {
            File _file = File(multipart.file.path);
            _request.files.add(Http.MultipartFile(
              multipart.key, _file.readAsBytes().asStream(), _file.lengthSync(), filename: _file.path.split('/').last,
            ));
          }
        }
      }
      _request.fields.addAll(body);
      Http.Response _response = await Http.Response.fromStream(await _request.send());
      Response response = handleResponse(_response);
      if(Foundation.kDebugMode) {
        print('====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> putData(String uri, dynamic body, {Map<String, String>? headers}) async {
    try {
      if(Foundation.kDebugMode) {
        print('====> API Call: $uri\nToken: $token');
        print('====> API Body: $body');
      }
      Http.Response _response = await Http.put(
        Uri.parse(appBaseUrl+uri),
        body: jsonEncode(body),
        headers: headers ?? _mainHeaders,
      ).timeout(Duration(seconds: timeoutInSeconds));
      Response response = handleResponse(_response);
      if(Foundation.kDebugMode) {
        print('====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> deleteData(String uri, {Map<String, String>? headers}) async {
    try {
      if(Foundation.kDebugMode) {
        print('====> API Call: $uri\nToken: $token');
      }
      Http.Response _response = await Http.delete(
        Uri.parse(appBaseUrl+uri),
        headers: headers ?? _mainHeaders,
      ).timeout(Duration(seconds: timeoutInSeconds));
      Response response = handleResponse(_response);
      if(Foundation.kDebugMode) {
        print('====> API Response: [${response.statusCode}] $uri\n${response.body}');
      }
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Response handleResponse(Http.Response response) {
    dynamic _body;
    try {
      _body = jsonDecode(response.body);
    }catch(e) {}
    Response _response = Response(
      body: _body != null ? _body : response.body,
      bodyString: response.body.toString(), headers: response.headers, statusCode: response.statusCode, statusText: response.reasonPhrase,
    );
    if(_response.statusCode != 200 && _response.body != null && _response.body is !String) {
      if(_response.body.toString().startsWith('{errors: [{code:')) {
        ErrorResponse _errorResponse = ErrorResponse.fromJson(_response.body);
        _response = Response(statusCode: _response.statusCode, body: _response.body, statusText: _errorResponse.errors[0].message);
      }else if(_response.body.toString().startsWith('{message')) {
        _response = Response(statusCode: _response.statusCode, body: _response.body, statusText: _response.body['message']);
      }
    }else if(_response.statusCode != 200 && _response.body == null) {
      _response = Response(statusCode: 0, statusText: noInternetMessage);
    }
    return _response;
  }
}

class MultipartBody {
  String key;
  PickedFile file;

  MultipartBody(this.key, this.file);
}