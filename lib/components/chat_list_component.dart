import 'package:flutter/material.dart';

class ChatlistPage extends StatefulWidget {
  const ChatlistPage({super.key});

  @override
  State<ChatlistPage> createState() => _ChatlistPageState();
}

class _ChatlistPageState extends State<ChatlistPage> {
  // Variável para armazenar o índice da tela atual
  int _selectedIndex = 0;

  // Lista de páginas que serão exibidas
  final List<Widget> _pages = [
    const Center(child: Text("Chat")),
    const Center(child: Text("Usuários")),
    const Center(child: Text("Perfil")),
  ];

  // Função que altera a tela com base no item selecionado no BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Exibe a página correspondente ao índice selecionado
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped, // Muda a tela ao tocar em um item
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: "Usuários",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
