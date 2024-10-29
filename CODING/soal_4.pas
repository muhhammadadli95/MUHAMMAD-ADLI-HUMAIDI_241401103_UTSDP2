program prima;
uses crt;

var
  n, i, j: integer;
  bilPrima: boolean;
  lanjut: boolean;
  jawaban: string;
begin
lanjut:= true;
clrscr;
while lanjut do 
begin
write('n= ');
readln(n); 
writeln('Bilangan prima antara 1 dan ', n, ' adalah:');

for i := 2 to n do
begin
bilPrima := true;
for j := 2 to i div 2 do
begin
if i mod j = 0 then
begin
bilPrima := false;
break;
end;
end;
if bilPrima then
write(i, ' ');
end;
writeln;
write('lagi?(yes/no)');
readln(jawaban);

if (jawaban = 'no') or (jawaban = 'NO') or (jawaban = 'No') then
begin
lanjut := false;
end;
end;
readln;
end.
