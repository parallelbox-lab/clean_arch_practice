import "package:flutter/material.dart";

class Tut extends StatelessWidget {
  const Tut({ Key? key,this.devotional }) : super(key: key);
  final Function? devotional;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: devotional as void Function()?,
      child:const Text("")
    );
  }
}