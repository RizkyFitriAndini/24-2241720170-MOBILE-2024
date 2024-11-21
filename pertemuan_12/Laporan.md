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