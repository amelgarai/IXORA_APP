import 'dart:io';
import 'package:odoo_rpc/odoo_rpc.dart';
class OdooSessionData {
static  sessionChanged(OdooSession sessionId) async {
 
  String data = sessionId.id;
   print('We got new session ID: ' + data);

  //return sessionId.id;
 
}


static Future<String> getSessionId() async{
   //////////////////////////////
   ///
   ///
   ///
   /// 
   /// /////

  var client = OdooClient("http://167.172.43.204:8069/");

  // Subscribe to session changes to store most recent one
  var subscription = client.sessionStream.listen(sessionChanged);
 
  try {
    final session = await client.authenticate('PMP', 'demo', '1234');
   print('Installed modules: \n' + session.id);
return session.id;
    // logout
   // await client.destroySession();
  } on OdooException catch (e) {
    print(e);
    subscription.cancel();
    client.close();
    exit(-1);
  }

  

  /////////////////////////////////
  ///
  ///
  ///
  ///
  ///

}
}