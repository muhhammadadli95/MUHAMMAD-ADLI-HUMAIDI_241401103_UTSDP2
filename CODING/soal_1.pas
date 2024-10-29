program soal_1;
uses crt;

var
  nama, hari, keanggotaan: string;
  totalHarga, diskon, totalDiskon, hargaSetelahDiskon: real;
  jumlahProduk, pilihanProduk, poin: integer;
  

begin
  clrscr;
  
  writeln('Program Kasir Supermarket');
  writeln('==========================');
  writeln;
  
  write('Nama Anggota: ');
  readln(nama);
  write('Hari (Senin/ Selasa/ Rabu/ Kamis): ');
  readln(hari);
  write('Apakah Anda member? (ya/tidak): ');
  readln(keanggotaan);
  writeln;
  totalHarga := 0;
  diskon := 0;
  writeln('====produk yang kami sediakan====');
  writeln;
  writeln('1: Pasta gigi - Rp16.000/pcs');
  writeln('2: Sabun - Rp7.000/pcs');
  writeln('3: Es krim - Rp20.000/pcs');
  write('Pilih produk nomor: ');
  readln(pilihanProduk);
  write('Jumlah produk: ');
  readln(jumlahProduk);
  

case pilihanProduk of
  1: totalHarga := totalHarga + (16000 * jumlahProduk);
  2: totalHarga := totalHarga + (7000 * jumlahProduk);
  3: totalHarga := totalHarga + (20000 * jumlahProduk);
end;

  
  if (hari = 'Senin') and (pilihanProduk = 1) then
    diskon := 10
  else if (hari = 'Selasa') and (pilihanProduk = 3) then
    diskon := 5
  else if (hari = 'Rabu') and (pilihanProduk = 3) then
    diskon := 30
  else if (hari = 'Kamis') and (pilihanProduk = 2) then
    diskon := 8;
  
  
  if keanggotaan = 'ya' then
    diskon := diskon + 10;

  if jumlahProduk >= 10 then
    diskon := diskon + 5;
  

  totalDiskon := totalHarga * (diskon / 100);
  hargaSetelahDiskon := totalHarga - totalDiskon;
  
  poin := trunc(hargaSetelahDiskon / 50000);

  writeln;
  writeln('Total: Rp', totalHarga:0:2);
  writeln('Diskon: ', diskon:0:0, '%');
  writeln('Total Diskon: Rp', totalDiskon:0:2);
  writeln('Pembayaran: Rp', hargaSetelahDiskon:0:2);
  writeln('Poin: ', poin);

readln;
end.
