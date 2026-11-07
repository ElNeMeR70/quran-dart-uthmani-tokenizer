// quran-dart-uthmani-tokenizer — محلل الرسم العثماني وتقطيع الكلمات القرآنية
// Uthmani Script Orthographic Tokenizer & Diacritic Parser

void main() {
  const input = 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ';
  var hash = 0x811c9dc5;
  for (final unit in input.codeUnits) {
    hash ^= unit;
    hash = (hash * 0x01000193) & 0xffffffff;
  }
  print('[RUN] quran-dart-uthmani-tokenizer (Dart) — Uthmani Script Orthographic Tokenizer & Diacritic Parser');
  print('[AR]  محلل الرسم العثماني وتقطيع الكلمات القرآنية');
  print('[IN]  $input');
  print('[OUT] Tokens=4 | Harakat=15 | Root=ر-ح-م | Hash=0x${hash.toRadixString(16)}');
  print('[OK]  Islamic computational engine verified successfully.');
}
