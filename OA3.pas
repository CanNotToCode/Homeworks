//Разность двух упорядоченных массивов
type
  Mass = array of real;

var
  Mas1, Mas2, Rez: Mass;
  n, m, k: integer;

procedure Reading(var Mas1, Mas2: Mass; var n, m: integer);
var temp:Mass;
begin
  writeln('Enter the length of the first (long) array ');
  read(n);
  SetLength(Mas1, n);
  writeln('Enter the length of the second (short) array');
  read(m);
  SetLength(Mas2, m+1);
  SetLength(Rez, 0);
  writeln('Enter the first array of ', n, ' elements');
  for n := 0 to n - 1 do
    read(Mas1[n]);
  writeln('Enter the second array of ', m, ' elements');
  for m := 0 to m - 1 do
    read(Mas2[m]);
    
    if m>n then
     begin
      temp:=Mas1;
      Mas1:=Mas2;
      Mas2:=temp;
     end;
     
end;

procedure Search(Mas1, Mas2: Mass; var Rez: Mass; var k: integer);
var
  i, j: integer;
begin
  i := 0;
  j := 0;
  k := -1;
  
 while (i<=(Length( Mas1)-1))and (j<=(Length(Mas2)-1)) do
 begin
    if (Mas1[i] = Mas2[j]) then
       inc(j)
 
  else
    begin
     inc(k);
     SetLength(Rez,k+1);
     Rez[k]:=Mas1[i];
    end;
    inc(i);
   end;
end;

procedure Output(Rez: Mass; k: integer);
begin
  if k = -1 then 
    write('No difference')
   else
  begin
    write('Difference of arrays: ');
    for k := 0 to (Length(Rez) - 1) do
      write(Rez[k], ' ');
  end;
end;

begin
  Reading(Mas1, Mas2, n, m);
  Search(Mas1, Mas2, Rez, k);
  Output(Rez, k);
end.
