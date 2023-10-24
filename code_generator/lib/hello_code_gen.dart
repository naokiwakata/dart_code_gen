import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class HelloAno {
  const HelloAno();
}

class HelloAnoGenerator extends GeneratorForAnnotation<HelloAno> {
  @override
  generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    return "class Hello {}";
  }
}
