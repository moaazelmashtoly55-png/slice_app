import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:slice_app/core/nerwork/baseurl.dart';
import 'package:slice_app/core/nerwork/cutome_exeptions.dart';

class DioHelper {
  static late Dio dio;

  String token ="userToken";


  /// Initializing dio baseUrl
  static init() {
    try {
      dio = Dio(
        BaseOptions(
          baseUrl: ApiDomainUrl.apiUrl,
          headers: {
            "Accept":"application/json",
            "Content-Type":"application/json",
            
            
          },
          receiveDataWhenStatusError: true,
        ),
      );

      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
          enabled: kDebugMode,
        ),
      );
    } on DioException catch (exception) {
      final errorMessage =
          exception.response?.data['message'] ??
          exception.response?.data['error']?['message'] ??
          "Unexpected error";

      throw CustomException(
        errorMassage: errorMessage,
        statusCode: exception.response?.statusCode ?? 400,
      );
    } catch (e) {
      throw CustomException(errorMassage: e.toString(), statusCode: 400);
    }
  }

  //////////////////////////////////////////////////////////////////////////////////

  ///
  /// GET API
  ///
  static Future<Response> getDate({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
    
      return await dio.get(url, queryParameters: queryParameters);
    } on DioException catch (exception) {
      final errorMessage =
          exception.response!.data['message'] ??
          exception.response!.data['error']['message'];

      /// throw custom exception
      throw CustomException(
        errorMassage: errorMessage,
        statusCode: exception.response!.statusCode!,
      );
    } catch (e) {
      throw CustomException(errorMassage: e.toString(), statusCode: 400);
    }
  }

  //////////////////////////////////////////////////////////////////////////////////

  ///
  /// POST API
  ///
  static Future<Response> postData({required String url, Object? data}) async {
    try {
     
      return await dio.post(url, data: data);
    } on DioException catch (exception) {
      debugPrint(
        "here is the error from dio post data ${exception.response!.data} ",
      );

      final errorMessage =
          exception.response!.data['Message'] ??
          exception.response!.data['Message'];

      /// throw custom exception
      throw CustomException(
        errorMassage: errorMessage,
        statusCode: exception.response!.statusCode!,
      );
    } catch (error) {
      throw CustomException(errorMassage: error.toString(), statusCode: 400);
    }
  }

  //////////////////////////////////////////////////////////////////////////////////

  ///
  /// PUT API
  ///
  static Future<Response> putData({
    required String url,
    required Object? data,
  }) async {
  
    try {
      final response = await dio.put(url, data: data);
      return response;
    } on DioException catch (exception) {
      final errorMessage =
          exception.response!.data['Message'] ??
          exception.response!.data['Message'];

      /// throw custom exception
      throw CustomException(
        errorMassage: errorMessage,
        statusCode: exception.response!.statusCode!,
      );
    } catch (error) {
      throw CustomException(errorMassage: error.toString(), statusCode: 400);
    }
  }

  //////////////////////////////////////////////////////////////////////////////////

  ///
  /// DELETE API
  ///
  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? data,
  }) async {
   
    try {
      final response = await dio.delete(url, data: data);
      return response;
    } on DioException catch (exception) {
      final errorMessage =
          exception.response!.data['Message'] ??
          exception.response!.data['Message'];

      /// throw custom exception
      throw CustomException(
        errorMassage: errorMessage,
        statusCode: exception.response!.statusCode!,
      );
    } catch (error) {
      throw CustomException(errorMassage: error.toString(), statusCode: 400);
    }
  }
}

