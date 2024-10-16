import 'package:chat_atendimento/components/my_button.dart';
import 'package:chat_atendimento/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // Logo
                Icon(
                  Icons.message,
                  size: 80,
                  color: Colors.green[800],
                ),

                const SizedBox(height: 50),

                // Welcome back message
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Center(
                    child: Text(
                      'bem-vindo, Ficaremos felizes em ter você conosco!',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Email textfield
                MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false),

                const SizedBox(height: 10),

                // Password textfield
                MyTextField(
                    controller: passwordController,
                    hintText: 'Senha',
                    obscureText: true),

                const SizedBox(height: 10),

                //confirm password

                MyTextField(
                    controller: passwordController,
                    hintText: 'Confirmar Senha',
                    obscureText: true),

                const SizedBox(height: 25),

                // Sign in button
                MyButton(onTap: () {}, text: 'Criar conta'),

                const SizedBox(height: 50),

                // Not a member? Register now
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ja é um membro?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Fazer Login',
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
