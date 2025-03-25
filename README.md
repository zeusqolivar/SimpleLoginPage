# SimpleLogin - iOS Login Application

A professional iOS login application built with SwiftUI, featuring a clean and modern user interface with MVVM architecture.

## Features

- 🎨 Modern and responsive UI design
- 🔒 Secure password handling
- ⌨️ Keyboard navigation support
- ⚡ Async/await implementation
- 🔄 Loading states and animations
- ⚠️ Input validation and error handling
- 🎯 MVVM architecture pattern
- 🔑 Proper state management
- 📱 iOS best practices

## Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/SimpleLoginPage.git
```

2. Open the project in Xcode:
```bash
cd SimpleLoginPage
open SimpleLogin.xcodeproj
```

3. Build and run the project (⌘R)

## Usage

### Login Credentials
- **Username**: `admin`
- **Password**: `password`

### Features Overview

1. **Login Screen**
   - Enter your username and password
   - Use keyboard navigation (Next/Done buttons)
   - View loading state during authentication
   - See error messages for invalid inputs
   - Access "Forgot Password" option

2. **Welcome Screen**
   - View success confirmation
   - See your username
   - Check last login timestamp
   - Sign out option

### Navigation
- Use the keyboard's "Next" button to move between fields
- Press "Done" on the password field to submit
- Tap the "Sign In" button to authenticate
- Use the "Sign Out" button to log out

## Architecture

The app follows the MVVM (Model-View-ViewModel) pattern:

- **Model**: LoginViewModel handles business logic
- **View**: LoginView and WelcomeView handle UI
- **ViewModel**: Manages state and user interactions

## Error Handling

The app handles various scenarios:
- Empty fields validation
- Invalid credentials
- Loading states
- Network simulation

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Built with SwiftUI
- Follows Apple's Human Interface Guidelines
- Implements modern iOS development practices