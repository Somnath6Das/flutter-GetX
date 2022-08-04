import 'dart:ui';
import 'package:get/get.dart';


class LocalizationService extends Translations {
  static final locale = Locale('en', 'US');
  static final fallbackLocale = Locale('bn', 'WB');

  static final langs = ['English', 'Bengali'];

  static final locales = [Locale('en', 'US'), Locale('bn', 'WB')];

  @override
  Map<String, Map<String, String>> get keys => {
        'en_us': en,
        'bn_wb': bn,
      };

  void changeLocale(String langs) {
    final locale = _getlocaleFromLanguages(langs);
    Get.updateLocale(locale);
  }

  Locale _getlocaleFromLanguages(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }

    return Get.locale!;
  }
}

const Map<String, String> en = {
  'quote': 'Never give up on what you really believe in, you will find a way.'
};

const Map<String, String> bn = {
  'quote':
      'যে ব্যাপারে তুমি সত্যিই বিশ্বাস করো , সে ব্যাপারে কখনো হাল ছেড়ো না , পথ তুমি খুঁজে পাবেই ।'
};
