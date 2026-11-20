import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV Miriam',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const LoginPage(),
    );
  }
}

// ============ PAGE 1 : CONNEXION ============
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CV Miriam - Connexion')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 100, color: Colors.pink),
            const SizedBox(height: 20),
            const Text('Bienvenue Miriam !',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const TextField(
                decoration: InputDecoration(
                    labelText: 'Nom', border: OutlineInputBorder())),
            const SizedBox(height: 10),
            const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    border: OutlineInputBorder())),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
              },
              child: const Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }
}

// ============ LES 4 PAGES APRES CONNEXION ============
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  final List<Widget> _pages = const [
    ProfilPage(),
    FormationPage(),
    FamillePage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Formation'),
          BottomNavigationBarItem(icon: Icon(Icons.family_restroom), label: 'Famille'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact'),
        ],
      ),
    );
  }
}

// ============ PAGE 2 : PROFIL ============
class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2 : Mon Profil')),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Icon(Icons.account_circle,
                    size: 120, color: Colors.pink)),
            SizedBox(height: 20),
            Center(
                child: Text('JEJE ZAWADI MIRIAM',
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold))),
            SizedBox(height: 10),
            Center(child: Text('ÉTUDIANTE À L\'ISIG GOMA')),
            SizedBox(height: 20),
            Text('Nom : JEJE'),
            Text('Post-nom : ZAWADI'),
            Text('Prénom : MIRIAM'),
            Text('École : ISIG GOMA'),
          ],
        ),
      ),
    );
  }
}

// ============ PAGE 3 : FORMATION ============
class FormationPage extends StatelessWidget {
  const FormationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3 : Formation')),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.school, size: 80, color: Colors.pink),
            SizedBox(height: 20),
            Text('FORMATION EN INFORMATIQUE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('APPLIQUÉE ET GESTION DES ENTREPRISES'),
            SizedBox(height: 20),
            Text('Établissement : ISIG GOMA'),
            Text('Domaine : Informatique Appliquée'),
            Text('Option : Gestion des Entreprises'),
          ],
        ),
      ),
    );
  }
}

// ============ PAGE 4 : FAMILLE - en fait on met Famille en page 3 dans le menu ============
class FamillePage extends StatelessWidget {
  const FamillePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ma Famille')),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.family_restroom, size: 80, color: Colors.pink),
            SizedBox(height: 20),
            Text('Papa : DAVID AJUAMUNGU',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Maman : FEZA JEJE',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Les enfants :'),
            Text('1. L\'aînée : Moi, MIRIAM'),
            Text('2. Le second : MUGOLI YUNGA'),
            Text('3. Le cadet : BARAKA YUNGA'),
          ],
        ),
      ),
    );
  }
}

// ============ PAGE 4 : CONTACT ============
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.phone, size: 80, color: Colors.pink),
            SizedBox(height: 20),
            Text('NUMÉRO : 0992767125'),
            SizedBox(height: 10),
            Text('Email : miriamzawadi194@gmail.com'),
            SizedBox(height: 20),
            Text('Merci de visiter mon CV !'),
          ],
        ),
      ),
    );
  }
}

Fais les images en te basant sur ces codes stp
