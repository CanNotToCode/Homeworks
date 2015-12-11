type
  point = record
    x, y: real;
  end;

var
  F1: array of point;
  n, k: integer;
  rad: real;

procedure Reading(var F1: array of point; var n: integer; var rad: real);
var
  i: integer;
begin
  write('Amount of points: ');
  readln(n);
  SetLength(F1,n);
  for i := 0 to n - 1 do
  begin
    writeln('Input point № ', i + 1); 
    read(F1[i].x);
    readln(F1[i].y);
  end;
  writeln('Input radius');
  read(rad);
end;

procedure Check(F1: array of point; n: integer; var k: integer; rad: real);
var
  i:integer;
begin
  
  for i:=0 to n-1 do
  begin
    if (power(F1[i].x, 2)+power(F1[i].y,2)=power(rad,2)) then
      inc(k);
  end;
end;

procedure Output(k,n:integer);
 begin
  if k = n then 
    write('All points belong to this circle ')
  else 
    write('This points don`t belong to this circle');
   end;
 

begin
  Reading(F1, n, rad);
  Check(F1, n, k, rad);
  Output(k,n);
end.
