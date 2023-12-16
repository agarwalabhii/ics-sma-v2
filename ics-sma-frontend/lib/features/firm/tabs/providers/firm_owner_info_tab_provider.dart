import 'package:flutter_riverpod/flutter_riverpod.dart';

final ownerInfoTabStateTabProvider =
    NotifierProvider<OwnerInfoTabNotifier, OwnerInfoTabState>(
        OwnerInfoTabNotifier.new);

class OwnerInfoTabNotifier extends Notifier<OwnerInfoTabState> {
  @override
  OwnerInfoTabState build() {
    return OwnerInfoTabState(
      false,
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    );
  }

  void setReceiveMessages(bool? input) {
    if (input == null) {
      state = state.copyWith(receiveMessages: false);
      return;
    }
    if (input) {
      state = state.copyWith(receiveMessages: true);
      return;
    }
    state = state.copyWith(receiveMessages: false);
  }

  void setName(String? input) {
    if (input == null) {
      state = state.copyWith(name: "");
      return;
    }
    if (input.isNotEmpty) {
      state = state.copyWith(name: input);
      return;
    }
  }

  void setTitle(String? input) {
    if (input == null) {
      state = state.copyWith(title: "");
      return;
    }
    if (input.isNotEmpty) {
      state = state.copyWith(title: input);
      return;
    }
  }

  void setPhone(String? input) {
    if (input == null) {
      state = state.copyWith(phone: "");
      return;
    }
    if (input.isNotEmpty) {
      state = state.copyWith(phone: input);
      return;
    }
  }

  void setExt(String? input) {
    if (input == null) {
      state = state.copyWith(ext: "");
      return;
    }
    if (input.isNotEmpty) {
      state = state.copyWith(ext: input);
      return;
    }
  }

  void setFax(String? input) {
    if (input == null) {
      state = state.copyWith(fax: "");
      return;
    }
    if (input.isNotEmpty) {
      state = state.copyWith(fax: input);
      return;
    }
  }

  void setEmail(String? input) {
    if (input == null) {
      state = state.copyWith(email: "");
      return;
    }
    if (input.isNotEmpty) {
      state = state.copyWith(email: input);
      return;
    }
  }

  void setMobile(String? input) {
    if (input == null) {
      state = state.copyWith(mobile: "");
      return;
    }
    if (input.isNotEmpty) {
      state = state.copyWith(mobile: input);
      return;
    }
  }
}

class OwnerInfoTabState {
  final bool receiveMessages;
  final String? name;
  final String? title;
  final String? phone;
  final String? ext;
  final String? fax;
  final String? email;
  final String? mobile;

  OwnerInfoTabState(this.receiveMessages, this.name, this.title, this.phone,
      this.ext, this.fax, this.email, this.mobile);

  OwnerInfoTabState copyWith(
      {receiveMessages, name, title, phone, ext, fax, email, mobile}) {
    return OwnerInfoTabState(
        receiveMessages ?? this.receiveMessages,
        name ?? this.name,
        title ?? this.title,
        phone ?? this.phone,
        ext ?? this.ext,
        fax ?? this.fax,
        email ?? this.email,
        mobile ?? this.mobile);
  }
}
