import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rbc_control/core/utils/utils.dart';

final class AuthService {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  static Future<void> sendEmailVerification(BuildContext context) async {
    User? user = auth.currentUser;
    if (user != null && !user.emailVerified) {
      try {
        await user.sendEmailVerification();
        if (context.mounted) {
          Utils.fireSnackBar(context,message: 'Verification email sent\nPlease confirm your email through the link sent to your inbox.', backgroundColor: Colors.green);
        }
      } catch (e) {
        if (context.mounted) {
          Utils.fireSnackBar(context, message: '$e', backgroundColor: Colors.red);
        }
      }
    }
  }

  static Future<User?> signUp(
    BuildContext context, {
    required String fullName,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        await userCredential.user!.updateDisplayName(fullName);

        if (context.mounted) {
          await sendEmailVerification(context);
        }

        bool isVerified = false;
        final DateTime endTime = DateTime.now().add(const Duration(minutes: 1));  // Waiting for email verification, but no more than 1 minutes
        
        while (!isVerified && DateTime.now().isBefore(endTime)) {
          await Future.delayed(const Duration(seconds: 3));
          await auth.signInWithEmailAndPassword(email: email, password: password);
          isVerified = auth.currentUser?.emailVerified ?? false;
          if (isVerified) {
            break;
          }
        }

        if (isVerified) {
          if (context.mounted) {
            Utils.fireSnackBar(context, message: 'Email confirmed. Registration completed.', backgroundColor: Colors.green);
          }
        } else {
          if (context.mounted) {
            Utils.fireSnackBar(context, message: 'Confirmation time expired. Please confirm your email and try again.', backgroundColor: Colors.red);
          }
          await auth.currentUser?.delete();
        }
        return auth.currentUser;
      } else {
        if (context.mounted) {
          Utils.fireSnackBar(context, message: 'User creation failed. Please try again.', backgroundColor: Colors.red);
        }
        return null;
      }
    } catch (e) {
      if (context.mounted) {
        Utils.fireSnackBar(context, message: '$e', backgroundColor: Colors.red);
      }
      return null;
    }
  }

  static Future<User?> signIn(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        return userCredential.user;
      } else {
        return null;
      }
    } catch (e) {
      if (context.mounted) {
        Utils.fireSnackBar(context, message: '$e', backgroundColor: Colors.red);
      }
      return null;
    }
  }

  static Future<void> deleteAccount() async {
    await auth.currentUser?.delete();
  }

  static Future<void> logOut() async {
    await auth.signOut();
  }
}
