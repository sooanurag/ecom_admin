
// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const INITIAL = _Path.INITIAL;
}

abstract class _Path {
  _Path._();

  static const INITIAL = '/';
  static const UNKNOWN = '/unknown';
} 