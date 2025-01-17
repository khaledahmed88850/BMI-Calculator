part of 'gender_cubit.dart';

@immutable
sealed class GenderState {}

final class GenderInitial extends GenderState {}
final class GenderSuccess extends GenderState {}
