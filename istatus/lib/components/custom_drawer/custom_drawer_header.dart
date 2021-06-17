import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:istatus/screens/login/login_screen.dart';
import 'package:istatus/stores/page_store.dart';
import 'package:istatus/stores/user_manager_store.dart';


class CustomDrawerHeader extends StatelessWidget {

   final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

  @override
  Widget build(BuildContext context) {
/* esse GestureDetector faz com que a parte de cima onde fica o nome natanael e o email seja enviado para a página minha conta */
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
        if (userManagerStore.isLoggedIn){
        GetIt.I<PageStore>().setPage(4);
        } else {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => LoginScreen()));
        }

      },
      child: Container(
        color: Colors.green.shade700,
        height: 95,
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Row(
          children: [
            Icon(Icons.person, color: Colors.white, size: 35,),
            const SizedBox(width: 20 ,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userManagerStore.isLoggedIn
                    ? userManagerStore.user.name
                    : 'Acesse sua conta agora',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    userManagerStore.isLoggedIn
                    ? userManagerStore.user.email
                    :'Clique aqui',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,)),
                ],
              ),
        ),
      ],
      ),
      ),
    );
  }
}


