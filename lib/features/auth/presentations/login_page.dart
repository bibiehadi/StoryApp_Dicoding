import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:story_app/features/auth/bloc/auth_bloc.dart';
import 'package:story_app/features/auth/data/models/request/login_request_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isObsecured = true;
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is LoginFailed) {
            context.pop();
            print('failed: ${state.message}');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                duration: const Duration(seconds: 3),
              ),
            );
          }

          if (state is LoginSuccess) {
            print('success');
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.responseModel.message!),
              ),
            );
            context.goNamed('home');
          }

          if (state is LoginLoading) {
            showDialog(
              // The user CANNOT close this dialog  by pressing outsite it
              barrierDismissible: false,
              context: context,
              builder: (_) {
                return const Dialog(
                  // The background color
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // The loading indicator
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 15,
                        ),
                        // Some text
                        Text('Loading...')
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
                child: Text(
                  "Story App",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(32.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          hintText: "Email",
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: isObsecured,
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObsecured = !isObsecured;
                              });
                            },
                            icon: isObsecured
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          onLogin();
                        },
                        child: const Text(
                          'Login',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            context.push('/register');
                          },
                          child: const Text('register')),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onLogin() {
    final requestModel = LoginRequestModel(
      email: _emailController.text,
      password: _passwordController.text,
    );
    BlocProvider.of<AuthBloc>(context).add(
      LoginAuthEvent(requestModel: requestModel),
    );
  }
}
