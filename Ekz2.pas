type 
 Mass = array [1..18] of real;
var
 A:mass;
 i,k,s:integer;
 
procedure Reading (var A:mass; i:integer);//считывает массив
 begin
 writeln('Введите последовательность из 18 чисел ');
 for i:=1 to 18 do
   read(A[i]);
  end; 
  
procedure Period (var A: Mass; s,k,i:integer);//находит период последовательности
 begin  
  k:=1;
 while k<=9 do
  begin 
  for i:=1 to 18-k do
   if A[i]=A[i+k] then
    inc(s);
   if s = 18-k then
   begin
     writeln('Период равен ', k);
     Break;
    end 
    else
     begin
      inc(k);
      s:=0;
    end;
  end;
 end;
begin
Reading(A,i);
Period(A,s,k,i); 
end.
    
    