# AUVNET Flutter Internship Assessment

A Flutter-based E-commerce demo app built using Clean Architecture and the BLoC state management pattern.  
This application was developed as part of the AUVNET Flutter Internship Task.

---

## 📱 Features

- Clean and scalable architecture (Data, Domain, Presentation layers)
- User authentication using Firebase (Sign Up / Login)
- Cloud Firestore for dynamic content: Banners, Services, Restaurants
- Hive for local data caching (offline support)
- AutoRoute for structured navigation
- Responsive UI using flutter_screenutil
- State management with `flutter_bloc` and `Freezed`

---

## 🧑‍💻 Tech Stack

| Layer           | Tools / Libraries Used                                       |
|----------------|--------------------------------------------------------------|
| Architecture    | Clean Architecture                                           |
| State Management| `flutter_bloc`, `Freezed`, `Equatable`                      |
| Firebase        | Authentication, Firestore, Firebase Core                    |
| Local Storage   | Hive                                                        |
| Navigation      | AutoRoute v6                                                |
| UI              | flutter_screenutil, Google Fonts, custom theme + assets     |
| Dependency Injection | GetIt + Injectable                                     |

---

## 🛠️ Setup & Installation

1. **Clone the repo**

git clone https://github.com/rahmagamal21/AUVNET-Internship-Assessment.git
cd auvnet-flutter-internship-assessment

2.Install dependencies

flutter pub get


3.Generate code

flutter pub run build_runner build --delete-conflicting-outputs

4.Run the app

flutter run



🏗️ Architecture Overview
The project is divided into 3 main layers:

Domain Layer

Entities, Repositories, UseCases

Data Layer

Models, Firebase services, Hive adapters

Presentation Layer

Screens, BLoC, Events, States, UI widgets

Each feature is modular (feature-first structure) and follows SOLID principles.

📦 Local Storage with Hive
The app caches:

User information

Banner list

Services

Restaurants

Cached data is used when offline or when the network is unavailable.

Data is only fetched from Firebase if not found in local Hive boxes.

🔐 Authentication Flow
On app launch:

If user has already logged in → Skip onboarding/login → Go to Home

If not → Onboarding → Login/Signup

FirebaseAuth is used to check user login status and retrieve user data from Firestore.

🧪 Testing
Manual testing was performed across all flows including:

Sign up / Sign in

Firebase data sync

Offline mode using Hive

Navigation via AutoRoute

UI responsiveness across screen sizes


📬 Submission
Project submitted by Rahma Gamal
Email: rahmagm002@gmail.com
Date: June 18, 2025


