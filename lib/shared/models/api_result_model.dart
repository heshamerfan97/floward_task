import 'package:dio/dio.dart';
import 'package:floward_task/utils/logger.dart';


class APIResultModel {
  final bool success;
  final String? message;
  final dynamic data;

  static String tag = 'API Result Model';

  APIResultModel({
    required this.success,
    this.message,
    this.data,
  });


  factory APIResultModel.fromResponse({Response? response, dynamic data}){
    if(response != null){
      try{
        Logger.log(response.data, tag: tag);
        Logger.log(response.statusCode, tag: tag);
        final List<dynamic> responseBody = (response.data as List<dynamic>);
        return APIResultModel(
          success: (response.statusCode == 200 || response.statusCode == 201),
          message: '',
          data: data==null?responseBody:responseBody[data],
        );
      }catch(error){
        Logger.log('Error in getting result from response:\n $error', tag: tag);
        return APIResultModel(
          success: false,
          data: null,
          message: "cannot init result api",
        );
      }
    } else {
      Logger.log('Response is null', tag: tag);
      return APIResultModel(
        success: false,
        data: null,
        message: "Response is null",
      );
    }
  }

}