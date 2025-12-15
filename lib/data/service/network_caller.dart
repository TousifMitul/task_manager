import 'dart:convert';

import 'package:http/http.dart';

class NetworkCaller {
  Future<NetworkResponse> getRequest(String url) async {
    Uri uri = Uri.parse(url);
    Response response = await get(uri);
    final decodedData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return NetworkResponse(
        isSuccess: true,
        responseCode: response.statusCode,
        body: decodedData,
      );
    } else {
      return NetworkResponse(
        isSuccess: false,
        responseCode: response.statusCode,
      );
    }
  }
}

class NetworkResponse {
  final bool isSuccess;
  final int responseCode;
  final String? errorMessage;
  final dynamic body;

  NetworkResponse({
    required this.isSuccess,
    required this.responseCode,
    this.errorMessage,
    this.body,
  });
}
