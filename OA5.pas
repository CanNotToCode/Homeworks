type
  Mass = array of real;

var
  Mas1, Mas2, Rez: Mass;
  n, m, k: integer;

procedure Reading(var Mas1, Mas2: Mass; var n, m: integer);
var temp:Mass;
begin
  writeln('Enter the length of the first array ');
  read(n);
  SetLength(Mas1, n);
  writeln('Enter the length of the second array');
  read(m);
  SetLength(Mas2, m);
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
  
  while (i <= (length(Mas1) - 1)) and (j <= Length(Mas2)-1) do 
  begin
    if (Mas1[i] <= Mas2[j]) then 
    begin
      if (Mas1[i] = Mas2[j]) then
      begin
        inc(k);
        SetLength(Rez, k + 1);
        Rez[k] := Mas2[j];
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
end;

procedure Output(Rez: Mass; k: integer);
begin
  if k = -1 then 
    write('No intersection')
   else
  begin
    write('Intersection of arrays: ');
    for k := 0 to (Length(Rez) - 1) do
      write(Rez[k], ' ');
  end;
end;

begin
  Reading(Mas1, Mas2, n, m);
  Search(Mas1, Mas2, Rez, k);
  Output(Rez, k);
end.
