import 'package:amaris_case/core/constants/application_constants.dart';
import 'package:dio/dio.dart';

import '../../utility/app_snackbar.dart';

class DataLayer {
  DataLayer() {
    _dio = Dio(BaseOptions(baseUrl: ApplicationConstants.baseUrl, contentType: Headers.jsonContentType,queryParameters: {"api-key":ApplicationConstants.apiKey}));
  }
  late final Dio _dio;

  Future<dynamic> get({required Function(Map<String, dynamic> json) fromJson, required String path}) async {
    try {
      var response = await _dio.get(path);
      if (response.statusCode == 200) {
        return fromJson(response.data);
      } else if (response.statusCode == 400) {
        AppAlertDialog.showDialog(alertEnum: AlertEnum.danger, text: response.data['message']);
      }
    } catch (e) {
      AppAlertDialog.showDialog(alertEnum: AlertEnum.danger, text: e.toString());
    }
  }
}