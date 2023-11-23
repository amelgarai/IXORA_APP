import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:ixorapmp_app/pages/home.dart';
import 'package:ixorapmp_app/services/odoo_session_data.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Network {
  static login (BuildContext context,{
    String? email,
    String? password
  }) async {
    final dio = Dio();
  // Subscribe to session changes to store most recent one
  var idSession = OdooSessionData.getSessionId();
   SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('idSession', idSession.toString());
   final api = 'http://167.172.43.204:8069/pm_api/project/member';
    final data = {
      "jsonrpc": "2.0",
      "params": 
        {
        "db": "PMP",
        "username": email, 
        "password": password
        }
        };
    final response = await dio.post(api,
     data: data,
     options: Options(headers: {
      'Content-Type': 'application/json', 
       'X-Openerp-Session-Id': idSession
      //HEADERS
          }
    ));
    print(response);
     if (response.statusCode == 200) {
     Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
   print("success");
    } else {
      
      print("fail");
    }
    
   }
}