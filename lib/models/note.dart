class Note {
  final String id;
  final String title;
  final String content;

  const Note({required this.id, required this.title, required this.content});

  factory Note.fromMap(String id, Map<dynamic, dynamic> data) {
    return Note(
      id: id,
      title: data['title']?.toString() ?? '',
      content: data['content']?.toString() ?? '',
    );
  }
}