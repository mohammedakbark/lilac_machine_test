// import 'dart:convert';
// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:japx/japx.dart';
// import 'package:lilac_machine_test/config/dio/api_const.dart';
// import 'package:lilac_machine_test/core/models/respons_model.dart';

// class DioConfig {
//   static final Dio _dio = Dio(
//     BaseOptions(
//       baseUrl: ApiConst.baseURL,
//       connectTimeout: Duration(seconds: 10),
//       receiveTimeout: Duration(seconds: 10),
//     ),
//   );

//   static Future<ResponseModel> postRequest({
//     required String endpoint,
//     required Map<String, dynamic> header,
//     Object? body,
//   }) async {
//     try {
//       final response = await _dio.post(
//         endpoint,
//         data: body,
//         options: Options(headers: header),
//       );
//       // log(response.data.toString());
//       if (response.statusCode == 200) {
//         final Map<String, dynamic> decodedJson = response.data;
//         // log(decodedJson.toString());
//         // final data = Japx.decode(decodedJson);
//         // // log('llll');
//         // log(data.toString());

//         return ResponseModel(data: decodedJson, isError: false);
//       } else {
//         return ResponseModel(data: response.data, isError: true);
//       }
//     } on DioException catch (e) {
//       if (e.type == DioExceptionType.connectionError ||
//           e.type == DioExceptionType.unknown) {
//         return ResponseModel(
//           data: null,
//           message: "No Internet Connection!",
//           isError: true,
//         );
//       }
//       return ResponseModel(
//         data: null,
//         message: "Dio Error: ${e.message}",
//         isError: true,
//       );
//     } catch (e) {
//       return ResponseModel(
//         data: null,
//         message: "Unexpected Error: $e",
//         isError: true,
//       );
//     }
//   }

//   //---------------------------GET

//   static Future<ResponseModel> getRequest({
//     required String endpoint,
//     required Map<String, dynamic> header,
//     Object? body,
//   }) async {
//     try {
//       final response = await _dio.get(
//         endpoint,
//         data: body,
//         options: Options(headers: header),
//       );

//       if (response.statusCode == 200) {
//         // final Map<String, dynamic> decodedJson = response.data;]
//         final jsonApiResponse = response.data;
//         final decodedData = Japx.decode(jsonApiResponse);

//         // log(decodedJson)
//         // final data = Japx.decode(decodedJson);

//         // log(data.toString());
//         return ResponseModel(isError: false, data: jsonApiResponse);
//       } else {
//         return ResponseModel(data: response.data, isError: true);
//       }
//     } on DioException catch (e) {
//       if (e.type == DioExceptionType.connectionError ||
//           e.type == DioExceptionType.unknown) {
//         return ResponseModel(
//           data: null,
//           message: "No Internet Connection!",
//           isError: true,
//         );
//       }

//       return ResponseModel(
//         data: null,
//         message: "Dio Error: ${e.message}",
//         isError: true,
//       );
//     } catch (e) {
//       return ResponseModel(
//         data: null,
//         message: "Unexpected Error: $e",
//         isError: true,
//       );
//     }
//   }
// }

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:japx/japx.dart';

import 'package:lilac_machine_test/config/dio/api_const.dart';
import 'package:lilac_machine_test/core/models/respons_model.dart';

class DioConfig {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiConst.baseURL,
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
    ),
  );

  static Future<ResponseModel> postRequest({
    required String endpoint,
    required Map<String, dynamic> header,
    Object? body,
    bool useJapx = true,
  }) async {
    try {
      final response = await _dio.post(
        endpoint,
        data: body,
        options: Options(headers: header),
      );

      if (response.statusCode == 200) {
        if (useJapx) {
          final decodedData = Japx.decode(response.data);
          return ResponseModel(data: decodedData, isError: false);
        } else {
          return ResponseModel(data: response.data, isError: false);
        }
        // log("Decoded POST data: $decodedData");
      } else {
        return ResponseModel(
          data: response.data,
          isError: true,
          message: "Request failed with status: ${response.statusCode}",
        );
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        return ResponseModel(
          data: null,
          message: "No Internet Connection!",
          isError: true,
        );
      }
      return ResponseModel(
        data: null,
        message: "Dio Error: ${e.message}",
        isError: true,
      );
    } catch (e) {
      return ResponseModel(
        data: null,
        message: "Unexpected Error: $e",
        isError: true,
      );
    }
  }

  //---------------------------GET

  static Future<ResponseModel> getRequest({
    required String endpoint,
    required Map<String, dynamic> header,
    Object? body,
  }) async {
    try {
      final response = await _dio.get(
        endpoint,
        data: body,
        options: Options(headers: header),
      );

      if (response.statusCode == 200) {
        final decodedData = Japx.decode(response.data);
        // log("Decoded GET data: $decodedData");

        return ResponseModel(isError: false, data: decodedData);
      } else {
        return ResponseModel(
          data: response.data,
          isError: true,
          message: "Request failed with status: ${response.statusCode}",
        );
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.unknown) {
        return ResponseModel(
          data: null,
          message: "No Internet Connection!",
          isError: true,
        );
      }

      return ResponseModel(
        data: null,
        message: "Dio Error: ${e.message}",
        isError: true,
      );
    } catch (e) {
      return ResponseModel(
        data: null,
        message: "Unexpected Error: $e",
        isError: true,
      );
    }
  }
}
