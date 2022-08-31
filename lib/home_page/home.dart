import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'package:bloc_prueba/blocs/home_bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  //TODO: TERMINAR DE ESTUDIAR BLOC
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                height: 400,
                child: Image.network('https://pbs.twimg.com/profile_images/988272404915875840/lE7ZkrO-_400x400.jpg')),
              BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                return state.mePicanLosCocos
                    ? const Text('Me pican LOS COCOS')
                    : const Text('NO me pican LOS COCOS');
              }),
              MaterialButton(
                onPressed: () {
                  BlocProvider.of<HomeBloc>(context).
                    add(RascarCocosEvent(false));
                },
                color: Colors.blue,
                child: const Text('Rascar los cocos XD'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
