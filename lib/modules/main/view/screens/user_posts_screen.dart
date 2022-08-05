import 'package:floward_task/app_bloc.dart';
import 'package:floward_task/config/constants.dart';
import 'package:floward_task/modules/main/controllers/posts_controller.dart';
import 'package:floward_task/modules/main/models/post.dart';
import 'package:floward_task/modules/main/view/components/post_widget.dart';
import 'package:floward_task/shared/ui/components/floward_app_bar.dart';
import 'package:floward_task/shared/ui/components/loading_widget.dart';
import 'package:floward_task/shared/ui/helper/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPostsScreen extends StatelessWidget {
  const UserPostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsCubit, List<Post>?>(builder: (ctx, posts) {
        return Scaffold(
          appBar: FlowardAppBar(AppBloc.postsCubit.user?.name??'', hasBackButton: true,),
          body:
          posts == null?
            const LoadingWidget()
            :
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22.5),
                        child: Image.network(
                         AppBloc.postsCubit.user!.url,
                          fit: BoxFit.fill,
                          loadingBuilder: Constants.errorImageBuilder,
                          errorBuilder: Constants.loadingImageBuilder,
                        ),
                      ),
                    ),
                    VerticalSpace(20),
                    ...posts.map((post) => PostWidget(post)).toList()
                  ],
                ),
              )
          ,
        );
      },
    );
  }
}
