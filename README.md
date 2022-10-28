# Flutter Chat
Flutter Chat based on Firebase (Auth/Storage/Database).
Using Clean Architecture (Uncle Bob 🥰) + Bloc.

## Features

* Authentication using Google, Email/Password
* Send and receive messages (text, image, video)
* Search for users (by email)

## Screenshots
<p>
<img src="https://raw.githubusercontent.com/userentity/flutterchat/master/screenshots/g1.png" width="250">
<img src="https://raw.githubusercontent.com/userentity/flutterchat/master/screenshots/g2.png" width="250">
<img src="https://raw.githubusercontent.com/userentity/flutterchat/master/screenshots/g3.png" width="250">
<img src="https://raw.githubusercontent.com/userentity/flutterchat/master/screenshots/g4.png" width="250">
</p>

## Getting started

#### 1. [Setup Flutter](https://flutter.dev/docs/get-started/install)

#### 2. Clone the repo

```sh
$ git clone https://github.com/userentity/flutter_chat.git
$ cd flutter_chat/
```

#### 3. Setup the firebase app

1. You'll need to create a new Firebase projects. Follow the instructions at https://console.firebase.google.com.

2. Once your Firebase instance is created, you'll need to enable Google && Email/Password authentication
* Go to the Firebase Console
* Click "Authentication" in the left-hand menu
* Click the "Sign-in method" tab
* Click "Google" and enable it
* Click "Email/Password" and enable it

Don't forget to update REVERSED_CLIENT_ID in flutter_chat/ios/Runner/Info.plist (https://pub.dev/packages/google_sign_in)

3. Enable the Firestore Database
* Go to the Firebase Console
* Click "Firestore Database" in the left-hand menu
* Create database
* Select "Start in test mode" and "Enable"
* While running the application, follow the tips in the terminal to create a composite index

4. Enable the Firebase Storage
* Go to the Firebase Console
* Click "Storage" in the left-hand menu
* Click the "Rules" and edit row "allow read, write: if false;" to "allow read, write: if true;". The release requires different access settings!

6. Add Firebase to your Flutter app (https://firebase.google.com/docs/flutter/setup?platform=ios)

## What's Next?
- [ ] Notifications for new messages
- [ ] Send files by message
- [ ] "Message seen" indicator
- [ ] Offline caching
- [ ] Firebase security rules
- [ ] Delete messages
- [ ] Group chats
- [ ] Firebase Query Optimization
- [ ] MacOS/Windows/Linux platform 

## Created & Maintained By
* [Roman](https://github.com/userentity)
* Telegram: [@userentity](https://t.me/userentity)
* Gmail: [rustinenkodev@gmail.com](mailto:https://rustinenkodev@gmail.com)
> I desperately need a job! I would be happy to receive Flutter job offers (project or full day).