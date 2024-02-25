mixin BuildAndroid {
  void buildAndroid() {
    print('Building Android');
  }
}

mixin BuildIOS {
  void buildIOS() {
    print('Building IOS');
  }
}

mixin BuildWeb {
  void buildWeb() {
    print('Building Web');
  }
}

mixin BuildDesktopWeb {
  void buildDesktopWeb() {
    print('Building Desktop Web');
  }
}

mixin HandleStudentOfClass<T> {
  int remainMembers(int currentStd, int requiredStd) {
    return requiredStd - currentStd;
  }
}
