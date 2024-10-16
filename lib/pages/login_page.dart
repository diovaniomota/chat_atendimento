import 'package:chat_atendimento/components/my_button.dart';
import 'package:chat_atendimento/components/my_text_field.dart';
import 'package:chat_atendimento/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                const Text(
                  'bem-vindo de volta, você fez falta!',
                  style: TextStyle(
                    fontSize: 16,
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

                const SizedBox(height: 25),

                // Sign in button
                MyButton(onTap: () {}, text: 'Sign In'),

                const SizedBox(height: 50),

                // Not a member? Register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Não é um membro?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        // Navegar para a página de registro
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Registre-se agora',
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
