void main(){
  // //map
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

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