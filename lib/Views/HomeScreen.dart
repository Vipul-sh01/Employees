import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constents/AppConstents.dart';
import '../ViewModels/EmployeeViewModel.dart';
import '../Widgets/EmployeeCard.dart';
import '../Widgets/EmployeeSummaryCard.dart';
import 'DetailScreen.dart';

class HomeScreen extends StatelessWidget {
  final EmployeeViewModel viewModel = Get.put(EmployeeViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Constants.appTitle)),
      body: Obx(() {
        if (viewModel.hasError.value) {
          return Center(child: Text(Constants.errorMessage));
        }

        return Column(
          children: [
            // Last Opened Section
            if (viewModel.lastOpenedEmployee.value != null)
              Obx(() {
                final lastName = viewModel.lastOpenedEmployee.value;
                final employee = viewModel.employeeList.firstWhereOrNull(
                  (e) => e.name == lastName,
                );

                return employee != null
                    ? Padding(
                      padding: Constants.cardPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          EmployeeSummaryCard(employee: employee),
                        ],
                      ),
                    )
                    : const SizedBox.shrink();
              }),

            // Employee List
            Expanded(
              child:
                  viewModel.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                        itemCount: viewModel.employeeList.length,
                        itemBuilder: (context, index) {
                          final employee = viewModel.employeeList[index];
                          return EmployeeCard(
                            employee: employee,
                            onTap: () {
                              viewModel.saveLastOpened(employee.name);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (_) => DetailScreen(employee: employee),
                                ),
                              );
                            },
                          );
                        },
                      ),
            ),

            // Pagination Controls
            Padding(
              padding: Constants.paginationPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed:
                        viewModel.hasPreviousPage.value
                            ? viewModel.previousPage
                            : null,
                    child: const Text(Constants.previous),
                  ),
                  ElevatedButton(
                    onPressed:
                        viewModel.hasNextPage.value ? viewModel.nextPage : null,
                    child: const Text(Constants.next),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
