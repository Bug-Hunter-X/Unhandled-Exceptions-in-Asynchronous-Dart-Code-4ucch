```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      //  More informative error handling
      throw Exception('API request failed with status: ${response.statusCode}.  Response Body: ${response.body}');
    }
  } catch (e) {
    // Log the error for debugging purposes
    print('Error fetching data: $e');
    // Return null or a default value to prevent app crashes
    return null; // Or return a default map
  }
}
```