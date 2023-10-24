import 'package:annotation/annotation.dart';

part 'test2.g.dart';

@Greeter(message: 'こんにちは', ps: '牛乳買ってきて')
class Two {
  const Two(this.something);

  final String something;
}
