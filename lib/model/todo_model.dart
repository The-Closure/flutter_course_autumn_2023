class TodoModel {
  int userId;
  int id;
  String title;
  bool completed;

  TodoModel(
      {required this.userId,
      required this.completed,
      required this.id,
      required this.title});

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
        userId: map['userId'],
        completed: map['completed'],
        id: map['id'],
        title: map['title']);
  }
}
