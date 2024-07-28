// ignore_for_file: must_be_immutable

import 'package:account/Helper/add_prefix.dart';
import 'package:account/Widget/component.dart';
import 'package:account/bloc/cubit/cubit/accont_cubit.dart';
import 'package:flutter/material.dart';

 List<int?> prefixPrice=[];

class Prefix extends StatefulWidget {
   Prefix({super.key});
  @override
  State<Prefix> createState() => _PrefixState();
}
  
class _PrefixState extends State<Prefix> {
 var controller;
  


  @override
  void initState() {
    super.initState();
    controller=TextEditingController();
    AccontCubit.get(context).prefixN.addAll(prefixPrice);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
     backgroundColor: Theme.of(context).primaryColor,

        title: Text('الإكسسوارات',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Group(
          controller: controller,
          name: prefixName,
          value: prefixPrice,
        ),
      ),
    );
  }
}





