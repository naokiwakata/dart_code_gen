import 'package:build/build.dart';
import 'package:dart_code_gen/src/gensample_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder genSample(BuilderOptions options) =>
    SharedPartBuilder([GenSampleGenerator()], 'gen_sample');
