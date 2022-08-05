import 'package:floward_task/modules/main/models/post.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget(this.post, {Key? key}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(post.title),
        subtitle: Text(post.body),
      ),
    );
  }
}
