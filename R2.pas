//Проверка принадлежности точек заданной прямой
type
  point = record
    r, fi, x, y: real;
  end;

var
  F1: file of point;
  n, k: integer;
  basx, basy: real;

procedure Reading(var F1: file of point; var n: integer; var basx, basy: real);
var
  i: integer;
  temp: point;
begin
  Assign(F1, 'Points.dat');
  Rewrite(F1);
  write('Amount of points: ');
  readln(n);
  for i := 0 to n - 1 do
  begin
    writeln('Input point № ', i + 1); 
    read(temp.r);
    readln(temp.fi);
    temp.x := temp.r * cos(temp.fi);
    temp.y := temp.r * sin(temp.fi);
    Seek(F1, i);
    write(F1, temp);
  end;
  writeln('Input coefficients of line');
  read(basx);
  read(basy);
  
  
  close(F1);
end;

procedure Check(F1: file of point; n: integer; var k: integer; basx, basy: real);
var
  temp: point;
begin
  Reset(F1);
  while not Eof(F1) do
  begin
    read(F1, temp);
    if (temp.x = basx) and (temp.y = basy) then
      inc(k);
  end;
end;

procedure Output(k,n:integer);
 begin
  if k = n then 
    write('All points belong to this line')
  else 
    write('This points don`t belong to this line');
   end;
 

begin
  Reading(F1, n, basx, basy);
  Check(F1, n, k, basx, basy);
  Output(k,n);
end.
