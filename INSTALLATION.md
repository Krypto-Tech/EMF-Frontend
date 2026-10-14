# Installation Guide --- Employee Management App (Flutter)

This guide explains how to set up the Flutter client and Node.js/Express
backend for the **Employee Management App**.

## Project structure

The repository contains two separate projects:

``` text
Employee_management_flutter/
├── crud_flutter_todo/       # Flutter application
└── flutter_todo_backend/    # Node.js / Express API
```

## Prerequisites

Install the following tools before starting:

-   **Git** --- to clone the repository.
-   **Flutter SDK** --- includes the Dart SDK.
-   **Android Studio or Visual Studio Code** --- for development and
    running the app.
-   **An Android/iOS emulator or a physical device** --- to run the
    Flutter application.
-   **Node.js and npm** --- to run the backend.
-   **PostgreSQL** --- the backend database.

Verify the installations in a terminal:

``` bash
git --version
flutter --version
dart --version
node --version
npm --version
```

Check that Flutter can find the required development tools:

``` bash
flutter doctor
```

Follow any relevant instructions reported by `flutter doctor` for your
target platform.

## 1. Clone the repository

``` bash
git clone https://github.com/shrudh14007/Employee_management_flutter.git
cd Employee_management_flutter
```

## 2. Set up PostgreSQL and the backend

### Install backend dependencies

Open a terminal at the repository root, then run:

``` bash
cd flutter_todo_backend
npm install
```

### Configure the database connection

1.  Make sure PostgreSQL is installed and running.
2.  Create or select a PostgreSQL database for the application.
3.  Open `flutter_todo_backend/database.js`.
4.  Configure the PostgreSQL connection settings to match your local
    database.

Use your own local database credentials. Do not commit passwords, JWT
secrets, or other credentials to a public repository. If the project is
configured to read environment variables, put secrets in a local `.env`
file and ensure that file is ignored by Git.

> **Configuration note:** The repository documentation identifies
> `database.js` as the database connection module, but does not specify
> the required database name, user, password, or environment-variable
> names. Check `database.js` and `server.js` to confirm the exact
> configuration expected by your copy of the project.

### Start the backend

From the `flutter_todo_backend` directory, run:

``` bash
node server.js
```

The Express server is documented as listening on:

``` text
http://localhost:3000
```

Keep this terminal open while using the API. If the server reports a
database connection error, verify that PostgreSQL is running and that
the connection settings in `database.js` are correct.

## 3. Set up the Flutter application

Open a **second terminal** and return to the repository root:

``` bash
cd Employee_management_flutter
cd crud_flutter_todo
```

Install the Flutter packages:

``` bash
flutter pub get
```

The Flutter project uses packages including Riverpod, SQLite
(`sqflite`), HTTP, form validation, Material Text Fields, and a heatmap
calendar.

## 4. Check available devices

List devices Flutter can use:

``` bash
flutter devices
```

Start an emulator using Android Studio, or connect a supported physical
device. Then run `flutter devices` again to confirm it is detected.

## 5. Run the application

From the `crud_flutter_todo` directory:

``` bash
flutter run
```

If more than one device is available, Flutter may ask you to choose one.
Select the device you want to use.

### Important: connecting to the backend from a device

The backend URL `http://localhost:3000` refers to the machine where the
backend is running. When the Flutter app runs on a physical device or an
emulator, `localhost` may refer to that device rather than your
development computer.

If the app needs to call the backend, configure its API base URL for
your environment:

-   **Flutter running on the same computer as the backend:**
    `http://localhost:3000` may work, depending on the platform and
    networking setup.
-   **Android emulator:** use the emulator's host-machine address,
    commonly `http://10.0.2.2:3000` for the standard Android Studio
    emulator.
-   **Physical device:** use your computer's reachable local-network IP
    address, and ensure the device and computer can communicate over the
    network.

Use the URL in the app's existing API configuration rather than
hard-coding a new URL in individual screens. The exact API configuration
file is not identified in this guide, so search the Flutter project for
`localhost:3000` or the relevant API base URL.

Only use plain HTTP for local development where appropriate. Production
deployments should use HTTPS and suitable server-side security settings.

## 6. Test and analyse the Flutter project

Run static analysis:

``` bash
flutter analyze
```

Run the test suite:

``` bash
flutter test
```

These commands should be run from the `crud_flutter_todo` directory.

## 7. Backend authentication endpoints

The documented backend endpoints are:

  Method   Endpoint      Purpose
  -------- ------------- ----------------------------------------------
  `POST`   `/register`   Register a user
  `POST`   `/login`      Authenticate a user
  `GET`    `/profile`    Validate a JWT and retrieve user information

The documented API base URL is `http://localhost:3000`.

Example registration request:

``` http
POST /register
Content-Type: application/json
```

``` json
{
  "email": "user@example.com",
  "password": "replace-with-a-test-password"
}
```

Example login request:

``` http
POST /login
Content-Type: application/json
```

``` json
{
  "email": "user@example.com",
  "password": "replace-with-the-password-used-at-registration"
}
```

A successful login returns a JWT. The profile endpoint expects the token
in the authorization header:

``` http
GET /profile
Authorization: Bearer <JWT_TOKEN>
```

Use test credentials for local development. Do not publish real
passwords or tokens.

## Troubleshooting

### `flutter` command not found

Install the Flutter SDK and add its `bin` directory to your `PATH`. Then
open a new terminal and run:

``` bash
flutter doctor
```

### Flutter packages fail to resolve

Make sure you are in `crud_flutter_todo`, then run:

``` bash
flutter pub get
```

### No devices found

Start an emulator or connect a supported device, then run:

``` bash
flutter devices
```

### Backend fails to start

Check that Node.js is installed, run `npm install` from
`flutter_todo_backend`, and inspect any error reported by:

``` bash
node server.js
```

### PostgreSQL connection fails

Confirm PostgreSQL is running and that the database connection settings
in `database.js` match your local database.

### The app cannot reach the API

Confirm the backend is running on port `3000` and check the API base URL
configured in the Flutter app. For emulators and physical devices,
`localhost` may need to be replaced with the appropriate host address.

## Quick start checklist

-   [ ] Install Git, Flutter, Node.js, npm, and PostgreSQL.
-   [ ] Clone the repository.
-   [ ] Install backend dependencies with `npm install`.
-   [ ] Configure PostgreSQL in `flutter_todo_backend/database.js`.
-   [ ] Start the backend with `node server.js`.
-   [ ] Install Flutter dependencies with `flutter pub get`.
-   [ ] Start an emulator or connect a device.
-   [ ] Run the app with `flutter run`.
-   [ ] Run `flutter analyze` and `flutter test` if you want to check
    the Flutter project.

## Project links

-   **GitHub repository:**
    https://github.com/shrudh14007/Employee_management_flutter
-   **Author:** Shrudhir Praveen
