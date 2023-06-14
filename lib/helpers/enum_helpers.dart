class EnumHelpers {
  static String toTitleCase(String camelCase) {
    var result = camelCase.replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return ' ${match.group(0)}';
    }).trim();

    return "${result[0].toUpperCase()}${result.substring(1)}";
  }
}
