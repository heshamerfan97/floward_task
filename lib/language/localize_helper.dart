import 'package:flutter/cupertino.dart';
import 'package:floward_task/language/translate.dart';


extension LocalizeHelper on String{
  String localize(BuildContext context) => Translate.of(context)?.translate(this)?? this;
}