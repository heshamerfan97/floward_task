import 'package:floward_task/app_bloc.dart';
import 'package:floward_task/modules/main/models/user.dart';
import 'package:floward_task/modules/main/repo/users_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersCubit extends Cubit<List<User>?> {
  UsersCubit() : super([]);
  List<User> users= [];

  UsersRepository usersRepository = UsersRepository();

  /// Null means that the controller is loading
  loadUsers() async {
    emit(null);
      users = await usersRepository.getUsers();
      final posts = await AppBloc.postsCubit.loadPosts();
      for(User user in users){
        user.postsCount = posts.where((post) => post.userId == user.userId).length;
      }
      emit(users);
    }
  }
