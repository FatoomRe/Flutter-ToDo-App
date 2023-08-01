class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Walk 5000 steps', isDone: true ),
      ToDo(id: '03', todoText: 'Check Emails', ),
      ToDo(id: '04', todoText: 'Reading Book for 30 min', ),
      ToDo(id: '05', todoText: 'Complate flutter project', ),
      ToDo(id: '06', todoText: 'Morning Excercise', ),
    ];
  }
}