var
 Mas1,Mas2,Rez: array of real;
 i,j,k:integer;
begin
 writeln('Введите длину 1 массива');
 read(i);
 SetLength(Mas1,i);
 writeln('Введите длину 2 массива');
 read(j);
 SetLength(Mas2,j);
 SetLength(Rez,0);
 writeln('Введите 1 массив из ', i, ' элементов');
 for i:=0 to i-1 do
  read (Mas1[i]);
 writeln('Введите 2 массив из ', j, ' элементов');
 for j:=0 to j-1 do
  read (Mas2[j]);
i:=0;
j:=0;
k:=-1;

while i<=(length(Mas1)-1) do 
 begin
  if (Mas1[i] <= Mas2[j]) then // индекс вне массива
   begin 
    if (Mas1[i] = Mas2[j]) then
     begin
       inc(k);
       SetLength(Rez,k+1);
       Rez[k]:=Mas2[j];
       inc(j);
      end;
    end
  else
    begin
     inc(j); 
     dec(i);
    end;
   inc(i);
   end;
   
 if k = 0 then 
  write('Нет общих')
  else
   begin
    write('Пересечение массивов: ');
    for k:=0 to (Length(Rez)-1) do
     write (Rez[k], ' ');
    end;
 end.
    
  