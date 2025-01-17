part of 'weight_age_cubit.dart';

@immutable
sealed class WeightState {}

final class WeightInitial extends WeightState {}
final class WeightSuccess extends WeightState {}
