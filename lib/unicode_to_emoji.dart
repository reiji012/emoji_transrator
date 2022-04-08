library emoji_transraotr;

class UnicodeToEmoji {
  static String toEmoji(String unicodeStr) {
    if (unicodeStr.substring(0, 2) != 'U+') {
      throw Exception('Unicode not detected: must start with `U+`');
    }

    final unicode = '0x${unicodeStr.substring(2, unicodeStr.length)}';
    return String.fromCharCode(int.parse(unicode));
  }
}
