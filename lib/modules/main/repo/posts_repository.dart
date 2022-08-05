import 'package:floward_task/api/api.dart';
import 'package:floward_task/modules/main/models/post.dart';
import 'package:floward_task/utils/logger.dart';

class PostsRepository{
  Future<List<Post>> getPosts() async {
    try{
      final res = await API.getPosts();
      if (res.success) {
        return ((res.data as List<dynamic>?) ?? [])
            .map((postJson) => Post.fromJson(postJson))
            .toList();
      } else {
        return [];
      }
    }catch(error){
      Logger.log(error, tag: 'Error in getting posts');
      return [];
    }
  }
}