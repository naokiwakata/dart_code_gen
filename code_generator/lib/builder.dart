import 'package:build/build.dart';
import 'package:dart_code_gen/hello_code_gen.dart';
import 'package:source_gen/source_gen.dart';

Builder helloBuilder(BuilderOptions _) =>
    SharedPartBuilder([HelloAnoGenerator()], "hello");
