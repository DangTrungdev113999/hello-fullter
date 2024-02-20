import 'index.dart';

void main(List<String> args) {
  TestAbstractClass a = TestAbstractClassImpl();
  a.test();
}

abstract class TestAbstractClass {
  late final int a;
  void test();
}

abstract class TestAbstractClass2 {
  late final int b;
  void test1();
}

class TestAbstractClassImpl implements TestAbstractClass, TestAbstractClass2 {
  @override
  int a = 10;

  @override
  void test() {
    print("test");
  }

  @override
  int b = 20;

  @override
  void test1() {
    // TODO: implement test1
  }
}
