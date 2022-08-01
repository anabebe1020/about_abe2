String listToString(List<String> list) {
  return list.map<String>((String value) => value.toString()).join(', ');
}
