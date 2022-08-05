import 'package:floward_task/app_bloc.dart';
import 'package:floward_task/application/application.dart';
import 'package:floward_task/config/constants.dart';
import 'package:floward_task/config/routes.dart';
import 'package:floward_task/language/localize_helper.dart';
import 'package:floward_task/modules/main/models/user.dart';
import 'package:floward_task/shared/services/sailor.dart';
import 'package:floward_task/shared/ui/helper/export.dart';
import 'package:floward_task/theme/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserWidget extends StatelessWidget {
  const UserWidget(this.user, {Key? key}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          AppBloc.postsCubit.filterPosts(user);
          Sailor.toNamed(Routes.userPostsScreen);
        },
        title: Text(user.name),
        subtitle: Text('${user.postsCount} ${'posts'.localize(context)}'),
        trailing: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return Icon(Icons.arrow_forward_ios_outlined, size: 18,
              color: Application.darkTheme ? Palette.white : Palette.black,);
          },
        ),
        leading: SizedBox(
          height: 45,
          width: 45,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(22.5),
            child: Image.network(
              user.thumbnailUrl,
              loadingBuilder: Constants.errorImageBuilder,
              errorBuilder: Constants.loadingImageBuilder,
            ),
          ),
        ),
      ),
    );
  }
}
