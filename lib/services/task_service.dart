import 'package:flutter/material.dart';
import 'package:dio/dio.dart';




class TaskService {
   static getTask (BuildContext context, String sessionId) async {
  final dio = Dio();
  // Subscribe to session changes to store most recent one
  final api = ' http://167.172.43.204:8069/pm_api/dashboard/tasks/get_last_tasks';
    final data = {
      "jsonrpc": "2.0",
      "params": 
        {
      
        }
        };
    final response = await dio.post(api,
     data: data,
     options: Options(headers: {
      'Content-Type': 'application/json', 
       'X-Openerp-Session-Id': sessionId
      //HEADERS
          }
    ));
    print(response);
     if (response.statusCode == 200) {
     // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
     print(response.data);
   print("success");
    } else {
      
      print("fail");
    }
    
   }
}