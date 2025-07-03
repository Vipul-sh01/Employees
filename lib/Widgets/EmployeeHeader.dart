import 'package:flutter/material.dart';
import '../Constents/AppConstents.dart';
import '../Models/EmployeeModel.dart';



class EmployeeHeader extends StatelessWidget {
  final Employee employee;

  const EmployeeHeader({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Profile Image
        CircleAvatar(
          radius: Constants.avatarRadius,
          backgroundImage: NetworkImage(employee.photo),
        ),

        // Name & Company Info
        Container(
          margin: Constants.sectionMargin,
          padding: Constants.sectionPadding,
          child: Column(
            children: [
              Text(
                employee.name,
                textAlign: TextAlign.center,
                style: Constants.nameStyle,
              ),
              const SizedBox(height: 6),
              Text(
                employee.company,
                textAlign: TextAlign.center,
                style: Constants.companyStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
