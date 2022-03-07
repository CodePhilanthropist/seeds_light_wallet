part of 'regions_map_bloc.dart';

abstract class RegionsMapEvent extends Equatable {
  const RegionsMapEvent();

  @override
  List<Object?> get props => [];
}

class SetInitialValues extends RegionsMapEvent {
  const SetInitialValues();

  @override
  String toString() => 'SetInitialValues';
}

class MoveToCurrentLocation extends RegionsMapEvent {
  const MoveToCurrentLocation();

  @override
  String toString() => 'MoveToCurrentLocation';
}

class OnMapMoving extends RegionsMapEvent {
  final double pickedLat;
  final double pickedLong;

  const OnMapMoving({required this.pickedLat, required this.pickedLong});

  @override
  List<Object?> get props => [pickedLat, pickedLong];

  @override
  String toString() => 'OnMapMoving { pickedLat: $pickedLat pickedLong: $pickedLong}';
}

class OnMapEndMove extends RegionsMapEvent {
  const OnMapEndMove();

  @override
  String toString() => 'OnMapEndMove';
}

class ToggleSearchBar extends RegionsMapEvent {
  const ToggleSearchBar();

  @override
  String toString() => 'ToggleSearchBar';
}

class OnPlaceResultSelected extends RegionsMapEvent {
  final Place place;

  const OnPlaceResultSelected(this.place);

  @override
  List<Object?> get props => [place];

  @override
  String toString() => 'OnPlaceResultSelected { place: $place }';
}
