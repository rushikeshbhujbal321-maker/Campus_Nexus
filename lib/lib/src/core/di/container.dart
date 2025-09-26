import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'container.g.dart';  // Run `flutter pub run build_runner build`

// Global providers
final themeProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());
final localeProvider = StateProvider<Locale>((ref) => Locale('en'));
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier(ref));

// Example: Data providers
final userRepositoryProvider = Provider<UserRepository>((ref) => UserRepositoryImpl(ref.read(firestoreDatasourceProvider)));
final firestoreDatasourceProvider = Provider<FirestoreDatasource>((ref) => FirestoreDatasourceImpl());

// Feature-specific (e.g., for home)
final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) => HomeNotifier(ref));
