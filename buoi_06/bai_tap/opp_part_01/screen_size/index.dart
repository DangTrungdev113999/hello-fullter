class ScreenSize {
  final double widthDevice;
  final double heightDevice;

  const ScreenSize({
    required this.widthDevice,
    required this.heightDevice,
  });

  _designScreenSize() {
    return {'width': 375, 'height': 812};
  }

  _deviceScreenSize() {
    return {
      'width': widthDevice,
      'height': heightDevice,
    };
  }

  double scaleWidth({
    double? designNumber,
  }) {
    var widthInDevice = _deviceScreenSize()['width'];
    var widthInDesign = _designScreenSize()['width'];
    return widthInDevice / widthInDesign;
  }
}

void main(List<String> args) {
  // ❔ áp dụng singleton cho class ScreenSize
  var screenSize = ScreenSize(widthDevice: 375, heightDevice: 812);
  print(screenSize.scaleWidth());
}
