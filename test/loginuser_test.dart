import 'package:myapp/setup/login.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test the text in the login widget', (WidgetTester tester) async {
    await tester.pumpWidget(Login());
    final tFinder = find.text('welcome back!');
    final fFinder = find.text('sign in');
    final trFinder = find.text('sign in with google');
    expect(fFinder, findsOneWidget);
    expect(tFinder, findsOneWidget);
    expect(trFinder, findsOneWidget);
  });
}
