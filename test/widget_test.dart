import 'package:flutter_test/flutter_test.dart';
import 'package:agrivision_cnn_707012400128/main.dart';

void main() {
  testWidgets('AgriVisionApp inisialisasi dan navigasi dasar', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const AgriVisionApp());
    await tester.pumpAndSettle();

    // Pastikan AppBar menampilkan AgriVision - Beranda
    expect(find.text('AgriVision - Beranda'), findsOneWidget);

    // Pastikan 4 tab destinasi ada di NavigationBar
    expect(find.text('Beranda'), findsOneWidget);
    expect(find.text('Deteksi'), findsOneWidget);
    expect(find.text('Statistik'), findsOneWidget);
    expect(find.text('Pengaturan'), findsOneWidget);

    // Berpindah ke tab Deteksi
    await tester.tap(find.text('Deteksi'));
    await tester.pumpAndSettle();
    expect(find.text('AgriVision - Deteksi'), findsOneWidget);

    // Berpindah ke tab Pengaturan
    await tester.tap(find.text('Pengaturan'));
    await tester.pumpAndSettle();
    expect(find.text('AgriVision - Pengaturan'), findsOneWidget);
    expect(find.text('Mode Gelap'), findsOneWidget);
  });
}
