import 'package:bloc_prueba/blocs/home_bloc/home_bloc.dart';
import 'package:bloc_prueba/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider( create: ( context ) => HomeBloc() ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        title: 'BLOC app prueba',
        debugShowCheckedModeBanner: false,
        home: const  HomePage()
      ),
    );
  }
}
