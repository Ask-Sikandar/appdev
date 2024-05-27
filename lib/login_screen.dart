import 'package:appdev/ui/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appdev/Providers/auth_state.dart'; // Update with the correct path

class LoginPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    // Show snackbar if there is an error
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (authState.status == AuthStatus.authenticated) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LandingPage()),
        );
      } else if (authState.status == AuthStatus.error && authState.errorMessage != null) {
        print(authState.errorMessage);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(authState.errorMessage!)),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Google Sign-In with Riverpod'),
      ),
      body: Center(
        child: authState.status == AuthStatus.authenticating
            ? CircularProgressIndicator()
            : authState.status == AuthStatus.authenticated
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Signed in as ${authState.user?.displayName}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(authProvider.notifier).signOut();
              },
              child: Text('Sign Out'),
            ),
          ],
        )
            : ElevatedButton(
          onPressed: () {
            ref.read(authProvider.notifier).signInWithGoogle();
          },
          child: Text('Sign In with Google'),
        ),
      ),
    );
  }
}
