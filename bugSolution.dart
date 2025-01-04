```dart
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      for (var item in jsonData) {
        print(item);
      }
    } else if (response.statusCode == 404) {
      throw Exception('Resource not found (404)');
    } else if (response.statusCode == 500) {
      // Retry after delay
      await Future.delayed(Duration(seconds: 3));
      print("Retrying...");
      await fetchData();
    } else {
      throw Exception('Request failed with status: ${response.statusCode}. Response: ${response.body}');
    }
  } catch (e) {
    print('Error: $e');
    // Consider displaying a user-friendly error message here
  }
}
```