type
  Mass = array of real;

var
  Numbers: Mass;
  n: integer;

procedure Reading(var Numbers: Mass; var n: integer);
var
  i: integer;
begin
  writeln('Input length of array');
  read(n);
  SetLength(Numbers, n);
  writeln('Input array');
  for i := 0 to n - 1 do
    read(Numbers[i]);
end;

procedure Sort(var Numbers: Mass; n: integer);
var
  i, j: integer;
  temp: real;
begin
  for i := 0 to n - 1 do
  begin
    temp := Numbers[i];
    j := i - 1;
    while (j >= 0) and (Numbers[j] > temp) do
    begin
      Numbers[j + 1] := Numbers[j];
      dec(j);
    end;
    Numbers[j + 1] := temp;
  end;   
end;

procedure Output(Numbers: Mass; n: integer);
var
  i: integer;
begin
  write('Sorted array: ');
  for i := 0 to n - 1 do
    write(Numbers[i], ' ');
end;

begin
  Reading(Numbers, n);
  Sort(Numbers, n);
  Output(Numbers, n);
end.
