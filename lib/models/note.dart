class Note {
  final String image;
  final String text;

  Note({
    required this.image,
    required this.text,
  });

  @override
  String toString() {
    return 'Note{image: $image, text: $text}';
  }
}
