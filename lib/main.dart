// ignore_for_file: must_be_immutable, unnecessary_null_comparison

import 'package:account/Helper/add_prefix.dart';
import 'package:account/bloc/cubit/cubit/accont_cubit.dart';
import 'package:account/screen/home_screen.dart';
import 'package:account/screen/onBording.dart';
import 'package:account/screen/prefix.dart';
import 'package:account/shared_prefrence/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
 String code='#1E5C39';
  final Color color = 
   Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
 void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedpreferences=await SharedPreferences.getInstance();
  bool? onbording
  =await CacheHelper.getBool('onBording',sharedpreferences);
if(onbording == null){
    onbording=false;
   for(int i=0;i<prefixName.length;i++){
     await CacheHelper.putInt(prefixName[i],0,sharedpreferences);
    }
}
   for(int i=0;i<prefixName.length;i++){
  prefixPrice.add( await CacheHelper.getInt(prefixName[i],sharedpreferences));
}

 
  runApp(BlocProvider(
    create: (context) => AccontCubit()..prefixN.addAll(prefixPrice),
    child:  MyApp(onbording:
    onbording, )
  )
  );
}
 
class MyApp extends StatelessWidget {
  bool onbording;
   MyApp({super.key, 
required
this.onbording,
    });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo', 
        
        theme: ThemeData(
          primaryColor:  color,
          disabledColor: Color.fromARGB(103, 36, 124, 36),
         
        ),
        home:
        onbording?HomeScreen(): OnBording(),
         
      ),
    );
  }
}


