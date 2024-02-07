import 'package:catapp/cubit/authentication_states.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class AuthCubit extends Cubit<AuthenticationState> {
  String baseUrl = 'https://food-api-omega.vercel.app/api/v1/user';

  AuthCubit() : super(AuthInitialState());

  signUp({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    try {
      emit(AuthLoadedState());
      Response response = await Dio().post('$baseUrl/signup', data:FormData.fromMap(
         {
        'name': name,
        'phone': email,
        'email': phone,
        'password': password,
      }
      ));
      emit(AuthSuccessState());
      print(response);
    } catch (e) {
      print(e.toString());
      emit(AuthFailureState(errorMessage: e.toString()));
    }
  }
  Login({
    required TextEditingController email,
    required TextEditingController password,
  }) async {
    try {
      emit(AuthLoadedState());
      Response response = await Dio().post('$baseUrl/signup', data:FormData.fromMap(
         {
        'phone': email.text,
        'password': password.text,
      }
      ));
      emit(AuthSuccessState());
      print(response);
    } catch (e) {
      print(e.toString());
      emit(AuthFailureState(errorMessage: e.toString()));
    }
  }
}