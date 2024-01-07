class ListResponse<T> {
  final List<T> items;
  final String message;
  final int count;

  ListResponse({required this.items, required this.message, required this.count});

  factory ListResponse.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJson) {
    return ListResponse<T>(
      items: (json['restaurants'] as List).map((itemJson) => fromJson(itemJson)).toList(),
      message: json['message'],
      count: json['count'],
    );
  }
}
