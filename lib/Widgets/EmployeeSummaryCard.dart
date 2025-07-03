import 'package:flutter/material.dart';
import '../Constents/AppConstents.dart';
import '../Models/EmployeeModel.dart';



class EmployeeSummaryCard extends StatelessWidget {
  final Employee employee;

  const EmployeeSummaryCard({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: Constants.cardMargin,
      color: Constants.summaryCardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.cardBorderRadius),
      ),
      elevation: 3,
      child: Padding(
        padding: Constants.cardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Avatar and Basic Info
            Row(
              children: [
                CircleAvatar(
                  radius: Constants.avatarSmall,
                  backgroundImage: NetworkImage(employee.photo),
                  backgroundColor: Colors.grey.shade200,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(employee.name, style: Constants.cardTitleStyle),
                      Text(employee.company, style: Constants.cardSubtitleStyle),
                    ],
                  ),
                ),
              ],
            ),

            Divider(height: Constants.dividerHeight),

            // Info Rows
            _infoRow("Email", employee.email),
            _infoRow("Phone", employee.phone),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Constants.rowSpacing),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title: ", style: Constants.rowTitleStyle),
          Expanded(child: Text(value, style: Constants.rowValueStyle)),
        ],
      ),
    );
  }
}
