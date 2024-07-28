// ignore_for_file: must_be_immutable

import 'package:account/screen/bussines.dart';
import 'package:account/screen/settings.dart';
import 'package:flutter/material.dart';

import 'prefix.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
 
 
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Container(
         alignment: Alignment.center,
         width:300,
           height:600,
           decoration: BoxDecoration(
           color: Theme.of(context).disabledColor,
           borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
           topRight: Radius.circular(25))
           ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Item(text: 'الإكسسوارات',
                     icon: Icons.carpenter,
                     function:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Prefix()));
               } ),
                     Item(text: 'التكلفة',
                     icon: Icons.attach_money,
                     function:(){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bussines()));
                     }
                     ),
                    
                     Item(text: 'المطابخ',
                     icon: Icons.check_box_outline_blank,
                     
                     function:(){
                       Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>
                        Settings(),
                        
                        ),
                        
                        );
                     }
                     ),
                   ],
               ),
          ),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  late String text;
  late IconData icon;
  late VoidCallback function;
   Item({
    required this.text,
    required this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        style:ListTileStyle.list ,
        leading: Text(text,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,
          color:Theme.of(context).primaryColor,
        ),
      ),
      trailing: Icon(icon,
      size: 35,
      color: Theme.of(context).primaryColor,
      ),
      onTap:function,
        ),
    );
  }
}