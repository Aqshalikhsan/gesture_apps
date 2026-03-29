# Aplikasi Pembelajaran Gesture (Flutter)

Aplikasi ini merupakan media pembelajaran interaktif berbasis Flutter untuk memahami berbagai jenis gesture (sentuhan) pada aplikasi mobile. Pengguna dapat mempelajari bagaimana interaksi seperti tap, drag, hingga pinch-to-zoom bekerja secara langsung melalui simulasi.

---

## Deskripsi

Gesture adalah bentuk interaksi pengguna dengan layar perangkat menggunakan sentuhan, baik satu jari maupun multi-touch. Dalam pengembangan aplikasi mobile, gesture sangat penting untuk meningkatkan pengalaman pengguna (user experience).

Aplikasi ini dirancang untuk:

* Memberikan pemahaman konsep gesture secara praktis
* Menyediakan simulasi interaktif
* Menjadi media pembelajaran dasar hingga lanjutan

---

## Fitur Utama

* Deteksi Tap
* Deteksi Double Tap
* Deteksi Long Press
* Drag / Pan (pergeseran objek)
* Scale / Zoom (pinch gesture)
* Playground interaktif untuk eksplorasi gesture
* Dukungan multi-platform (Android, Web, Desktop terbatas)

---

## Konsep Gesture yang Digunakan

### 1. Tap Gesture

Tap adalah sentuhan tunggal pada layar.

Fungsi:

* Digunakan untuk memilih atau menekan tombol
* Interaksi paling dasar dalam aplikasi

Implementasi:

```dart
onTap: () {}
```

---

### 2. Double Tap Gesture

Double tap adalah dua kali sentuhan cepat.

Fungsi:

* Digunakan untuk aksi cepat seperti zoom atau like
* Memberikan shortcut interaksi

Implementasi:

```dart
onDoubleTap: () {}
```

---

### 3. Long Press Gesture

Long press adalah sentuhan yang ditahan beberapa saat.

Fungsi:

* Menampilkan menu tambahan
* Memberikan opsi lanjutan

Implementasi:

```dart
onLongPress: () {}
```

---

### 4. Drag / Pan Gesture

Gesture ini digunakan untuk menggeser objek.

Fungsi:

* Memindahkan objek di layar
* Digunakan pada aplikasi seperti peta atau game

Implementasi:

```dart
onPanUpdate: (details) {}
```

---

### 5. Scale Gesture (Pinch to Zoom)

Gesture ini menggunakan dua jari untuk memperbesar atau memperkecil objek.

Fungsi:

* Zoom gambar atau objek
* Navigasi pada peta atau media

Implementasi:

```dart
onScaleUpdate: (details) {}
```

Catatan:
Gesture ini juga mencakup pergerakan (drag), sehingga tidak perlu menggunakan onPanUpdate secara bersamaan.

---

### 6. Gesture Kombinasi (Scale + Drag)

Dalam aplikasi ini digunakan pendekatan:

* Scale untuk zoom
* FocalPointDelta untuk drag

Implementasi:

```dart
scale = previousScale * details.scale;
position += details.focalPointDelta;
```

---

## Mode Playground

Halaman Playground merupakan fitur utama untuk eksplorasi gesture secara bebas.

Fungsi:

* Mengubah warna objek menggunakan tap
* Menggeser objek dengan drag
* Melakukan zoom dengan pinch
* Mengatur ulang kondisi dengan tombol reset

Tujuan:
Memberikan pengalaman belajar langsung melalui interaksi nyata.

---

## Struktur Project

```
lib/
│
├── main.dart
├── home_page.dart
│
├── pages/
│   ├── tap_page.dart
│   ├── drag_page.dart
│   ├── scale_page.dart
│   └── playground_page.dart
```

---

## Cara Menjalankan

1. Clone repository:

```
git clone https://github.com/username/gesture-learning-app.git
cd gesture-learning-app
```

2. Install dependency:

```
flutter pub get
```

3. Jalankan aplikasi:

```
flutter run
```

---

## Build APK

Untuk membuat file APK:

```
flutter build apk --release
```

Hasil APK berada di:

```
build/app/outputs/flutter-apk/app-release.apk
```

---

## Dukungan Platform

| Platform | Status         |
| -------- | -------------- |
| Android  | Didukung penuh |
| iOS      | Didukung       |
| Web      | Terbatas       |
| Desktop  | Terbatas       |

Catatan:
Gesture multi-touch seperti pinch lebih optimal pada perangkat mobile dibandingkan desktop.

---

## Pengembangan Selanjutnya

* Integrasi kecerdasan buatan untuk pengenalan gesture
* Sistem pembelajaran adaptif
* Mode latihan berbasis tantangan
* Analisis perilaku pengguna
* Pengembangan UI/UX yang lebih modern

---

## Penulis

Nama: [Isi Nama Anda]
Bidang: Flutter Developer dan Artificial Intelligence

---

## Lisensi

Proyek ini menggunakan lisensi MIT.
