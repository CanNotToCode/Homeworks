const n = 9;
type 
 Mass = array [1..3, 1..9] of real;
var
  j, i,l: integer;
  h, b, x, a, sum, max: real;
  Ar: array [1..3] of real; {массив, содержащий значения а}
  Rez:  Mass;{двумерный массив, хранящий значения функции}
  
function F( var a, x: real;i,j:integer): real;
begin
for i := 1 to 3 do
   begin
    for j := 1 to n do
     begin
      if (a < 0) then
         begin
          Rez[i,j] := ln(1 + a * a + x * x) - 1;{в зависимости от значения а находится значение функции по формуле:}
         end;
      if (a >= 0) then 
        begin
         Rez [i,j] := ln(1 + 2 * a + x * x) + 1;
        end;
     end;
   end;
  F := Rez [i, j];
  writeln(Rez[i,j]);
end;

function Fi(Rez: Mass; i:integer): real;{функция, находяшая сумму модулей элементов i-ой строки }
var k:real;
 j:integer; 
 begin
  k:=0;
  i:=l;
  for j := 1 to n do
   begin
   k := k + abs ( Rez [i,j] ); 
   end;
  Fi := k;
 end;   
 
function Ps(Rez: Mass; i:integer): real;
var c:real;
 j:integer;
  begin
  i:=l;
  c:=1;
  for j := 2 to n do 
   begin;
   if ((Rez[i] [j]*Rez[i] [j])>(Rez[i] [j-1]*Rez[i] [j-1]))  then
    c := (Rez[i] [j]*Rez[i] [j]) {функция, находящая максимальный квадрат элемента массива Rez}
   else c := Rez[i] [j-1]*Rez[i] [j-1];
   end; 
  Ps:=c; 
  end;  
 
  
begin
 writeln('Введите значения h и b');
 read(h, b);
 writeln('Введите значения a1,a2,a3');
 for i := 1 to 3 do
    read(Ar[i]);{считываются значения а}
 for i := 1 to 3 do
  begin
    a := Ar[i];
     begin
      for j := 1 to n do 
       begin
      x := b + j * h; 
      Rez [i] [j] :=  F (a, x, i, j);
      end;
    end;
   end;
    writeln('Введите номер а, для которого необходимо посчитать Fi и Ps ( 1<=a<=3)');
    read(l);{ввод номера строки, в которой считаютcя значения Fi и  Ps}
      sum := Fi (Rez,i);
      max := Ps (Rez,i);
    writeln('Сумма модулей', ' ', sum);
    write('Максимальный квадрат', ' ', max);
end.