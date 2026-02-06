import 'package:flutter/material.dart';
import 'package:slice_app/core/nerwork/dio_helper.dart';
import 'package:slice_app/core/nerwork/endpoints.dart';
import 'package:slice_app/core/nerwork/local_services.dart';
import 'package:slice_app/feature/register/data/models/register_class.dart';

class RegisterRepo {


  
    

static register (RegisterClass registerModel)async{
  try{
    final Response=await DioHelper.postData(url: Endpoints.register,data:registerModel.toMap() ) ;
      if(Response.statusCode==201){
        debugPrint(Response.data["data"]["token"]);
        await LocalServices.prefs?.setString("userToken", Response.data["data"]["token"]);
        return Response;
      }else{
        return Response.data["massege"];
        }


  }catch(e){
    return "please login correctly$e";
  }
    }
      }