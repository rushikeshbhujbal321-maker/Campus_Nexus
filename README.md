# Campus Nexus
One campus. One system. Infinite connections.

A futuristic Flutter app for campus networking, events, lost & found, and AI-powered features. Cross-platform: Android, iOS, Web.

## Setup
1. Flutter 3.x: `flutter pub get`
2. Firebase: Configure as per instructions.
3. Run: `flutter run`
4. Admin Dashboard: Web-only, access via /admin after login as admin.

## Features
- Home with magical UI sections.
- LinkedIn-like networking.
- Lost & Found with claims.
- Events & Calendar (Rive-animated).
- Complaints & Quick Connect.
- AI via Gemini (Cloud Functions).
- Themes: Light/Dark. Localization: EN/HI.

## Architecture
Clean Arch + Riverpod. Firebase backend.

## Deployment
- App: `flutter build` for platforms.
- Functions: `firebase deploy --only functions`
- Hosting: `firebase deploy --only hosting` (for Web).
