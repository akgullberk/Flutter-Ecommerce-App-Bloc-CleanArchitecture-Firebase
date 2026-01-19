import 'package:ecommerceapp/core/configs/assets/app_vectors.dart';
import 'package:ecommerceapp/core/configs/theme/app_colors.dart';
import 'package:ecommerceapp/presentation/auth/pages/signin.dart';
import 'package:ecommerceapp/presentation/home/pages/home.dart';
import 'package:ecommerceapp/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecommerceapp/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SigninPage()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(child: SvgPicture.asset(AppVectors.appLogo)),
      ),
    );
  }
}
