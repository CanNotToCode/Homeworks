//Зачисление абитуриентов
type
  abiturient = record
    FIO: string[50];
    medal:boolean;
    scores:array [1..3] of integer;
  end;

var
  F1: file of abiturient;
  ball: integer;
  
procedure Output(FIO:string; sum:integer);
begin
 writeln(FIO, ' ' , sum);
end;  

procedure Selection(F1: file of abiturient; ball:integer);
var
  temp: abiturient;
  sum,i,k:integer;
begin
  Reset(F1);
  Writeln('Зачислены:');
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
      Output(temp.FIO,sum);
  end;
end;
 

begin
  writeln('Введите проходной балл');
  read(ball);
  Assign(F1, 'DataForR4.dat');
  Selection(F1, ball);
end.
