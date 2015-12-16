//Решето Эратосфена
type
  Mass = array of integer;

var
  k: integer;
  A: Mass;

procedure Reading(var k: integer);
begin
  writeln('Enter the border of search of prime numbers');
  read(k);
end;

procedure Search(var A: Mass; k: integer);
var
  i, m: integer;
begin
  SetLength(a, k + 1);
  for i := 2 to (k + 1) div 2 do 
  begin
    m := i * 2;
    while m <= k do
    begin
      a[m] := 1;
      m := m + i;
    end;
    m := 0;
  end;
end;

procedure Output(A: Mass; k: integer);
var
  i: integer;
begin
  write('Prime numbers: ');
  for i := 1 to k do
    if a[i] = 0 then write(i, ' ');
  readln;
end;

begin
  Reading(k);
  Search(A, k);
  Output(A, k);
end.
