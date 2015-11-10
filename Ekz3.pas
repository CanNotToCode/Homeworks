const k=10;
type Mass = array [1..k] of integer;
var 
 A:mass;
 i,max,s,m,esc:integer;
 
procedure Reading(var A:mass; i,k:integer);
 begin
writeln('Введите последовательность из 10 чисел');
 for i:=1 to k do
  read(A[i]);
 end; 
 
procedure Search(var A:mass; i,s,esc,max,m:integer);
 begin
  i:=1;
  s:=1;
  while (i<=9) do
   begin
    while (A[i]<A[i+1]) and (esc<>1) do
     begin
      inc(s);
      if i<9 then
      inc(i)
       else 
       esc:=1;
     end;
    if s>max then 
     max:=s;
    m:=i;
    i:=m+1;
    s:=1;
   end;
  write('Максимальная длина возрастающей подпоследовательности - ',max);
  end;
begin
 Reading(A,i,k);
 Search(A,i,s,esc,max,m);  
end.