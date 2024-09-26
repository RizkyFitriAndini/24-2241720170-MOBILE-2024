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
