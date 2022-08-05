import 'package:floward_task/modules/main/models/post.dart';
import 'package:floward_task/modules/main/models/user.dart';
import 'package:floward_task/modules/main/repo/posts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<List<Post>?> {
  PostsCubit() : super([]);
  List<Post> posts = [];
  User? user;

  PostsRepository postsRepository = PostsRepository();

  /// Null means that the controller is loading
  Future<List<Post>> loadPosts() async {
   emit(null);
    posts = await postsRepository.getPosts();
    emit(posts);
    return posts;
  }

  filterPosts(User user){
    this.user = user;
    final userPosts = posts.where((post) => post.userId == user.userId).toList();
    emit(userPosts);
  }
}
