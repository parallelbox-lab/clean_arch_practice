import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void snackBarNetwork({String? msg, GlobalKey<ScaffoldState>? scaffoldState}) {
  // Fluttertoast.showToast(
  //       msg: msg!,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.red,
  //       textColor: Colors.white,
  //       fontSize: 16.0
  //   );

  scaffoldState!.currentState!.showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      duration:const Duration(seconds: 3),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$msg"),
          // Icon(FontAwesome.exclamation_triangle)
        ],
      ),
    ),
  );
}
void snackBar({required String msg, required GlobalKey<ScaffoldState> scaffoldState}) {
  scaffoldState.currentState!.showSnackBar(
    SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(msg,style:const TextStyle(fontWeight: FontWeight.w500),),
          const CircularProgressIndicator(),
        ],
      ),
    ),
  );
}

void toast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}