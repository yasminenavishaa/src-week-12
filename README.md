## **(2141720047) Yasmine Navisha Andhani - TI_3G**
Link Github : https://github.com/yasminenavishaa/src-week-12.git

# Jobsheet Pertemuan 12 - Asynchronous di Flutter

***
## Praktikum 1: Mengunduh Data dari Web Service (API)

### Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama books di folder src week-12 repository GitHub Anda.

Kemudian Tambahkan dependensi http dengan mengetik perintah berikut di terminal.

![Alt text](imagess/image.png)

### Langkah 2: Cek file pubspec.yaml
Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini seperti berikut.

![Alt text](imagess/image1.png)

### Langkah 3: Buka file main.dart
Ketiklah kode seperti berikut ini.

**Soal 1**: Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

![Alt text](imagess/image2.png)

### Langkah 4: Tambah method getData()
Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books.

![Alt text](imagess/image3.png)

**Soal 2**: 
* Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. 

![Alt text](imagess/image4.png)

* Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".

![Alt text](imagess/image5.png)

### Langkah 5: Tambah kode di ElevatedButton
Tambahkan kode pada onPressed di ElevatedButton seperti berikut.

![Alt text](imagess/image6.png)

Lakukan run aplikasi Flutter Anda. Anda akan melihat tampilan akhir seperti gambar berikut. Jika masih terdapat error, silakan diperbaiki hingga bisa running.

**Soal 3:**
* Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!

Jawab: 

substring() adalah metode untuk mengambil substring dari string. Substring adalah bagian dari string yang dimulai dari indeks tertentu dan berakhir pada indeks tertentu. Metode substring() menerima dua parameter, yaitu indeks awal dan indeks akhir. Indeks awal adalah indeks karakter pertama yang ingin diambil, dan indeks akhir adalah indeks karakter terakhir yang ingin diambil. catchError() adalah metode untuk menangani kesalahan. Metode catchError() menerima satu parameter, yaitu fungsi yang akan dijalankan jika terjadi kesalahan. Fungsi tersebut akan menerima objek kesalahan sebagai parameter. Kode di atas menggunakan substring() untuk mengambil 450 karakter pertama dari respons API. Jika terjadi kesalahan saat mengambil respons API, maka kode tersebut akan menggunakan catchError() untuk menampilkan pesan kesalahan "An error occurred".

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".

Jawab:

![Alt text](imagess/image7.png)

![Alt text](imagess/image8.png)

## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

### Langkah 1: Buka file main.dart
Tambahkan tiga method berisi kode seperti berikut di dalam class _FuturePageState.

![Alt text](imagess/image9.png)

### Langkah 2: Tambah method count()
Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.

![Alt text](imagess/image10.png)

### Langkah 3: Panggil count()
Lakukan comment kode sebelumnya, ubah isi kode onPressed() menjadi seperti berikut.

![Alt text](imagess/image11.png)

### Langkah 4: Run
Akhirnya, run atau tekan F5 jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.

![Alt text](imagess/image12.png)

**Soal 4**
* Jelaskan maksud kode langkah 1 dan 2 tersebut!

    Jawab: Merupakan kode Dart yang terdiri dari tiga fungsi asynchronous, yaitu returnOneAsync(), returnTwoAsync(), dan returnThreeAsync(). Ketiga fungsi ini mengembalikan nilai int dan menggunakan Future.delayed() untuk menunda eksekusi selama 3 detik.

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".

## Praktikum 3: Menggunakan Completer di Future

### Langkah 1: Buka main.dart
Pastikan telah impor package async berikut.

![Alt text](imagess/image13.png)

### Langkah 2: Tambahkan variabel dan method
Tambahkan variabel late dan method di class _FuturePageState seperti ini.

![Alt text](imagess/image14.png)

### Langkah 3: Ganti isi kode onPressed()
Tambahkan kode berikut pada fungsi onPressed(). Kode sebelumnya bisa Anda comment.

![Alt text](imagess/image15.png)

**Soal 5**
* Jelaskan maksud kode langkah 2 tersebut!

    Jawab :
    1. Variabel completer Variabel completer adalah variabel late dari tipe Completer. Variabel ini digunakan untuk menyimpan hasil dari perhitungan angka 42.
    2. Method getNumber() Method getNumber() mengembalikan nilai dari variabel completer. Method ini memiliki dua langkah: a. Inisialisasi variabel completer dengan nilai baru. b. Memanggil method calculate() untuk menghitung angka 42.
    3. Method calculate() Method calculate() menggunakan Future.delayed() untuk menunggu 5 detik sebelum menyelesaikan perhitungan angka 42. Setelah 5 detik, method ini akan memanggil method completer.complete() untuk menyelesaikan perhitungan dan mengembalikan nilai 42 ke variabel completer

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5".

![Alt text](imagess/image16.png)

### Langkah 5: Ganti method calculate()
Gantilah isi code method calculate() seperti kode berikut, atau Anda dapat membuat calculate2()

![Alt text](imagess/image17.png)

### Langkah 6: Pindah ke onPressed()
Ganti menjadi kode seperti berikut.

![Alt text](imagess/image18.png)

**Soal 6**
* Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
    Jawab: Langkah 5 Pada langkah 5, kita mengganti isi dari method calculate(). Method calculate() sebelumnya menggunakan await Future.delayed(const Duration(seconds: 5)); untuk menunggu 5 detik sebelum menyelesaikan perhitungan angka 42. Pada langkah 6, kita mengganti kode di method onPressed(). Kode ini menggunakan then() dan catchError() untuk menangani hasil dari method getNumber(). Jika tidak terjadi kesalahan, maka method ini akan memanggil method setState() untuk memperbarui state dari widget. Jika terjadi kesalahan, maka method ini akan memanggil method setState() untuk memperbarui state dari widget dan menampilkan pesan kesalahan.

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".

## Praktikum 4: Memanggil Future secara paralel

### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

![Alt text](imagess/image19.png)


### Langkah 2: Edit onPressed()
Anda bisa hapus atau comment kode sebelumnya, kemudian panggil method dari langkah 1 tersebut.

![Alt text](imagess/image20.png)

### Langkah 3: Run
Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.

**Soal 7**
* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 7".

    ![Alt text](imagess/image21.png)

### Langkah 4: Ganti variabel futureGroup
Anda dapat menggunakan FutureGroup dengan Future.wait seperti kode berikut.

![Alt text](imagess/image22.png)

**Soal 8**
* Jelaskan maksud perbedaan kode langkah 1 dan 4!

    Jawab: Perbedaan kode langkah 1 dan kode langkah 4 adalah pada penggunaan variabel futureGroup. Pada langkah 1, variabel futureGroup digunakan untuk menampung FutureGroup. FutureGroup adalah sebuah objek yang dapat digunakan untuk mengelompokkan beberapa Future bersama-sama. Sedangkan pada langkah 4, variabel futureGroup diganti dengan Future.wait(). Future.wait() adalah sebuah fungsi yang dapat digunakan untuk menunggu beberapa Future selesai dijalankan.

## Praktikum 5: Menangani Respon Error pada Async Code

### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

![Alt text](imagess/image23.png)

### Langkah 2: ElevatedButton
Ganti dengan kode berikut

![Alt text](imagess/image24.png)

### Langkah 3: Run
Lakukan run dan klik tombol GO! maka akan menghasilkan seperti gambar berikut.

![Alt text](imagess/image25.png)

**Soal 9**

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 9".

### Langkah 4: Tambah method handleError()
Tambahkan kode ini di dalam class _FutureStatePage

![Alt text](imagess/image26.png)

**Soal 10**
* Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

    Jawab: Perbedaan kode langkah 1 dan kode langkah 4 adalah pada penanganan error. Pada langkah 1, method returnError() tidak menangani error yang terjadi. Jika error terjadi, maka method tersebut akan berhenti dan tidak mengembalikan nilai apa pun. Sedangkan pada langkah 4, method handleError() menangani error yang terjadi dengan menggunakan try-catch-finally. 

## Praktikum 6: Menggunakan Future dengan StatefulWidget

### Langkah 1: install plugin geolocator
Tambahkan plugin geolocator dengan mengetik perintah berikut di terminal.

![Alt text](imagess/image27.png)

### Langkah 2: Tambah permission GPS
Jika Anda menargetkan untuk platform Android, maka tambahkan baris kode berikut di file android/app/src/main/androidmanifest.xml

![Alt text](imagess/image28.png)

### Langkah 3: Buat file geolocation.dart
Tambahkan file baru ini di folder lib project Anda.

![Alt text](imagess/image29.png)

### Langkah 4: Buat StatefulWidget
Buat class LocationScreen di dalam file geolocation.dart

![Alt text](imagess/image30.png)

### Langkah 5: Isi kode geolocation.dart

![Alt text](imagess/image31.png)

![Alt text](imagess/image32.png)

**Soal 11**
* Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

    ![Alt text](imagess/image33.png)

### Langkah 6: Edit main.dart
Panggil screen baru tersebut di file main Anda seperti berikut.

![Alt text](imagess/image34.png)

![Alt text](imagess/image35.png)

### Langkah 7: Run
Run project Anda di device atau emulator (bukan browser), maka akan tampil seperti berikut ini.

![Alt text](imagess/image36.png)

### Langkah 8: Tambahkan animasi loading
Tambahkan widget loading seperti kode berikut. Lalu hot restart, perhatikan perubahannya.

![Alt text](imagess/image37.png)

**Soal 12**
* Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));

    ![Alt text](imagess/image38.png)

* Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

    Jawab: Karena package geolocator juga support di browser, sehingga koordinat GPS juga bisa didapatkan pada browser, beserta izinnya.

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 12".

## Praktikum 7: Manajemen Future dengan FutureBuilder

### Langkah 1: Modifikasi method getPosition()
Buka file geolocation.dart kemudian ganti isi method dengan kode ini.

![Alt text](imagess/image39.png)

### Langkah 2: Tambah variabel
Tambah variabel ini di class _LocationScreenState

![Alt text](imagess/image40.png)

### Langkah 3: Tambah initState()
Tambah method ini dan set variabel position

![Alt text](imagess/image41.png)

### Langkah 4: Edit method build()
Ketik kode berikut dan sesuaikan. Kode lama bisa Anda comment atau hapus.

![Alt text](image42.png)

**Soal 13**
* Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?

    Jawab: Perbedaannya terletak pada kasus pertama, setState digunakan untuk memperbarui variabel state myPosition. Sedangkan pada kasus kedua, FutureBuilder digunakan untuk mengelola pembaruan UI secara otomatis. Namun pada akhirnya, hasil tampilan UI terlihat sama karena keduanya memiliki penundaan yang sama, yakni 3 detik.

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 13".

    Jawab: ![Alt text](imagess/image43.png)

* Seperti yang Anda lihat, menggunakan FutureBuilder lebih efisien, clean, dan reactive dengan Future bersama UI.

### Langkah 5: Tambah handling error
Tambahkan kode berikut untuk menangani ketika terjadi error. Kemudian hot restart.

![Alt text](imagess/image44.png)

**Soal 14**
* Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?

    Jawab: Langkah ini tidak mengubah tampilan UI. Hal ini karena langkah ini hanya menambahkan fungsi handleError() yang akan dijalankan jika terjadi kesalahan.

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 14".

    Jawab: ![Alt text](imagess/image45.png)

## Praktikum 8: Navigation route dengan Future Function

### Langkah 1: Buat file baru navigation_first.dart
Buatlah file baru ini di project lib Anda.

![Alt text](imagess/image52.png)

### Langkah 2: Isi kode navigation_first.dart
![Alt text](imagess/image46.png)

**Soal 15**
* Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

    Jawab: 
    
    ![Alt text](imagess/image47.png)

* Silakan ganti dengan warna tema favorit Anda.

    Jawab: 
    
    ![Alt text](imagess/image50.png)

## Langkah 3: Tambah method di class _NavigationFirstState
Tambahkan method ini.

![Alt text](imagess/image51.png)

## Langkah 4: Buat file baru navigation_second.dart
Buat file baru ini di project lib Anda. Silakan jika ingin mengelompokkan view menjadi satu folder dan sesuaikan impor yang dibutuhkan.

![Alt text](imagess/image57.png)

## Langkah 5: Buat class NavigationSecond dengan StatefulWidget
![Alt text](imagess/image54.png)

## Langkah 6: Edit main.dart
Lakukan edit properti home.

![Alt text](imagess/image55.png)

## Langkah 8: Run
Lakukan run, jika terjadi error silakan diperbaiki.

**Soal 16**
* Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
    
* Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!

    Jawab:

    ![Alt text](imagess/image56.png)

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 16".

Hasilnya akan seperti gambar berikut ini.

![Alt text](imagess/image59.png)

## Praktikum 9: Memanfaatkan async/await dengan Widget Dialog

### Langkah 1: Buat file baru navigation_dialog.dart
Buat file dart baru di folder lib project Anda.

![Alt text](imagess/image58.png)

### Langkah 2: Isi kode navigation_dialog.dart
![Alt text](imagess/image60.png)

### Langkah 3: Tambah method async
![Alt text](imagess/image61.png)

### Langkah 4: Panggil method di ElevatedButton
![Alt text](imagess/image63.png)

### Langkah 5: Edit main.dart
Ubah properti home

![Alt text](imagess/image62.png)

### Langkah 6: Run
Coba ganti warna background dengan widget dialog tersebut. Jika terjadi error, silakan diperbaiki. Jika berhasil, akan tampil seperti gambar berikut.

![Alt text](imagess/image64.png)

![Alt text](imagess/image65.png)

**Soal 17**
* Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
* Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!

    Jawab: 

    ![Alt text](imagess/image65.png)

    ![Alt text](imagess/image66.png)

    ![Alt text](imagess/image67.png)

    ![Alt text](imagess/image68.png)

* Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 17".
