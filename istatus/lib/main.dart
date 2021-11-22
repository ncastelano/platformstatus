

import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:istatus/screens/telas_iniciais/tela_de_login.dart';
//import 'package:istatus/carregando.dart';
//import 'package:istatus/mensagem_de_error.dart';

/*Future<void> */main() /*async*/{
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // criando e inicializando
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

//inicializando o firebase



  //final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return        /*FutureBuilder(
      // inicializando o flutter fire
      future: _initialization,
      builder: (context, snapshot) {
        // checkar os erros
        if (snapshot.hasError) {
          return MensagemdeError();
        }

        // mostrar o aplicativo
        if (snapshot.connectionState == ConnectionState.done) {
          return*/
            MaterialApp(
            theme: ThemeData(
                brightness: Brightness.dark,
              primaryColor: Colors.pink,
            ),
            debugShowCheckedModeBanner: false,
              home: TeladeLogin(),
            
          );
        }

        /* // retornar o loading
        return Carregando();
      },
    );
  }     */
}