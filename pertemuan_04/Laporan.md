# **Tugas Praktikum : Pengantar Bahasa Pemrograman Dart - Bagian 3**
## SOAL 1
Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
### Praktikum 1: Eksperimen Tipe Data List
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.
#### Langkah 1:
Ketik atau salin kode program berikut ke dalam void main().
```Dart
void main(){
  var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);

list[1] = 1;
assert(list[1] == 1);
print(list[1]);
}
```
#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
Output:
>3
2
1

Jawab : Program ini membuat list dengan nilai [1, 2, 3]. Kemudian mengecek bahwa panjang list sudah benar. 
#### Langkah 3:
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
```Dart
void main() {
 
  final List<dynamic> list = List.filled(5, null);
  
  list[1] = "Rizky Fitri Andini"; 
  list[2] = "22417201720";

  print(list);
}
```
Output:
>pertemuan_04/src/main1.dart:3:13: Error: A value of type 'String' can't be assigned to a variable of type 'Null'.
  list[0] = "Rizky Fitri Andini";
            ^
pertemuan_04/src/main1.dart:4:13: Error: A value of type 'String' can't be assigned to a variable of type 'Null'.
  list[1] = "2241720170";
            ^
pertemuan_04/src/main1.dart:10:13: Error: A value of type 'int' can't be assigned to a variable of type 'Null'.
  list[1] = 1;
            ^

Akan terjadi error karena nilainya berupa string. Berikut kode yang telah diperbaiki:
```Dart
void main() {
  final list = [];
  list.add("Rizky Fitri Andini");
  list.add("2241720170");
  print(list);
  print(list[0]);
  print(list[1]);
}
```
Output:
>[Rizky Fitri Andini, 2241720170]
Rizky Fitri Andini
2241720170
### Praktikum 2: Eksperimen Tipe Data Set
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.
#### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
```Dart
void main(){
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
}
```
#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Output:
>{fluorine, chlorine, bromine, iodine, astatine}
#### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```Dart
void main(){
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
print(names3);
}
```

Output:
>{}
{}
{}

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.
```Dart
void main(){
  //set
 var names1 = <String>{};  // Set kosong untuk names1
  Set<String> names2 = {};  // Set kosong untuk names2
  
  // Menambahkan elemen nama dan NIM menggunakan .add() untuk names1
  names1.add("Rizky Fitri Andini");
  names1.add("2241720170");

  // Menambahkan elemen nama dan NIM menggunakan .addAll() untuk names2
  names2.addAll(["Rizky Fitri Andini", "2241720170"]);

  // Mencetak hasil kedua Set
  print(names1);
  print(names2);
}
```
Output:
>{Rizky Fitri Andini, 2241720170}
{Rizky Fitri Andini, 2241720170}

### Praktikum 3: Eksperimen Tipe Data Maps
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.
#### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
```Dart
void main(){
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
}
```
#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Output:
>{first: partridge, second: turtledoves, fifth: 1}
{2: helium, 10: neon, 18: 2}
Tidak ada error yang terjadi, karena Dart mendukung heterogenitas dalam map untuk value-nya, dan berhasil mencetak kedua map tersebut ke output.
#### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```Dart
void main(){
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Output:
>{first: partridge, second: turtledoves, fifth: golden rings}
{2: helium, 10: neon, 18: argon}

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2). Dokumentasikan hasilnya dan buat laporannya!
```Dart
void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon'
  };

  var mhs1 = Map<String, String>();
  mhs1['Nama'] = 'Rizky Fitri Andini';  
  mhs1['NIM'] = '2241720170';            

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Rizky Fitri Andini';       
  mhs2[2] = '2241720170';                

  gifts['Nama'] = 'Rizky Fitri Andini';
  gifts['NIM'] = '2241720170';

  nobleGases[1] = 'Rizky Fitri Andini';
  nobleGases[123] = '2241720170';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}

```
Output:
>{first: partridge, second: turtledoves, fifth: golden rings, Nama: Rizky Fitri Andini, NIM: 2241720170}
{2: helium, 10: neon, 18: argon, 1: Rizky Fitri Andini, 123: 2241720170}
{Nama: Rizky Fitri Andini, NIM: 2241720170}
{1: Rizky Fitri Andini, 2: 2241720170}

### Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.
#### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
```Dart
void main(){
    var list = [1, 2, 3];
    var list2 = [0, ...list];
    print(list1);
    print(list2);
    print(list2.length);
}
```
#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Output:
>pertemuan_04/src/main4.dart:4:7: Error: Undefined name 'list1'.
print(list1);
      ^^^^^

Terjadi error karena list1 belum dideklarasikan. Berikut kode yang diperbaiki:
```Dart
void main() {
    var list1 = [1, 2, 3];
    var list2 = [0, ...list1];
    print(list1);
    print(list2);
    print(list2.length);
}
```
Output:
>[1, 2, 3]
[0, 1, 2, 3]
4
#### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```Dart
void main{
    list1 = [1, 2, null];
    print(list1);
    var list3 = [0, ...?list1];
    print(list3.length);
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!
Output:
>pertemuan_04/src/main4.dart:8:16: Error: The value 'null' can't be assigned to a variable of type 'int' because 'int' is not nullable.
list1 = [1, 2, null];
               ^

Terjadi error karena nilai yang diinput null tidak dapat ditetapkan ke variabel bertipe int, karena int tidak dapat menampung nilai null. Berikut kode yang diperbaiki:
```Dart
void main{
    var list1 = [1, 2, 3];
    var list2 = [0, ...list1];
    print(list1);
    print(list2);
    print(list2.length);
    list1 = [1, 2, null];
    print(list1);
    var list3 = [0, ...?list1];
    print(list3.length);
}
```
Output:
>[1, 2, 3]
[0, 1, 2, 3]
4
[1, 2]
[0, 1, 2, 2241720170]
4

#### Langkah 4:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

**promoActive = true**
```Dart
void main(){
    promoActive = true
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);
}
```
Output:
>[Home, Furniture, Plants, Outlet]

**promoActive = false**
```Dart
void main(){
    promoActive = true
    var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
    print(nav);
}
```
>[Home, Furniture, Plants]

Kode di atas menunjukkan bagaimana perilaku daftar nav berubah berdasarkan nilai promoActive. 
#### Langkah 5:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```Dart
var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.
Output jika var login = 'Manager':
>[Home, Furniture, Plants, Inventory]

Output jika var login = 'Admin':
>[Home, Furniture, Plants]

Data yang ada pada nav menyesuaikan dengan data yang diinputkan pada login. 
#### Langkah 6:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```Dart
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.
Output:
>[#0, #1, #2, #3]

Collection for di Dart adalah fitur yang memungkinkan untuk membuat dan menginisialisasi koleksi (seperti list, set, atau map) secara dinamis dan lebih efisien dengan menggunakan loop.

### Praktikum 5: Eksperimen Tipe Data Records
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.
#### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
```Dart
var record = ('first', a: 2, b: true, 'last');
print(record)
```
#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Output:
>pertemuan_04/src/main5.dart:3:13: Error: Expected ';' after this.
print(record)
            ^

Perlu menambahkan ; diakhir kode
```Dart
var record = ('first', a: 2, b: true, 'last');
print(record);
```
Output:
>(first, last, a: 2, b: true)

Kode tersebut disimpan datanya ke dalam record kemudian ditampilkan sesuai urutan tipe data.
#### Langkah 3:
Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.
```Dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.
>Outputnya akan kosong karena tidak ada nilai yang ingin ditukar pada main().

Kode yang diperbaiki:
```Dart
void main() {
  var recordInt = (2, 7);
  print(recordInt);
  print(tukar(recordInt));
  
}
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```
Output:
>(2, 7)
(7, 2)
#### Langkah 4:
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
```Dart
// Record type annotation in a variable declaration:
(String, int) mahasiswa;
print(mahasiswa); 
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!
Output:
>pertemuan_04/src/main5.dart:10:7: Error: Non-nullable variable 'mahasiswa' must be assigned before it can be used.
print(mahasiswa);
      ^^^^^^^^^
Kode:
```Dart
  (String, int) mahasiswa = ("Rizky Fitri Andini", 2241720170);
  print(mahasiswa);
```
Output:
>(Rizky Fitri Andini, 2241720170)
#### Langkah 5:
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.
```Dart
var mahasiswa2 = ('first', a: 2, b: true, 'last');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!
Output:
>first
2
true
last

Kode yang dimodif:
```Dart
var mahasiswa2 = ('Rizky Fitri Andini', '2241720170', a: 2, b: true, 'last');

print(mahasiswa2.$1); 
print(mahasiswa2.$2);
print(mahasiswa2.a);
print(mahasiswa2.b); 
print(mahasiswa2.$3); 
```
## SOAL 2
Jelaskan yang dimaksud Functions dalam bahasa Dart!
Jawab: Dart adalah bahasa berorientasi objek yang sebenarnya, sehingga functions pun adalah objek dan memiliki tipe, Function. Ini berarti bahwa functions dapat ditetapkan ke variabel atau diteruskan sebagai argumen ke functions lain. Juga dapat memanggil instance dari kelas Dart seolah-olah itu adalah fungsi. 
## SOAL 3
Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
Jawab:
1. Positional Parameters 
Parameter yang harus diberikan sesuai urutan yang ditentukan saat mendefinisikan fungsi. Positional parameters adalah parameter wajib yang perlu diisi. contoh:
```Dart
void greet(String name, int age) {
  print('Hello $name, you are $age years old.');
}
greet('Rizky', 25); // Output: Hello Rizky, you are 25 years old.
```
2. Optional Positional Parameters
Parameter yang bersifat opsional dan ditempatkan dalam kurung siku []. Jika nilai parameter tidak diberikan, ia akan bernilai null secara default kecuali diberi nilai default. Contoh:
```Dart
void greet(String name, [int? age]) {
  print('Hello $name, you are ${age ?? 'unknown'} years old.');
}

greet('Rizky'); // Output: Hello Rizky, you are unknown years old.
greet('Rizky', 25); // Output: Hello Rizky, you are 25 years old.
```
3. Named Parameters
Parameter ini diberikan dalam kurung kurawal {} dan dipanggil menggunakan nama parameter. Secara default, parameter ini opsional kecuali ditandai sebagai required. Jika tidak diberi nilai default, parameter bernama harus bertipe nullable (null). Contoh:
```Dart
void enableFlags({bool? bold, bool? hidden}) {
  print('Bold: $bold, Hidden: $hidden');
}

enableFlags(bold: true, hidden: false); // Output: Bold: true, Hidden: false
```
## SOAL 4
Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
Jawab: Maksud Functions sebagai first-class object ini berarti bahwa fungsi dapat disimpan dalam variabel, diteruskan sebagai parameter ke fungsi lain, dan dikembalikan oleh fungsi lain. Dart memungkinkan fungsi untuk diperlakukan sebagai objek, yang membuatnya sangat fleksibel dalam berbagai situasi pemrograman. Contoh:
```Dart
void printElement(int element) {
  print(element);
}

var list = [1, 2, 3];

// Meneruskan printElement sebagai parameter.
list.forEach(printElement);
```
## SOAL 5
Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
Jawab: Anonymous Functions (disebut juga lambda atau closures) adalah fungsi yang tidak memiliki nama. Dalam Dart (dan banyak bahasa pemrograman lainnya), fungsi anonim digunakan ketika kita hanya membutuhkan fungsi sekali atau di tempat di mana tidak perlu membuat fungsi dengan nama tertentu. Biasanya, mereka digunakan sebagai argumen untuk fungsi yang menerima fungsi lain sebagai parameter, atau di dalam konteks di mana fungsi hanya digunakan di satu tempat.
## SOAL 6
Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
Jawab:
1. Lexical Scope:
Lexical scope (atau scoping leksikal) mengacu pada bagaimana Dart (dan bahasa pemrograman lainnya dengan lexically scoped) menentukan di mana sebuah variabel bisa diakses berdasarkan tata letak kode. Scope atau ruang lingkup variabel didefinisikan oleh posisi variabel tersebut di dalam blok kode (misalnya dalam fungsi atau kurung kurawal {}). Contoh:
```Dart
bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}
```
2. Lexical Closures:
Lexical closures (atau sering disebut closures) adalah fungsi yang "menutup" atau mengikat variabel dari lingkup luar di mana fungsi tersebut didefinisikan. Ini berarti bahwa meskipun fungsi dipanggil di luar lingkup di mana variabel awalnya didefinisikan, fungsi masih mengingat nilai variabel tersebut. Contoh:
```Dart
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
```
## SOAL 7
Jelaskan dengan contoh cara membuat return multiple value di Functions!
Di Dart, setiap fungsi mengembalikan sebuah nilai. Jika tidak ada nilai yang ditentukan untuk dikembalikan, secara otomatis akan dikembalikan null. Untuk mengembalikan beberapa nilai dari suatu fungsi,  dapat menggunakan struktur data seperti record. Record memungkinkan untuk menggabungkan beberapa nilai yang berbeda dalam satu objek yang dapat dikembalikan. Contoh:
```Dart
(String, int) multiplereturn() {
  return ('Laptop', 1500);
}
void main() {
 print(multipleReturn());
}
```
