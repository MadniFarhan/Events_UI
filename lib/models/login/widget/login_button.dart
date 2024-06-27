import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvp/bloc/login_bloc.dart';
import 'package:mvp/views/event.dart';

class LoginButton extends StatelessWidget{
  final formKey;
  LoginButton({required this.formKey});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc,LoginState>
      (buildWhen: (current,previous)=> false,
        builder: (context,state){
      return ElevatedButton(
          onPressed: () async {
            if(formKey.currentState!.validate()){
              Navigator.push(context,
                  MaterialPageRoute(builder:(context)=>events() ));
            }
          },
          child: Text('Login')
      );
    });

  }
  
}