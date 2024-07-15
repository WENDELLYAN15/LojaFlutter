import "package:flutter/material.dart";
import "package:minimalstore2/components/my_text_field.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

//controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        AppBar: AppBar(
      title: const Text("Login"),
      backgroundColor: Colors.transparent,
      elevation: 0,)
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                
                //logo
                Icon(Icon.lock, size: 100);

                SizedBox(height: 50),

                Text("Ah que bom que você voltou!",
                atyle: TextStyle(
                  color: Theme.of.(context).ColorScheme.inversePeimary,
                  fontSize: 16
                )),
                const SizedBox(height: 25),
                
                //campo do usuario
                MyTextField(
                 controller: emailController,
                 hintText:"E-mail" , 
                 obscureText: false ),
                 const SizedBox(height: 10),
                 
                 //campo de senha
                 MyTextField(
                 controller: passwordController,
                 hintText: "senha",
                 obscureText: true),
                 const SizedBox(height: 10),
                 Padding(
                  padding:EdgeInsets.symmetric(horizontal: 25),
                  child:Row(
                  MainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Esqueceu a senha?",
                        style: TextStyle(colors: Colors.grey.shade600))
                  ],
                 ))

              ])))));
  }
}
