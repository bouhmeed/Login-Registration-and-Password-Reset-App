import 'MotDePasseOubliePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'inscription.dart'; // Import the signup page
import 'termsPage.dart'; // Import the terms and conditions page
import 'privacyPolicyPage.dart'; // Import the privacy policy page

void main() => runApp(AhmedKhemir());

class AhmedKhemir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon Application",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConnectionPage(), // Set ConnectionPage as the home screen
    );
  }
}

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({Key? key}) : super(key: key);

  @override
  State<ConnectionPage> createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 3,
        title: const Text(
          "Connexion",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[800]!,
              Colors.blue[200]!,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 60, 120, 216),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    labelText: "Mot de passe",
                    labelStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 60, 120, 216),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),








                Align(
                  alignment: Alignment.centerRight,
                  child: 
TextButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MotDepasseOubliePage()),
    );
  },
  child: const Text(
    'Mot de passe oublié ?',
    style: TextStyle(color: Color.fromARGB(255, 40, 40, 214)),
  ),
),
                ),

















                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement login functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Se connecter',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InscriptionPage()),
                    );
                  },
                  child: const Text(
                    'Pas de compte ? Inscrivez-vous',
                    style: TextStyle(color: Color.fromARGB(255, 62, 31, 188)),
                  ),
                ),
                const SizedBox(height: 30),
                RichText(
                  text: TextSpan(
                    text: 'En utilisant cette application, vous acceptez nos ',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    children: [
                      TextSpan(
                        text: 'termes et conditions',
                        style: TextStyle(
                          color: Colors.blue[900],
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TermsAndConditionsPage()),
                            );
                          },
                      ),
                      TextSpan(
                        text: ' et notre ',
                      ),
                      TextSpan(
                        text: 'politique de confidentialité',
                        style: TextStyle(
                          color: Colors.blue[900],
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
                            );
                          },
                      ),
                      TextSpan(
                        text: '.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
