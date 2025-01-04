```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON list
      final jsonData = jsonDecode(response.body) as List;
      // Process the JSON data. For example, print each item:
      for (var item in jsonData) {
        print(item);
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, maybe show an error message or retry
    print('Error: $e');
  }
}
```