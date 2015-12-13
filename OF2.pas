//Объединение упорядоченных файлов

type
  NewFile = file of real;

var
  n1, n2, n3: integer; 
  F1, F2, F3: NewFile;
  wrtemp:real;

procedure Reading(var n1,n2:integer; var F1,F2:NewFile);
 var i:integer;
 temp:real;
 begin
 Assign(F1,'F1.dat');
 Assign(F2,'F2.dat');
 Rewrite(F1);
 Rewrite(F2);
 write('Input length of the first file: ');
 readln(n1);
  writeln('Input the first array: ');
  for i := 0 to n1-1 do 
    begin
     Seek(F1,i);
     read(temp);
     write(F1,temp); 
    end;
   close(F1);
  write('Input length of the second file: ');
  readln(n2); 
  writeln('Input the second file: ');
  for i := 0 to n2-1 do 
   begin
    Seek(F2,i);
    read(temp);
    write(F2,temp);
  end;
 close(F2);
end;

procedure Merger(n1: integer; F1: NewFile; n2: integer; F2: NewFile; var n3: integer; var F3: NewFile);
var
  i, j: integer;
  temp1,temp2:real;
begin
  n3 := -1; 
  j := 0; 
  i := 0;
  Reset(F1);
  Reset(F2);
  Assign(F3,'F3.dat');
  Rewrite(F3);
  while (i <= n1-1) and (j <= n2-1) do 
  begin
    Seek(F1,i);
    Seek(F2,j);
    Read(F1,temp1);
    Read(F2,temp2);
    if temp2 < temp1 then
    begin
      inc(n3); 
      Seek(F3,n3);
      write(F3,temp2); 
    end;
    if temp2 > temp1 then
    begin
      inc(n3); 
      Seek(F3,n3);
      write(F3,temp1); 
    end;
    if temp2 = temp1 then 
    begin
      inc(n3); 
      Seek(F3,n3);
      write(F3,temp1); 
    end;
   if (j <= n2)  then 
    begin
      inc(n3);
      Seek(F3,n3);
      write(F3,temp2);
    end; 
    inc(j);
    inc(i);
  end;
 close(F1);
 close(F2);
 close(F3);
end;

begin 
  Reading(n1,n2,F1,F2);
  Merger(n1, F1, n2, F2, n3, F3); 
  write('Result: ');
  Reset(F3);
  while not EoF(F3) do
   begin 
   read(F3,wrtemp);
   write(wrtemp, ' '); 
  end;
end.
