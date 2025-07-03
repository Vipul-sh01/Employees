import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/EmployeeModel.dart';

class ApiService {
  static const String baseUrl = 'https://fake-json-api.mock.beeceptor.com';

  static Future<List<Employee>> fetchEmployees({int page = 1}) async {
    final Uri url = Uri.parse('$baseUrl/users?_page=$page&_limit=10');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => Employee.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch employees. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching employees: $e');
    }
  }
}
