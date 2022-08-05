import 'package:floward_task/shared/ui/components/loading_widget.dart';
import 'package:flutter/material.dart';

// this class contains constants in the app.
class Constants {
  static final List<Locale> supportedLocales = [
    const Locale("en", "US"),
  ];

  static const String errorImage =
      'https://media.istockphoto.com/vectors/error-page-dead-emoji-illustration-vector-id1095047472?k=20&m=1095047472&s=612x612&w=0&h=1lDW_CWDLYwOUO7tAsLHnXTSwuvcWqWq4rysM1y6-E8=' /*'https://via.placeholder.com/150.png'*/;

  static Widget errorImageBuilder(ctx, o, t) => Image.network(errorImage, fit: BoxFit.fill,);

  static Widget loadingImageBuilder(ctx, o, t) => const Padding(
        padding: EdgeInsets.all(15.0),
        child: LoadingWidget(),
      );
}
