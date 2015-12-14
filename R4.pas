//Зачисление абитуриентов
type
  abiturient = record
    FIO: string[50];
    medal:boolean;
    scores:array [1..3] of integer;
  end;

var
  F1: file of abiturient;
  n: integer;
  ball: integer;

procedure Reading(var F1: file of abiturient; var n: integer; var ball: integer);
var
  i,j: integer;
  temp: abiturient;
  m:string;
begin
  Assign(F1, 'Points.dat');
  Rewrite(F1);
  writeln('Amount of abiturients: ');
  readln(n);
  for i := 0 to n - 1 do
  begin
    writeln('Input abiturients № ', i + 1); 
    writeln('FIO:');
    readln(temp.FIO);
 
    writeln('Medal(+ or -): ');
    readln(m);
  
    if m = '+' then
    temp.medal:=true
    else temp.medal:=false;
    
    writeln('Scores: ');
    for j:=1 to 3 do
     readln(temp.Scores[j]);
    Seek(F1, i);
    write(F1, temp);
  end;
  writeln('Passing score:');
  read(ball);
  close(F1);
end;

procedure Selection(F1: file of abiturient; ball:integer);
var
  temp: abiturient;
  sum,i,k:integer;
begin
  Reset(F1);
  Writeln('Enrolled:');
  while not Eof(F1) do
  begin
    read(F1, temp);
    sum:=0;
    k:=0;
    for i:=1 to 3 do
     begin
     sum:=sum+temp.Scores[i];
     if temp.Scores[i]>=85 then
      inc(k);
     end;
    
    if (sum >= ball) or ((temp.medal) and (k>0)) then
      writeln(temp.FIO);
  end;
end;
 

begin
  Reading(F1, n, ball);
  Selection(F1, ball);
end.
