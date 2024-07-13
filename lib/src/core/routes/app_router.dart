import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:rbc_control/src/feature/auth/presentation/pages/forget_password_page.dart";
import "package:rbc_control/src/feature/auth/presentation/pages/forget_password_reset_page.dart";
import "package:rbc_control/src/feature/auth/presentation/pages/login_page.dart";
import "package:rbc_control/src/feature/auth/presentation/pages/register_page.dart";
import "package:rbc_control/src/feature/auth/presentation/pages/set_new_password_page.dart";
import "package:rbc_control/src/feature/onboarding/presentation/pages/onboarding_page.dart";
import "package:rbc_control/src/feature/welcome/presentation/otp_verification_page.dart";
import "package:rbc_control/src/feature/welcome/presentation/welcome_mobile_page.dart";
import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.onboarding,
    routes: <RouteBase>[
      /// Welcome
      GoRoute(
        path: AppRouteName.welcomeMobile,
        builder: (BuildContext context, GoRouterState state) =>
            const WelcomeMobilePage(),
        routes: [
          GoRoute(
            path: AppRouteName.otpVerification,
            builder: (BuildContext context, GoRouterState state) =>
                const OtpVerificationPage(),
          ),
        ],
      ),

      /// Onboarding
      GoRoute(
        path: AppRouteName.onboarding,
        builder: (BuildContext context, GoRouterState state) =>
            const OnboardingPage(),
      ),

      GoRoute(
        path: AppRouteName.register,
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterPage(),
        routes: [
          GoRoute(
            path: AppRouteName.login,
            builder: (BuildContext context, GoRouterState state) =>
                const LoginPage(),
            routes: [
              GoRoute(
                path: AppRouteName.forgetPassword,
                builder: (BuildContext context, GoRouterState state) =>
                    const ForgetPasswordPage(),
                routes: [
                  GoRoute(
                    path: AppRouteName.forgetPasswordResetEmail,
                    builder: (BuildContext context, GoRouterState state) =>
                        const ForgetPasswordResetPage(),
                    routes: [
                      GoRoute(
                        path: AppRouteName.setANewPassword,
                        builder: (BuildContext context, GoRouterState state) =>
                            const SetNewPasswordPage(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
