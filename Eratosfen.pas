var 
 k,i,m:integer;
 a:array[1..1000] of integer;
begin
writeln('������� ������� ������ ������� �����');
 read(k);
write('������� �����: ');
  for i := 2 to (k+1) div 2 do 
  begin
   m := i*2;
    while m <= k do
     begin
      a[m]:= 1;
      m := m+i;
    end;
    m := 0;
  end;
  for i := 1 to k do
   if a[i] = 0 then write(i,' ');
 readln;
end. 
