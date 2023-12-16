abstract mixin class ViewModelMixin<M extends Map<String, dynamic>> {
  M? formData;
  bool edited = false;
  bool get isEdited => edited;
  set state(M state);
  void setValue(String key, dynamic value) {
    formData![key] = value;
    edited = true;
    state = formData!;
  }
  Future<void> createOrUpdate();
}
