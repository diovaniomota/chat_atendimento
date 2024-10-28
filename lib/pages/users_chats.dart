import 'package:flutter/material.dart';

class ChatUsersPage extends StatefulWidget {
  const ChatUsersPage({super.key});

  @override
  State<ChatUsersPage> createState() => _ChatUsersPageState();
}

class _ChatUsersPageState extends State<ChatUsersPage> {
  // Lista estática de usuários e conversas simuladas
  final List<Map<String, String>> _conversas = [
    {
      'usuarioId': '1',
      'nome': 'Alice',
      'ultimaMensagem': 'Oi, como você está?',
      'fotoPerfil': 'https://via.placeholder.com/150'
    },
    {
      'usuarioId': '2',
      'nome': 'Bob',
      'ultimaMensagem': 'Vamos nos encontrar amanhã?',
      'fotoPerfil': 'https://via.placeholder.com/150'
    },
    {
      'usuarioId': '3',
      'nome': 'Charlie',
      'ultimaMensagem': 'Reunião marcada para as 10h.',
      'fotoPerfil': 'https://via.placeholder.com/150'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversas'),
      ),
      body: ListView.builder(
        itemCount: _conversas.length,
        itemBuilder: (context, index) {
          final conversa = _conversas[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(conversa['fotoPerfil'] ?? ''),
            ),
            title: Text(conversa['nome'] ?? 'Usuário'),
            subtitle: Text(conversa['ultimaMensagem'] ?? ''),
            onTap: () {
              // Ao tocar no usuário, vai para a tela de chat com o usuário selecionado
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(userName: conversa['nome']!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Exemplo de tela de chat individual
class ChatScreen extends StatelessWidget {
  final String userName;

  const ChatScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
      ),
      body: Center(
        child: Text('Chat com $userName'),
      ),
    );
  }
}
