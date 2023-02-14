import 'package:flutter/material.dart';
import 'package:learning_flutter/src/theme/theme_1.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController cnjpController = TextEditingController();
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: Form(
        key: _formkey,
        child: Scaffold(
          body: Center(
            child: SizedBox(
              width: 250,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Dados Cadastrais',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    TextFormField(
                      controller: cnjpController,
                      validator: (String? value) {
                        if (valueValidator(value)) {
                          return 'Insira o CNPJ';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          labelText: 'CNPJ', border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      controller: loginController,
                      validator: (String? value) {
                        if (valueValidator(value)) {
                          return 'Insira o login';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          labelText: 'Login', border: OutlineInputBorder()),
                    ),
                    TextFormField(
                      controller: passwordController,
                      validator: (String? value) {
                        if (valueValidator(value)) {
                          return 'Insira a senha';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          labelText: 'Senha', border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            print(cnjpController.text);
                            print(loginController.text);
                            print(passwordController.text);
                            // TaskInherited.of(widget.taskContext).newTask(
                            //     nameController.text,
                            //     imagemController.text,
                            //     int.parse(dificuldadeController.text));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Efetuando cadastro')),
                            );
                            Navigator.pop(context);
                          }
                        },
                        child: const Text('Confirmar',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
