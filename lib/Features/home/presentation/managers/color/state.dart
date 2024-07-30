abstract class ColorState {}

class InitialThem extends ColorState {}

class ChangedThem extends ColorState {}

class InitialSelected extends ColorState {
  final int selected;
  InitialSelected(this.selected);
}

class ChangedSelected extends ColorState {
  final int selected;
  ChangedSelected(this.selected);

}

class IsSwitched extends ColorState{
  final bool isSwitched;

  IsSwitched(this.isSwitched);
}
