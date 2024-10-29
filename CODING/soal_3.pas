program soal_3.pas;
uses crt;
var 
tinggi, baris, kolom: integer;

begin 
clrscr;
write('tinggi segitiga: ');
readln(tinggi);

for baris:= 0 to tinggi do 
begin 
for kolom:= 1 to baris do 
begin 
  if kolom mod 2 = 1 then
write('1')
else 
write('0');
end;
writeln;
end;
readln;
end.
