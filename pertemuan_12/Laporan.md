<table>
    <thead>
        <th style="text-align: center;" colspan="2">Pertemuan 12</th>
    </thead>
    <tbody>
        <tr>
            <td>Nama</td>
            <td>Rizky Fitri Andini</td>
        </tr>
        <tr>
            <td>Nim</td>
            <td>2241720170</td>
        </tr>
    </tbody>
</table>

# Pertemuan 12 | Lanjutan State Management dengan Streams
Pada codelab ini, Anda akan mempelajari tentang streams dan BLoC di Flutter beserta contoh penggunaannya. Cara kerja, manfaat, dan cara mengelola state lebih lanjut.
## Praktikum 1: Dart Streams
Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda (ketik di README.md) pada setiap soal yang ada di beberapa langkah praktikum ini.
### Langkah 1: Buat Project Baru
![image](./doc/01.png)
### Langkah 2: Buka file main.dart
![image](./doc/02.png)
### Langkah 3: Buat file baru stream.dart
![image](./doc/03.png)
### Langkah 4: Tambah variabel colors
![image](./doc/04.png)
### Langkah 5: Tambah method getColors()
![image](./doc/05.png)
### Langkah 6: Tambah perintah yield*
![image](./doc/06.png)
>Perintah `yield` digunakan untuk menghasilkan nilai sementara dari sebuah fungsi generator dalam Dart, memungkinkan fungsi tersebut untuk menghentikan sementara eksekusinya dan melanjutkan kembali saat nilai berikutnya diminta. Dalam kode tersebut, fungsi `getColors()` adalah fungsi generator yang mengembalikan stream dari nilai warna (`Color`) secara periodik. Dengan menggunakan `Stream.periodic`, fungsi ini menghasilkan nilai baru setiap detik, di mana warna diambil dari daftar `colors` berdasarkan indeks yang dihitung dari waktu (`t % colors.length`). 
### Langkah 7: Buka main.dart
![image](./doc/07.png)
### Langkah 8: Tambah variabel
![image](./doc/08.png)
### Langkah 9: Tambah method changeColor()
![image](./doc/09.png)
### Langkah 10: Lakukan override initState()
![image](./doc/10.png)
### Langkah 11: Ubah isi Scaffold()
![image](./doc/11.png)
### Langkah 12: Run
![image](./doc/12.gif)
### Langkah 13: Ganti isi method changeColor()
![image](./doc/13.png)
>`listen` digunakan untuk menangani stream dengan cara berlangganan (subscription), di mana setiap data baru yang masuk akan diproses menggunakan callback tanpa memblokir eksekusi kode lainnya. Sebaliknya, `await for` digunakan dalam kombinasi dengan `async` untuk membaca data dari stream secara berurutan dalam bentuk loop, menunggu setiap item selesai sebelum melanjutkan. `listen` lebih cocok untuk event-driven programming dengan pengaturan tambahan seperti error handling, sedangkan `await for` lebih sederhana dan sesuai untuk memproses semua elemen stream secara terstruktur.

## Praktikum 2: Stream controllers dan sinks
Setelah Anda menyelesaikan praktikum 1, Anda dapat melanjutkan praktikum 2 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.
### Langkah 1: Buka file stream.dart
![image](./doc/14.png)
### Langkah 2: Tambah class NumberStream
![image](./doc/15.png)
### Langkah 3: Tambah StreamController
![image](./doc/16.png)
### Langkah 4: Tambah method addNumberToSink
![image](./doc/17.png)
### Langkah 5: Tambah method close()
![image](./doc/18.png)
### Langkah 6: Buka main.dart
![image](./doc/19.png)
### Langkah 7: Tambah variabel
![image](./doc/20.png)
### Langkah 8: Edit initState()
![image](./doc/21.png)
### Langkah 9: Edit dispose()
![image](./doc/22.png)
### Langkah 10: Tambah method addRandomNumber()
![image](./doc/23.png)
### Langkah 11: Edit method build()
![image](./doc/24.png)
### Langkah 12: Run
![image](./doc/25.gif)
>Langkah 8 memastikan bahwa stream dapat mendengarkan data baru, sedangkan Langkah 10 menyediakan mekanisme untuk menambahkan data tersebut ke dalam stream. Kombinasi keduanya memungkinkan aplikasi untuk mendukung interaksi pengguna yang dinamis dengan data real-time.
### Langkah 13: Buka stream.dart
![image](./doc/26.png)
### Langkah 14: Buka main.dart
![image](./doc/27.png)
### Langkah 15: Edit method addRandomNumber()
![image](./doc/28.png)
>- addError(): Menambahkan error ke dalam aliran data.
>- Listener dengan onError: Menangkap error dari stream dan memperbarui UI untuk menunjukkan adanya kesalahan.
>- addRandomNumber(): Mengubah fungsinya untuk memicu error ke dalam stream, menggantikan penambahan angka acak.
## Praktikum 3: Injeksi data ke streams
Setelah Anda menyelesaikan praktikum 2, Anda dapat melanjutkan praktikum 3 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.
### Langkah 1: Buka main.dart
![image](./doc/29.png)
### Langkah 2: Tambahkan kode ini di initState
![image](./doc/31.png)
### Langkah 3: Tetap di initState
![image](./doc/30.png)
### Langkah 4: Run
![image](./doc/32.gif)
>Langkah-langkah tersebut menambahkan fitur transformasi pada sebuah Stream di aplikasi Dart. Pertama, dengan mendeklarasikan variabel `transformer` sebagai `StreamTransformer`, kita membuat objek yang akan mengubah data dalam stream. Di dalam `initState`, transformer diatur untuk mengalikan nilai yang diterima dengan 10 di bagian `handleData`, dan menetapkan nilai -1 jika terjadi error di bagian `handleError`. Langkah terakhir adalah menghubungkan transformer ke stream yang sedang diawasi. Saat data diterima, transformasi akan diterapkan. Jika terjadi kesalahan, penanganan error akan mengubah nilai `lastNumber` menjadi -1, yang menandakan adanya masalah pada stream. Ini memberikan kontrol lebih dalam mengelola data masuk dan menangani error selama proses observasi stream.
## Praktikum 4: Subscribe ke stream events
Setelah Anda menyelesaikan praktikum 3, Anda dapat melanjutkan praktikum 4 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.
### Langkah 1: Tambah variabel
![image](./doc/33.png)
### Langkah 2: Edit initState()
![image](./doc/34.png)
### Langkah 3: Tetap di initState()
![image](./doc/35.png)
### Langkah 4: Tambah properti onDone()
![image](./doc/37.png)
### Langkah 5: Tambah method baru
![image](./doc/36.png)
### Langkah 6: Pindah ke method dispose()
![image](./doc/38.png)
### Langkah 7: Pindah ke method build()
![image](./doc/39.png)
### Langkah 8: Edit method addRandomNumber()
![image](./doc/40.png)
### Langkah 9: Run
![image](./doc/41.gif)
>Pada Langkah 2, fungsi `initState` menginisialisasi aliran data (stream) menggunakan `StreamController` dari `NumberStream`. Aliran tersebut didengarkan melalui `subscription`, yang memperbarui UI saat event baru diterima, menangani error dengan mengatur `lastNumber` menjadi `-1`, dan mencetak pesan saat stream selesai. 
>Langkah 6 memastikan resource dikelola dengan baik melalui fungsi `dispose`, di mana `subscription` dibatalkan (canceled) untuk menghentikan pendengaran stream saat widget dihapus. 
>Langkah 9 berfungsi untuk menambahkan angka acak (0–9) ke aliran stream jika stream masih aktif, atau mengatur `lastNumber` menjadi `-1` jika stream sudah ditutup.
## Praktikum 5: Multiple stream subscriptions
Setelah Anda menyelesaikan praktikum 4, Anda dapat melanjutkan praktikum 5 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.
### Langkah 1: Buka file main.dart
![image](./doc/42.png)
### Langkah 2: Edit initState()
![image](./doc/44.png)
### Langkah 3: Run
![image](./doc/43.png)
>Error StateError (Bad state: Stream has already been listened to.) terjadi karena mencoba (listen) sebuah single-subscription stream lebih dari satu kali. Secara default, sebuah StreamController di Dart menghasilkan single-subscription stream, yang berarti hanya satu pendengar yang diperbolehkan pada stream tersebut.
### Langkah 4: Set broadcast stream
![image](./doc/45.png)
### Langkah 5: Edit method build()
![image](./doc/46.png)
### Langkah 6: Run
![image](./doc/47.gif)
## Praktikum 6: StreamBuilder
Setelah Anda menyelesaikan praktikum 5, Anda dapat melanjutkan praktikum 6 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.
### Langkah 1: Buat Project Baru
![image](./doc/50.png)
### Langkah 2: Buat file baru stream.dart
![image](./doc/49.png)
### Langkah 3: Tetap di file stream.dart
![image](./doc/51.png)
### Langkah 4: Edit main.dart
![image](./doc/52.png)
### Langkah 5: Tambah variabel
![image](./doc/53.png)
### Langkah 6: Edit initState()
![image](./doc/54.png)
### Langkah 7: Edit method build()
![image](./doc/55.png)
### Langkah 8: Run
![image](./doc/56.gif)
>- Langkah 3 : Membuat stream angka acak (0–9) yang dipancarkan setiap 1 detik menggunakan Stream.periodic.
>- Langkah 7 : Mendengarkan data dari numberStream dan memperbarui UI setiap kali data baru diterima. Menampilkan angka terakhir dalam teks besar (font size 96) di tengah layar.