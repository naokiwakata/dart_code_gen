import 'package:analyzer/dart/element/element.dart';
import 'package:annotation/annotation.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class GenSampleGenerator extends GeneratorForAnnotation<Greeter> {
  @override
  Stream<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) async* {
    final annotation = const TypeChecker.fromRuntime(Greeter)
        .firstAnnotationOf(element, throwOnUnresolved: false);
    final message = annotation?.getField('message')?.toStringValue() ?? '';
    final ps = annotation?.getField('ps')?.toStringValue() ?? '';

    yield '''
    extension ${element.name}Ext on ${element.name} {
      String greet() {
        return '$message ${element.name}${ps.isNotEmpty ? ',$ps' : ''}';
      }
    }
    ''';
  }
}
