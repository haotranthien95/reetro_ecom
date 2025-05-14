# Reetro Ecom

A modern e-commerce Flutter application built with clean architecture principles and best practices.

## Features

- State management using `flutter_bloc`
- Feature-first architecture with clear separation of concerns
- Firebase Cloud Messaging for push notifications
- Route management with `go_router`
- Responsive UI with `flutter_screenutil`
- Multi-language support (English and Vietnamese)
- Firebase Firestore integration
- Dark mode support
- REST API integration with `dio` and `retrofit`
- Dependency injection using `get_it` and `injectable`
- Logging and error reporting
- Environment configuration
- Local caching with Hive
- Form validation with `formz`
- Custom app icon and splash screen
- State restoration support
- Unit and widget testing

## Project Structure

```
lib/
├── core/
│   ├── config/
│   ├── di/
│   ├── error/
│   ├── network/
│   ├── storage/
│   ├── theme/
│   └── utils/
├── features/
│   ├── auth/
│   ├── home/
│   ├── product/
│   └── settings/
└── shared/
    ├── models/
    └── widgets/
```

## Setup

1. Install Flutter (version 3.24.5 or higher)
2. Clone the repository
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Generate code:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
5. Set up Firebase:
   - Create a new Firebase project
   - Add Android and iOS apps
   - Download and add the configuration files
   - Enable Firestore and Cloud Messaging

6. Configure environment variables:
   - Copy `.env.development` to `.env`
   - Update the values as needed

7. Run the app:
   ```bash
   flutter run
   ```

## Testing

Run tests:
```bash
flutter test
```

## Dependencies

- `flutter_bloc`: State management
- `go_router`: Route management
- `firebase_core`, `firebase_messaging`, `firebase_crashlytics`, `cloud_firestore`: Firebase integration
- `flutter_screenutil`: Responsive UI
- `dio`, `retrofit`: Network requests
- `get_it`, `injectable`: Dependency injection
- `hive`: Local storage
- `logger`: Logging
- `flutter_dotenv`: Environment configuration
- `formz`: Form validation
- `flutter_launcher_icons`, `flutter_native_splash`: App assets

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request
