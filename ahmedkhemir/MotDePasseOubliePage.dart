import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'privacyPolicyPage.dart';
import 'termsPage.dart';

class MotDepasseOubliePage extends StatelessWidget {
  const MotDepasseOubliePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text(
          "Réinitialiser votre mot de passe",
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
                  decoration: InputDecoration(
                    labelText: "Entre votre E-mail",
                    labelStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 60, 120, 216),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implémenter la logique d'envoi d'e-mail
                    // Par exemple, vous pourriez appeler une fonction pour envoyer un e-mail de réinitialisation.
                    // Puis naviguer vers la page de connexion.
                    Navigator.pop(
                        context); // Retourner à la page de connexion après l'envoi
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Réinitialiser le mot de passe',
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
                    Navigator.pop(context); // Retourner à la page de connexion
                  },
                  child: const Text(
                    'Pas de compte ? inscrit vous',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 33, 172),
                    ),
                  ),
                ),
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
                              MaterialPageRoute(
                                  builder: (context) =>
                                      TermsAndConditionsPage()),
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
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicyPage()),
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
