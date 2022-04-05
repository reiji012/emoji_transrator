import 'package:flutter_test/flutter_test.dart';

import 'package:unicode_to_emoji/unicode_to_emoji.dart';

void main() {
  test('adds one to input values', () {
    expect(UnicodeToEmoji.toEmoji('U+1F600'), '😀');
    expect(UnicodeToEmoji.toEmoji('U+1F60431'), '😀');
  });
}
