//Включен ли один упорядоченный файл в другой?
var
  F1, F2: file of real;
  n, m: integer;
procedure Reading(var F1, F2: file of real; var n, m: integer);
var
  i, j: integer;  
  num: real;
begin
  Assign(F1, 'F1.dat');
  Assign(F2, 'F2.dat');
  
  writeln('Input length of the first array');
  readln(n);
  ReWrite(F1);
  writeln('Input the first array');
  for i := 0 to n - 1 do
  
  begin
    read(num);
    write(F1, num);
  end;
  close(f1);
  
  writeln('Input length of the second array');
  readln(m);
  Rewrite(f2);
  writeln('Input the second array');
  for j := 0 to m - 1 do  
  begin
    read(num);
    write(F2, num);
  end;
  close(F2);
end;

function IsIncluded(F1, F2: file of real): boolean;
var
  k, n, m, i, j: integer;
  n1, n2: real;  
begin
reset(f1);
reset(F2);
  n := Filesize(F1);
  m := FileSize(F2);
  
  while (i <= n - 1) and (j <= m - 1)  do
  begin
    Seek(F1, i);
    Seek(F2, j);
  read(F1, n1);
  read(F2, n2);
    
    if (n1 <= n2) then 
    begin
      if (n1 = n2) then
      begin
        inc(k);
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
  IsIncluded := (k = m);
end;

begin
  Reading(F1, F2, n, m);
  if IsIncluded(F1, F2) then
    write('Included')
  else write('Not included');
end.
