
import 'package:flutter/material.dart';

class SelectUnitType extends StatelessWidget {
  const SelectUnitType({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const  EdgeInsets.only(right: 8 , top: 10),
      height: 25,
      width: 30,
      decoration: const BoxDecoration(
        color:  Color.fromARGB(233, 76, 73, 73),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child:  Center(child:  Text(text , style: const TextStyle(fontSize: 14),)),
    );
  }
}