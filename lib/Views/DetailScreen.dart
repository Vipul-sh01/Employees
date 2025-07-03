import 'package:flutter/material.dart';
import '../Models/EmployeeModel.dart';
import '../Widgets/InfoTile.dart';
import '../Widgets/EmployeeHeader.dart';

class DetailScreen extends StatelessWidget {
  final Employee employee;

  const DetailScreen({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(employee.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            EmployeeHeader(employee: employee),
            InfoTile(title: "Username", value: employee.username, icon: Icons.person_outline),
            InfoTile(title: "Email", value: employee.email, icon: Icons.email_outlined),
            InfoTile(title: "Phone", value: employee.phone, icon: Icons.phone_outlined),
            InfoTile(title: "Address", value: employee.address, icon: Icons.location_on_outlined),
          ],
        ),
      ),
    );
  }
}
