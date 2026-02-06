import 'package:flutter/material.dart';
import 'package:slice_app/core/nerwork/dio_helper.dart';
import 'package:slice_app/core/nerwork/endpoints.dart';
import 'package:slice_app/core/nerwork/local_services.dart';

class LoginRepo {

static Login ({required String email,required String password})async{
  try{
    final Response=await DioHelper.postData(url: Endpoints.login,data: {
    "email":email,
    "password":password,
  });
  if (Response.statusCode==200){
    debugPrint(Response.data["data"]["token"]);
     await LocalServices.prefs?.setString("userToken", Response.data["data"]["token"]);
    return Response;
  }else{
    return Response.data["massege"];
  }
  }
  catch(e){
    return "please login correctly$e";
  }
}





}



