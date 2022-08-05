import 'package:floward_task/api/api.dart';
import 'package:floward_task/modules/main/models/user.dart';
import 'package:floward_task/utils/logger.dart';

class UsersRepository{
  Future<List<User>> getUsers() async {
    try{
      final res = await API.getUsers();
      Logger.log(res.data, tag: 'DATA');
      if (res.success) {
        return ((res.data as List<dynamic>?) ?? [])
            .map((userJson) => User.fromJson(userJson))
            .toList();
      } else {
        return [];
      }
    }catch(error){
      Logger.log(error, tag: 'Error in getting users');
      return [];
    }
  }
}