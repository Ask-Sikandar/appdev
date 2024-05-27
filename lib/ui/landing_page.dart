import 'package:appdev/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/auth_state.dart';

class LandingPage extends ConsumerStatefulWidget {
  const LandingPage({super.key});

  @override
  ConsumerState createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    // Automatically redirect to the login page when unauthenticated
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (authState.status == AuthStatus.unauthenticated) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage(),
        ));
      } else if (authState.status == AuthStatus.error && authState.errorMessage != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(authState.errorMessage!)),
        );
      }
    });
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            ref.read(authProvider.notifier).signOut();
          }, icon: const Icon(Icons.logout))
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Hello'),
          )
        ],
      ),
    );
  }
}
