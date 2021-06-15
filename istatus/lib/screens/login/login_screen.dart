import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:istatus/components/error_box.dart';
import 'package:istatus/screens/signup/signup_screen.dart';
import 'package:istatus/stores/login_store.dart';

class LoginScreen extends StatelessWidget {

  final LoginStore loginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Entrar'),
        centerTitle: true,

      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,

                children: [
                  Observer(builder: (_){
                    return ErrorBox(
                      message: loginStore.error,
                    );

                  }),
                  Text(
                    'Acessar com E-mail:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[900]
                    ),
              ),
                    Padding(
                      padding: EdgeInsets.only(left: 3 , bottom:4 , top: 8, ),
                      child: Text(
                        'E-mail',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  Observer(builder: (_) {
                    return TextField(
                      enabled: !loginStore.loading,
                      cursorColor: Colors.green,

                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        isDense: true,
                        errorText: loginStore.emailError,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: loginStore.setEmail,
                    );

                  }),
                  const SizedBox(height: 16,),
                    Padding(
                      padding: EdgeInsets.only(left: 3 , bottom:4 , top: 8, ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Senha',
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                          GestureDetector(
                            child: Text(
                              'Esqueceu sua senha?',
                              style: TextStyle(

                                decoration: TextDecoration.underline,
                                color: Colors.red[900]
                              ),
                            ),
                            onTap: (){

                            },
                          ),
                        ],
                      ),
                    ),
                  Observer(builder: (_){
                    return TextField(
                      enabled: !loginStore.loading,
                      cursorColor: Colors.green,

                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          isDense: true,
                          errorText: loginStore.passwordError
                      ),
                      obscureText: true,
                      onChanged: loginStore.setPassword,
                    );
                  }),
                  Observer(builder: (_) {
                    return Container(
                      height: 40,
                      margin: EdgeInsets.only(top: 20, bottom: 12,),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.green,
                        child: loginStore.loading ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),)
                            : Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        onPressed: loginStore.loginPressed ,
                      ),
                    );
                  }),
                  Divider(
                    color: Colors.black ,
                  ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Não tem uma conta?',
                            style: TextStyle(fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (_) =>
                              SignUpScreen()));
                            },
                            child: Text(
                              'Cadastre-se',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.red,
                                fontSize:16 ,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
