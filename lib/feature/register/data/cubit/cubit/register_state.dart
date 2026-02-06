part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}
final class RegisterLoadingInitial extends RegisterState {}
final class RegisterSuccessInitial extends RegisterState {}
final class RegisterErorrInitial extends RegisterState {}
