import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// 跳转并清空之前任务栈所有Page
void pushAndRemovePage(BuildContext context, Widget routePage) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => routePage),
    (route) => route == null,
  );
}

//跳转加入当前任务栈
void pushNewPage(BuildContext context, Widget routePage) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => routePage));
}

//跳转加入当前任务栈(回传值回调)
void pushNewPageForResult(
    BuildContext context, Widget routePage, Function function) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => routePage))
      .then((data) {
    if (function != null) {
      function(data);
    }
  });
}

//跳转加入当前任务栈(👈右进左出👉动效)
void pushNewPageBack(BuildContext context, Widget routePage) {
  Navigator.of(context)
      .push(CupertinoPageRoute(builder: (context) => routePage));
}

//跳转加入当前任务栈(👈右进左出👉动效)
void pushNewPageBackForResult(
    BuildContext context, Widget routePage, Function function) {
  Navigator.of(context)
      .push(CupertinoPageRoute(builder: (context) => routePage))
      .then((data) {
    if (function != null) {
      function(data);
    }
  });
}

void popAndPushNewPage(BuildContext context, String routeName) {
  Navigator.popAndPushNamed(context, routeName);
}

//跳转并弹出上一个Page任务栈
void pushReplacement(BuildContext context, Widget routePage) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => routePage));
}

void pushReplacementName(BuildContext context, String routeName) {
  Navigator.pushReplacementNamed(context, routeName);
}

void popPage(BuildContext context) {
  Navigator.of(context).pop();
}
