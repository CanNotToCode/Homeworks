//Запись суммы по записям чисел, сложение столбиком
type
  Mass = array of integer;
var
   A1, B1, Rez: array of integer; 
   A, B, Rezlt: string; 
   n, m: integer;

procedure Reading(var A, B: string; var n, m: integer);//считывает записи цифр
var
  tempstring: string;
 begin
  writeln('Enter the numbers ');
  readln(A);
  readln(B);
  n := Length(A);
  m := Length(B);
  
  if (n <= m) then //изменяет строки так, чтобы число с большим числом разрядов хранилось в 1 строке
   begin
    tempstring := A;
    A := B;
    B := tempstring;
    n := length(A);
    m := length(B);
   end;

 end;
 
procedure Conversion(var A1, B1: array of integer; n, m: integer; A, B: string);//процедура преобразует записи чисел в массив их цифр
 var
  i, pr, k, l: integer;
 begin
   SetLength(A1, n);
   SetLength(B1, n);  
   
  for n := 1 to n do   
   begin
    Val(A[n], A1[i], pr);
    inc(i);
   end;
   
  k := n - m;
  l := 1;
    
   while k <= Length(B1) - 1 do //создается два массива длины максимального кол-ва разрядов
      begin
       Val(B[l], B1[k], pr);
       inc(k);
       inc(l);
     end;
   end;
   
procedure Calculation(var Rez, A1, B1: array of integer; n, m: integer);
var
  j, k, v: integer;
   begin
    SetLength(Rez, n + 1); 
    j := n - 1;
    k := n;
  
    while (k >= 0) and (j >= 0) do    
      begin
       Rez[k] := Rez[k] + (A1[j] + B1[j]) mod 10; //записывается сумма цифр одного разряда
       v := (A1[j] + B1[j]) div 10;
       if j > 0 then
        A1[j - 1] := A1[j - 1] + v
       else
        Rez[k - 1] := Rez[k - 1] + v; 
       dec(j);
       dec(k);
      end; 
  end;

procedure Output(Rez: mass; var J: string; n: integer);
 begin
  if Rez[0] = 0 then 
   for n := 1 to Length(Rez) - 1 do
    Rezlt := Rezlt + Rez[n]
  else  
   for n := 0 to Length(Rez) - 1 do
    J := J + Rez[n];
   write('Sum of numbers is ', Rezlt);
  end;
  
begin
   Reading(A, B, n, m);
   Conversion(A1, B1, n, m, A, B);
   Calculation(Rez, A1, B1, n, m);
   Output(Rez, Rezlt, n);
end.
