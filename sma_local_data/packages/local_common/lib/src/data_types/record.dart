enum RecordStatus {
  draft,
  published;

  @override
  String toString() {
    switch (this) {
      case draft:
        return "Draft";
      case published:
        return "Published";
    }
  }
}

enum RecordType {
  local,
  remote;

  @override
  String toString() {
    switch (this) {
      case local:
        return "Local";
      case remote:
        return "Remote";
    }
  }
}
