import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:istatus/screens/base/base_screen.dart';
import 'package:istatus/stores/page_store.dart';
import 'package:istatus/stores/user_manager_store.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'dart:async';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());
}
/*isso faz ser acessado em qualquer local*/
  void setupLocators(){
   GetIt.I.registerSingleton(PageStore());
   GetIt.I.registerSingleton(UserManagerStore());

  }


  Future<void> initializeParse() async {
  await Parse().initialize(
    'OVS8Vnmfn2cV3rMgOxPEaPHTWaGsRMMaVk3XFpZ6',
    'https://parseapi.back4app.com/',
    clientKey: 'hDjb05f0oTZgjNH6mGSzO7tIs89vxAFE8icsUrk6',
    autoSendSessionId: true,
    debug: true,);
}


 /* criando uma categoria
 final category = ParseObject('Categories')
  ..set('Title', 'Camisetas')
  ..set('Position', 3);

 final response = await category.save();

 print (response.success);
*/

 /* quando quiser salvar uma nova posição para uma categoria já existente
 final category = ParseObject('Categories')
  ..objectId = 'YnGn68bPXc'
  ..set('Position', 1);

  final response = await category.save();

  print (response.success);
*/

  /* quando quiser deletar uma categoria
  final category = ParseObject('Categories')
  ..objectId = 'YnGn68bPXc';

  category.delete();*/

  /* quando quiser printar resultados de um objeto
  final response = await ParseObject('Categories').getObject('epnMwb4VXQ');
  if(response.success){
    print(response.result);
    */

  /*quando quiser saber sobre um objeto
  final response = await ParseObject('Categories').getAll();
  if (response.success) {for(final object in response.result) {print(object);}}
*/

  /*final query = QueryBuilder(ParseObject('Categories'));

  query.whereContains('Title', 'blusas');
  query.whereEqualTo('Position', '2');

  final response = await query.query();

  if(response.success){print(response.result);}
*/





class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iSTATUS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.green,
        appBarTheme: AppBarTheme(
          elevation: 0),
      ),
      home: BaseScreen(),
    );
  }
}
