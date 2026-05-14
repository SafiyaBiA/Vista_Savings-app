import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "My Account",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.blueAccent.withOpacity(0.1),
                backgroundImage: const AssetImage('lib/images/picture.png'),
                onBackgroundImageError: (exception, stackTrace) {
                  // Fallback if image is missing
                },
                child: const Icon(Icons.person, size: 80, color: Colors.blueAccent),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
              child: Column(
                children: [
                  Text(
                    user?.displayName ?? "User Name",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    user?.email ?? "email@example.com",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
            child: Column(
              children: [
                _buildAccountOption(Icons.person, "My Account"),
                const Divider(),
                _buildAccountOption(Icons.payment_outlined, "My Banking Details"),
                const Divider(),
                _buildAccountOption(Icons.loyalty, "My Subscription"),
                const Divider(),
                _buildAccountOption(Icons.group, "Referrer Program"),
                const Divider(),
                _buildAccountOption(Icons.question_answer, "FAQs", trailing: Icons.question_mark),
                const Divider(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async {
                  await AuthService().signout(context: context);
                },
                child: const Text(
                  "Log Out",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildAccountOption(IconData icon, String title, {IconData trailing = Icons.arrow_forward_ios}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
        color: Colors.blueAccent,
      ),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      trailing: Icon(trailing, size: 18),
      onTap: () {
        // Implement navigation or action
      },
    );
  }
}