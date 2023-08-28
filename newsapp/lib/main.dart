import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/firstscreen.dart';
import 'package:newsapp/fourthscreen.dart';
import 'package:newsapp/secondscreen.dart';
import 'package:newsapp/thirdscreen.dart';
 import 'package:newsapp/Data/Cubits/get_news_cubit.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MultiBlocProvider
      (
      providers: [
        BlocProvider<GetNewsCubit>(
          create: (BuildContext context) => GetNewsCubit(),
        ),
      ],
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        home: firstscreen(),
      ),
    );
  }
}

