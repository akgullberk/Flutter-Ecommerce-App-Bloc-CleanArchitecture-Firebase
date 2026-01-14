import 'package:ecommerceapp/common/bloc/button/button_state.dart';
import 'package:ecommerceapp/common/bloc/button/button_state_cubit.dart';
import 'package:ecommerceapp/common/helper/navigator/app_navigator.dart';
import 'package:ecommerceapp/common/widgets/appbar/app_bar.dart';
import 'package:ecommerceapp/common/widgets/button/basic_reactive_button.dart';
import 'package:ecommerceapp/domain/auth/usecases/send_password_reset_email.dart';
import 'package:ecommerceapp/presentation/auth/pages/password_reset_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final TextEditingController _emailCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: BlocProvider(
        create: (context) => ButtonStateCubit(),
        child: BlocProvider(
          create: (context) => ButtonStateCubit(),
          child: BlocListener<ButtonStateCubit, ButtonState>(
            listener: (context, state) {
              if (state is ButtonFailureState) {
                var snackbar = SnackBar(
                  content: Text(state.errorMessage),
                  behavior: SnackBarBehavior.floating,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }
              if (state is ButtonSuccessState) {
                AppNavigator.push(context, PasswordResetEmailPage());
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _signinText(context),
                  SizedBox(height: 20),
                  _emailField(context),
                  SizedBox(height: 20),
                  _continueButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return Text(
      "Forgot Password",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _emailCon,
      decoration: InputDecoration(hintText: "Enter Email"),
    );
  }

  Widget _continueButton() {
    return Builder(
      builder: (context) {
        return BasicReactiveButton(
          onPressed: () {
            context.read<ButtonStateCubit>().execute(
              usecase: SendPasswordResetEmailUseCase(),
              params: _emailCon.text,
            );
          },
          title: "Continue",
        );
      },
    );
  }
}
