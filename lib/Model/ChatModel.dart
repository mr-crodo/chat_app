class ChatModel {
  final String name;
  final bool isGroup;
  final String time;
  final String currentMessage;
  final String status;

  ChatModel({
    required this.name,
    this.isGroup = false,
    this.time = "",
    this.currentMessage = "",
    this.status = "",
  });

  String get iconPath => isGroup ? 'assets/groups.svg' : 'assets/person.svg';
}
