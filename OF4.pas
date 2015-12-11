// Поиск пересечения упорядоченных массивов
var
  F1, F2,Rez: file of real;
  n, m,k: integer;

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

procedure Search(F1, F2: file of real; var Rez: file of real; var k: integer);
var
  i, j, n, m: integer;
  n1,n2:real;
begin
  Reset(F1);
  Reset(F2);
  Assign(Rez,'Rez.dat');
  Rewrite(Rez);
  i := 0;
  j := 0;
  k := -1;
  n:=FileSize(F1);
  m:=FileSize(F2);
  
  while (i <= n - 1) and (j <= m-1) do 
  begin
  Seek(F1,i);
  Seek(F2,j);
  Read(F1,n1);
  Read(F2,n2);
  
  begin
    if (n1 <= n2) then 
    begin
      if (n1 = n2) then
      begin
        inc(k);
        write(Rez,n2);
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
end;

procedure Output(Rez: file of real; k: integer);
 var n1:real;
begin
  if k = -1 then 
    write('No intersection')
   else
  begin
    write('Intersection of files: ');
    Reset(Rez);
    while not Eof(Rez) do
      begin
      read(Rez,n1);
      write(n1, ' ');
      end;
  end;
end;

begin
  Reading(F1, F2, n, m);
  Search(F1, F2, Rez, k);
  Output(Rez, k);
end.
