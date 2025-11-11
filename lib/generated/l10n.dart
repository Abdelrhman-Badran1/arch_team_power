// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Forgot my password`
  String get forgot_password_appbar_title {
    return Intl.message(
      'Forgot my password',
      name: 'forgot_password_appbar_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get forgot_password_text_field_hint {
    return Intl.message(
      'Enter your email',
      name: 'forgot_password_text_field_hint',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get forgot_password_text_field_title {
    return Intl.message(
      'Email',
      name: 'forgot_password_text_field_title',
      desc: '',
      args: [],
    );
  }

  /// `Send code`
  String get send_code {
    return Intl.message('Send code', name: 'send_code', desc: '', args: []);
  }

  /// `New password`
  String get new_password {
    return Intl.message(
      'New password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get enter_new_password {
    return Intl.message(
      'Enter new password',
      name: 'enter_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirm_password {
    return Intl.message(
      'Confirm password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get change_password {
    return Intl.message(
      'Change password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Code verification`
  String get code_verification {
    return Intl.message(
      'Code verification',
      name: 'code_verification',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `Didn't receive code?`
  String get didnt_receive_code {
    return Intl.message(
      'Didn\'t receive code?',
      name: 'didnt_receive_code',
      desc: '',
      args: [],
    );
  }

  /// `Resend it`
  String get resend_it {
    return Intl.message('Resend it', name: 'resend_it', desc: '', args: []);
  }

  /// `Check email`
  String get check_email {
    return Intl.message('Check email', name: 'check_email', desc: '', args: []);
  }

  /// `A password recovery code has been sent to your email address.`
  String get password_recovery {
    return Intl.message(
      'A password recovery code has been sent to your email address.',
      name: 'password_recovery',
      desc: '',
      args: [],
    );
  }

  /// `Check your email`
  String get check_your_email {
    return Intl.message(
      'Check your email',
      name: 'check_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Password has been changed`
  String get password_has_been_changed {
    return Intl.message(
      'Password has been changed',
      name: 'password_has_been_changed',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been successfully changed.`
  String get your_password_has_been_successfully_changed {
    return Intl.message(
      'Your password has been successfully changed.',
      name: 'your_password_has_been_successfully_changed',
      desc: '',
      args: [],
    );
  }

  /// `Confirm code`
  String get confirm_code {
    return Intl.message(
      'Confirm code',
      name: 'confirm_code',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
