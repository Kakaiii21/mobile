import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: Color.fromRGBO(15, 29, 56, 1),
      appBar: AppBar(
        flexibleSpace: Container(
          //flexibleSpace para maging linear ung background na di naapektuhan ung mag text
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(15, 29, 56, 1),
                Color.fromRGBO(42, 82, 158, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),

        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // pang open ng drawer
            },
          ),
        ),
        title: Center(
          child: Text(
            'MOVIE REVIEW',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(color: Colors.white),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Search action
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(39, 59, 94, 1),
        child: ListView(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(color: Color.fromRGBO(39, 59, 94, 1)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Image.asset(
                      "assets/images/drawerCD.png",
                      height: 60,
                    ),
                  ),
                  SizedBox(width: 120),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.menu, color: Colors.black, size: 40),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.white24, thickness: 1, height: 0),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Color.fromRGBO(155, 155, 155, 1),
              ),
              title: const Text(
                'Home',
                style: TextStyle(color: Color.fromRGBO(155, 155, 155, 1)),
              ),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(0);
              },
            ),

            // Ung mga divider widgets ito ung mga lines
            Divider(color: Colors.white24, thickness: 1, height: 0),

            ListTile(
              leading: const Icon(
                Icons.movie,
                color: Color.fromRGBO(155, 155, 155, 1),
              ),
              title: const Text(
                'Movies',
                style: TextStyle(color: Color.fromRGBO(155, 155, 155, 1)),
              ),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
            ),
            Divider(color: Colors.white24, thickness: 1, height: 0),

            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Color.fromRGBO(155, 155, 155, 1),
              ),
              title: const Text(
                'Logout',
                style: TextStyle(color: Color.fromRGBO(155, 155, 155, 1)),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context); // Back to login
              },
            ),
            Divider(color: Colors.white24, thickness: 1, height: 0),
          ],
        ),
      ),

      //paddings para magalaw/position ung mga icons
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(
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
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Image.asset(
                    'assets/images/weather.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Image.asset(
                    'assets/images/notes.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Image.asset(
                    'assets/images/navButtons/movieActive.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Image.asset(
                    'assets/images/list.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Image.asset(
                    'assets/images/user.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
