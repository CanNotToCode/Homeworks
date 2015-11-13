var
 Mas1,Mas2,Rez: array of real;
 i,j,k:integer;
begin
 writeln('Ââåäèòå äëèíó 1 ìàññèâà');
 read(i);
 SetLength(Mas1,i);
 writeln('Ââåäèòå äëèíó 2 ìàññèâà');
 read(j);
 SetLength(Mas2,j);
 SetLength(Rez,0);
 writeln('Ââåäèòå 1 ìàññèâ èç ', i, ' ýëåìåíòîâ');
 for i:=0 to i-1 do
  read (Mas1[i]);
 writeln('Ââåäèòå 2 ìàññèâ èç ', j, ' ýëåìåíòîâ');
 for j:=0 to j-1 do
  read (Mas2[j]);
i:=0;
j:=0;
k:=-1;

while i<=(length(Mas1)-1) do 
 begin
  if (Mas1[i] <= Mas2[j]) then // èíäåêñ âíå ìàññèâà
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
   
 if k = -1 then 
  write('Íåò îáùèõ')
  else
   begin
    write('Ïåðåñå÷åíèå ìàññèâîâ: ');
    for k:=0 to (Length(Rez)-1) do
     write (Rez[k], ' ');
    end;
 end.
    
  
