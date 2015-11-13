var
 Mas1,Mas2,Rez: array of real;
 i,j,k:integer;
begin
 writeln('Enter the length of the first array ');
 read(i);
 SetLength(Mas1,i);
 writeln('Enter the length of the second array');
 read(j);
 SetLength(Mas2,j);
 SetLength(Rez,0);
 writeln('Enter the first array of ', i, ' elements');
 for i:=0 to i-1 do
  read (Mas1[i]);
 writeln('Enter the second array of ', j, ' elements');
 for j:=0 to j-1 do
  read (Mas2[j]);
i:=0;
j:=0;
k:=-1;

while i<=(length(Mas1)-1) do 
 begin
  if (Mas1[i] <= Mas2[j]) then 
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
  write('No intersection')
  else
   begin
    write('Intersection of arrays: ');
    for k:=0 to (Length(Rez)-1) do
     write (Rez[k], ' ');
    end;
 end.
    
  
