import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text(
          "Politique de Confidentialité",
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
                Text(
                  "Politique de Confidentialité ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                 Text(
                  '''Cette politique de confidentialité explique comment nous collectons, utilisons et protégeons vos informations personnelles lorsque vous utilisez notre application.

1. Collecte d'informations : Nous collectons des informations personnelles que vous nous fournissez directement, telles que votre nom et votre adresse e-mail.

2. Utilisation des informations : Vos informations sont utilisées pour fournir et améliorer nos services. Nous ne partagerons pas vos informations avec des tiers sans votre consentement.

3. Sécurité des informations : Nous mettons en place des mesures de sécurité pour protéger vos données contre tout accès non autorisé.

4. Modifications : Nous nous réservons le droit de mettre à jour cette politique de confidentialité à tout moment.''',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                 SizedBox(height: 40),
                // Centered button at the end
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Navigation vers la page précédente
                    },
                    child: Text(
                      "Accepter et continuer",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
