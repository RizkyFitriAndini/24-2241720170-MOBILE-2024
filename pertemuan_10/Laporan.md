<table>
    <thead>
        <th style="text-align: center;" colspan="2">Pertemuan 10</th>
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

# Pertemuan #10 | Dasar State Management
## Praktikum 1
Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda.
### Langkah 1
Buat sebuah project flutter baru dengan nama `master_plan` di folder src week-10 
![image](./doc/01.png)
![image](./doc/02.png)

### Langkah 2
Buat file bernama `task.dart` dan buat `class Task`
![image](./doc/03.png)

### Langkah 3
Buat file `plan.dart` di dalam folder models 
![image](./doc/04.png)

### Langkah 4
Buat file bernama `data_layer.dart` di folder models
![image](./doc/05.png)

### Langkah 5
Ubah isi kode `main.dart`
![image](./doc/06.png)

### Langkah 6
Pada folder views, buat sebuah file `plan_screen.dart`
![image](./doc/07.png)

### Langkah 7
Tambah kode berikut di bawah method build di dalam class `_PlanScreenState`
![image](./doc/08.png)

### Langkah 8
Buat widget `ListView` seperti kode berikut ini.
![image](./doc/09.png)

### Langkah 9
Buat widget `_buildTaskTile`
![image](./doc/10.png)

### Langkah 10
Pada file `plan_screen.dart`, tambahkan variabel scroll controller di class State tepat setelah variabel `plan`
![image](./doc/11.png)

### Langkah 11
Tambahkan method `initState()` setelah deklarasi variabel `scrollController`
![image](./doc/12.png)

### Langkah 12
Tambahkan controller dan keyboard behavior pada `ListView` di method `_buildList`
![image](./doc/13.png)

### Langkah 13
Tambahkan method dispose()
![image](./doc/14.png)

### Langkah 14
Hasil:
![output](./doc/15.gif)

## Tugas 1
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
![output](./doc/16.gif)

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

6.  laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

## Praktikum 2
Pada codelab ini, kita akan memperbarui kode dari aplikasi Master Plan dengan memisahkan data todo list ke luar class view-nya.
### Langkah 1
Buat file dengan nama plan_provider.dart di dalam folder baru yaitu provider 
![image](./doc/17.png)

### Langkah 2
Edit main.dart
![image](./doc/18.png)

### Langkah 3
Tambah method pada model plan.dart
![image](./doc/19.png)

### Langkah 4
Edit PlanScreen agar menggunakan data dari PlanProvider
![image](./doc/20.png)

### Langkah 5
Hasil
![output](./doc/26.gif)

## Tugas 2
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.

2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
 
5. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

## Praktikum 3
Pada codelab ini, Anda akan menambah screen lain pada aplikasi Master Plan sehingga bisa membuat kelompok daftar plan lebih dari satu.
### Langkah 1
Edit class PlanProvider
![image](./doc/21.png)

### Langkah 2
Edit main.dart
![image](./doc/22.png)

### Langkah 3
Edit plan_screen.dart
![image](./doc/23.png)

### Langkah 4
Buat screen baru
![image](./doc/25.png)

### Langkah 5
Buat file plan_creator_screen.dart
![image](./doc/24.png)

### Langkah 6
Hasil
![output](./doc/27.gif)
