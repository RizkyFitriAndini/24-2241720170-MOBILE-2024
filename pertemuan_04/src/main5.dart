void main() {
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);
  // var recordInt = (2, 7);
  // print(recordInt);
  // print(tukar(recordInt));

// Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ("Rizky Fitri Andini", 2241720170);
  // print(mahasiswa);

var mahasiswa2 = ('Rizky Fitri Andini', '2241720170', a: 2, b: true, 'last');

print(mahasiswa2.$1); 
print(mahasiswa2.$2);
print(mahasiswa2.a);
print(mahasiswa2.b); 
print(mahasiswa2.$3); 
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
