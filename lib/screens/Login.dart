import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              LoginContainer(currentWidth: currentWidth),
              const Spacer(),
              RichText(text: TextSpan(text: "Don't have an account? ")),
              const SizedBox(height: 16)
            ],
          ),
        ),
      ),
    );
  }
}

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    super.key,
    required this.currentWidth,
  });

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(20.0),
      width: currentWidth <= 400 ? currentWidth : 400,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        border: Border.all(color: Theme.of(context).colorScheme.tertiary),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Log in",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Email",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(8))),
                hintText: 'example@gmail.com',
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                hintText: '',
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: currentWidth <= 400 ? currentWidth : 400,
              child: FilledButton(
                style: const ButtonStyle(
                  textStyle: WidgetStatePropertyAll(TextStyle(
                    fontSize: 16
                  )),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
                ),
                onPressed: () {},
                child: const Text('Log in'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
