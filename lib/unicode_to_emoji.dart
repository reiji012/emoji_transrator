library emoji_transraotr;

class UnicodeToEmoji {
  static String toEmoji(String unicodeStr) {
    if (unicodeStr.substring(0, 2) != 'U+') {
      throw Exception('Unicodeが検出できません: `U+` で始まる必要があります');
    }

    final unicode = '0x${unicodeStr.substring(2, unicodeStr.length)}';
    return String.fromCharCode(int.parse(unicode));
  }
}
