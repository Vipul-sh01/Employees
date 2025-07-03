import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Models/EmployeeModel.dart';
import '../Services/ApiService.dart';

class EmployeeViewModel extends GetxController {
  final RxList<Employee> employeeList = <Employee>[].obs;
  final RxBool isLoading = false.obs;
  final RxBool hasError = false.obs;
  final RxInt currentPage = 1.obs;
  final RxBool hasNextPage = true.obs;
  final RxBool hasPreviousPage = false.obs;
  final RxnString lastOpenedEmployee = RxnString();

  @override
  void onInit() {
    super.onInit();
    loadLastOpened();
    fetchEmployees(page: currentPage.value);
  }

  Future<void> fetchEmployees({required int page}) async {
    try {
      isLoading.value = true;
      hasError.value = false;

      final List<Employee> newEmployees = await ApiService.fetchEmployees(page: page);

      employeeList.value = newEmployees;
      currentPage.value = page;
      hasNextPage.value = newEmployees.length == 10;
      hasPreviousPage.value = page > 1;
    } catch (e) {
      hasError.value = true;
      debugPrint("Error fetching employees: $e");
    } finally {
      isLoading.value = false;
    }
  }

  void nextPage() {
    if (hasNextPage.value && !isLoading.value) {
      fetchEmployees(page: currentPage.value + 1);
    }
  }

  void previousPage() {
    if (hasPreviousPage.value && !isLoading.value) {
      fetchEmployees(page: currentPage.value - 1);
    }
  }

  Future<void> saveLastOpened(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('last_employee', name);
    lastOpenedEmployee.value = name;
  }

  Future<void> loadLastOpened() async {
    final prefs = await SharedPreferences.getInstance();
    lastOpenedEmployee.value = prefs.getString('last_employee');
  }
}
