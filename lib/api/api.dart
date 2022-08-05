

import 'package:floward_task/api/dio_manager.dart';
import 'package:floward_task/shared/models/api_result_model.dart';
import 'package:floward_task/utils/logger.dart';

class API {

  static const generalPath = '/SharminSirajudeen/test_resources';

  ///API Paths
  static const String usersPath = "$generalPath/users";
  static const String postsPath = "$generalPath/posts";









  ///API functions
  static Future<APIResultModel> getUsers({Map<String, dynamic>? parameters}) async {
    Logger.log(parameters);
    return APIResultModel.fromResponse(
        response: await DIOManger.get(path: usersPath, parameters: parameters),
        data: null);
  }

  static Future<APIResultModel> getPosts({Map<String, dynamic>? parameters}) async {
    Logger.log(parameters);
    return APIResultModel.fromResponse(
        response: await DIOManger.get(path: postsPath, parameters: parameters),
        data: null);
  }


}
