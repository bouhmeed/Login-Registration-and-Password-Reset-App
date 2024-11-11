import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text(
          "Termes et Conditions",
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
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Termes et Conditions",  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    SizedBox(height: 10),
                const Text(
                  '''Bienvenue sur notre application. En utilisant cette application, vous acceptez de respecter et d'être lié par les termes et conditions suivants. Veuillez les lire attentivement.

1. Utilisation de l'application : Vous acceptez d'utiliser cette application uniquement à des fins légales et conformément à ces termes et conditions.

2. Confidentialité : Vos informations personnelles sont protégées par notre politique de confidentialité.

3. Propriété intellectuelle : Tout le contenu de cette application est protégé par les lois sur le droit d'auteur et la propriété intellectuelle.

4. Modifications : Nous nous réservons le droit de modifier ces termes et conditions à tout moment.''',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 20),
                // Bouton pour revenir en arrière
               Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Navigation vers la page précédente
                    },
                    child:  Text("Accepter et continuer" , style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[700], // Couleur du bouton
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
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
