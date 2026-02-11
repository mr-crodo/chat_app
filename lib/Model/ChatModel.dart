class ChatModel {
  final String name;
  final bool isGroup;
  final String time;
  final String currentMessage;

  ChatModel({
    required this.name,
    required this.isGroup,
    required this.time,
    required this.currentMessage,
  });

  String get iconPath => isGroup ? 'assets/groups.svg' : 'assets/person.svg';
}
