class Category {
  final String category;
  double registeredUsers = 0.0;
  final String status;

  Category({
    required this.category,
    this.registeredUsers = 0,
    required this.status
  });
}