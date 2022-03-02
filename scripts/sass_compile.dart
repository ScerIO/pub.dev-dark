import 'dart:io';
import 'package:sass/sass.dart' as sass;

void main(List<String> arguments) {
  final result = sass.compileToResult(
    arguments[0],
    verbose: true,
  );
  File(arguments[1]).writeAsStringSync(
    result.css.replaceFirst(
      '@media screen {',
      '@media screen /*[[USE_DARK_THEME]]*/ {',
    ),
  );
}
