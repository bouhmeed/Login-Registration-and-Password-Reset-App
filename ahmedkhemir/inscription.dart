import 'privacyPolicyPage.dart';
import 'termsPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({Key? key}) : super(key: key);

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text(
          "Inscription",
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
                    labelText: "Nom",
                    labelStyle: const TextStyle(color: Colors.white),
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
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Colors.white),
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




                const SizedBox(height: 16),



                 TextField(
                  style: const TextStyle(color: Colors.white),
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    labelText: "Confirmer le Mot de passe",
                    labelStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(
                      Icons.lock,
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



                
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement signup functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Créer un compte',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton (
                  onPressed: () {
                    Navigator.pop(context); // Go back to the login page
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    ),
                  child: const Text(
                    'Déjà un compte ? Connectez-vous',
style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),                  ),
                ),


                
                 const SizedBox(height: 20),

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
