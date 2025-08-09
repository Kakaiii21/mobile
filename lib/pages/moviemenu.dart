import 'package:flutter/material.dart';

class MovieMenuPage extends StatefulWidget {
  const MovieMenuPage({super.key});

  @override
  State<MovieMenuPage> createState() => _MovieMenuPageState();
}

class _MovieMenuPageState extends State<MovieMenuPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Cloud Page')),
    Center(child: Text('Notes Page')),
    Center(child: Text('Movies Page')),
    Center(child: Text('List Page')),
    Center(child: Text('Profile Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Menu'),
        backgroundColor: const Color.fromRGBO(15, 29, 56, 1),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.movie),
              title: const Text('Movies'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context); // Back to login
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar:
      Stack(
        alignment: Alignment.bottomCenter,
        children: [
        // Background image with circle
        Container(
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(

            image: AssetImage('assets/images/navbg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),

      BottomNavigationBar(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(15, 29, 56, 1),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/images/weather.png', width: 24, height: 24,), label: '', ),
          BottomNavigationBarItem(icon: Image.asset('assets/images/notes.png', width: 24, height: 24,), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/movie.png', width: 24, height: 24,), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/list.png', width: 24, height: 24,), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/user.png', width: 24, height: 24,), label: ''),
        ],
      ),
      ],
      ),
    );
  }
}
