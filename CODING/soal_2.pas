program soal_2.pas;
uses crt;
var 
angka1, angka2, angka3, total: integer;
nilai_rata: real;

begin
    clrscr;
    write('masukkan angka pertama: ');
    readln(angka1);
    write('masukkan angka kedua: ');
    readln(angka2);
    write('masukkan angka ketiga: ');
    readln(angka3);
total:= angka1 + angka2 + angka3;
nilai_rata:= total/3;
writeln;
writeln('jumlah total: ',total);
writeln('Rata-rata: ',nilai_rata:0:2);
readln;
end.