# 👨‍💼 Employee List App

## 📝 Description

A modern Flutter app that fetches and displays a list of employees from a mock REST API with pagination, detailed views, and persistent session memory. Built with a clean architecture using MVVM and GetX for responsive and scalable performance.

---

## ❓ Problem Statement

- Viewing employee details
- Paginated data fetching
- Remembering the last opened employee
- Responsive design that works across screen sizes

This aims to improve user experience and data handling for HR teams or internal organizational tools.

---

## 🧰 Tech Stack

- **Flutter** — Cross-platform UI toolkit
- **GetX** — State Management and Routing
- **SharedPreferences** — Persistent local storage
- **HTTP** — API requests
- **MVVM Architecture** — Clear separation of concerns
- **ResponsiveUtils** — Custom utility for device-adaptive UI

---

## 🖼️ Screenshots

<div align="center">
  <img src="https://github.com/Vipul-sh01/Employees/blob/main/g1.jpg" alt="Post Details 1" width="25%">
  <img src="https://github.com/Vipul-sh01/Employees/blob/main/g2.jpg" alt="Post Details 2" width="25%">
  <img src="https://github.com/Vipul-sh01/Employees/blob/main/g3.jpg" alt="Post Details 2" width="25%">
</div>
---

## 🎯 Features

- 🔍 **Employee Listing** – View 10 employees per page using paginated API (`?_page=1&_limit=10`)
- 👆 **Next & Previous Controls** – Navigate between pages manually
- 🧠 **State Management with GetX** – Efficient and reactive state handling
- 💾 **Last Opened Employee Memory** – Persists the last selected employee using SharedPreferences
- 📱 **Responsive UI** – UI adapts gracefully to all device sizes using custom utility class
- 🧼 **Clean Architecture** – MVVM with separation into Models, Views, ViewModels, and Services


---

## 🛠 Setup Instructions

```bash
git clone https://github.com/Vipul-sh01/employee-list-app.git
cd employee-list-app
flutter pub get
flutter run
