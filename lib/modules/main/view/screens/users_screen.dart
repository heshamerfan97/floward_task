import 'package:floward_task/language/localize_helper.dart';
import 'package:floward_task/modules/main/controllers/users_controller.dart';
import 'package:floward_task/modules/main/models/user.dart';
import 'package:floward_task/modules/main/view/components/user_widget.dart';
import 'package:floward_task/shared/ui/components/floward_app_bar.dart';
import 'package:floward_task/shared/ui/components/loading_widget.dart';
import 'package:floward_task/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlowardAppBar('All Users'.localize(context)),
      body: BlocBuilder<UsersCubit, List<User>?>(builder: (ctx, users) {
        Logger.log(users?.length);
        if(users == null) {
          return const LoadingWidget();
        }
        else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: users.map((user) => UserWidget(user)).toList(),
            ),
          );
        }
      }),
    );
  }
}
