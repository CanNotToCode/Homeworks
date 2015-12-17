//Объединение упорядоченных файлов

type
  NewFile = file of real;
var
  n1, n2, f: integer;  
  F1, F2, Rez: NewFile; 
  
procedure Reading(var n1, n2: integer; var F1, F2: NewFile);
 var
  i: integer; 
  temp: real;
 begin
  Assign(F1, 'F1.dat');
  Assign(F2, 'F2.dat');
  Rewrite(F1);
  Rewrite(F2);
  write('Input length of the first file: ');
  readln(n1);
   writeln('Input the first array: ');
   for i := 1 to n1 do 
     begin
      Seek(F1, i);
      read(temp);
      write(F1, temp); 
     end;
   close(F1);
   write('Input length of the second file: ');
   readln(n2); 
   writeln('Input the second file: ');
   for i := 1 to n2 do 
     begin
      Seek(F2, i);
      read(temp);
      write(F2, temp);
     end;
   close(F2);
end;

procedure Merger(n1: integer; F1: NewFile; n2: integer; F2: NewFile; var f: integer; var Rez: NewFile);
var 
  i, k: integer;
  temp1, temp2: real;
  stop:boolean;
begin
  Reset(F1);
  Reset(F2);
  Assign(Rez, 'Rez.dat');
  Rewrite(Rez);
  f := 0; 
  k := 1; 
  for i := 1 to n1 do
  begin
    Seek( F1, i);
    Read(F1, temp1);
    Seek(F2, k);
    Read(F2, temp2);
    begin
     while (temp2 < temp1) and (k < n2) do 
      begin
       inc(f);
       Seek(Rez, f);
       write(Rez, temp2);
       inc(k); 
       Seek(F2, k);
       Read(F2, temp2);
     end; 
    if temp2 = temp1 then 
    begin
     inc(k); 
     Seek(F2, k);
     Read(F2, temp2);
    end;
    inc(f);
    Seek(Rez, f);
    write(Rez, temp1);
  end; 
  end;
  while (k <= n2) and not stop do 
  begin
    inc(f);
    Seek(Rez, f);
    write(Rez, temp2);
    if k=n2 then
     begin
      inc(k);
      stop:=true;
     end
    else begin
    Seek(F2, k);
    Read(F2, temp2);
    end;
  end; 
 close(F1);
 close(F2);
 close(Rez);
end;

procedure Output(Rez:NewFile;f:integer);
var 
 wrtemp: real;
begin
  write('Result: ');
  Reset(Rez);
  for f:=1 to f do 
  begin
   Seek(Rez,f);
   read(Rez, wrtemp);
   write(wrtemp, ' '); 
  end;
  close(Rez);
 end;




begin
  Reading(n1, n2, F1, F2);
  Merger(n1, F1, n2, F2, f, Rez); 
  Output(Rez,f);
end.
