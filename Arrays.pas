const n = 7;
m = 3;
 var 
A1:array [1..n] of real;
A2:array [1..m] of real;
 i,j,k,l,index:integer;
 begin
 writeln('¬ведите массив из 7 элементов');
for i:=1 to n do //с клавиатуры
 read (A1[i]); 
 writeln('¬ведите массив из 3 элементов');// считываютс€
for j:=1 to m do// исходные
 read (A2[j]);// массивы
for i:=1 to (n-m+1) do 
 begin
  if A1[i] = A2[1] then //поиск первого элемента 2 массива в 1 массиве
   begin 
    index := i;
    for k := index to (index+m-1) do
     begin
      for j:=1 to m do
        begin
         if A1[k] = A2[j] then
           inc(l)
           else Break;
         end;
      end;
    end;
   if l = j then Break;
   end;
   write('¬торой массив входит в первый с ',index,' элемента');
 end.
    
 
