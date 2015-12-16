//Сортировка сведением к нахождению максимума
type
  Mass = array of real;

var
  Numbers, SortedNumbers: Mass;
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

procedure FindMax(var Numbers: Mass; var SortedNumbers: Mass; n: integer );
var
  i, k, j, maxindex: integer;
  max, min: real;
begin
  for i := 0 to n - 1 do
    if Numbers[i] < min then
      min := Numbers[i]; 
  
  SetLength(SortedNumbers, n);
  j := n - 1;
  for i := n - 1 downto 0 do
  begin
    max := min;
    for k := 0 to n - 1 do
    begin
      if Numbers[k] > max then
      begin
        max := Numbers[k];
        maxindex := k;
      end;
    end;
    SortedNumbers[j] := max;
    Numbers[maxindex] := min;
    dec(j);
    max := min;
  end;
end;

procedure Output(SortedNumbers: Mass; n: integer);
var
  i: integer;
begin
  write('Sorted array: ');
  for i := 0 to n - 1 do
    write(SortedNumbers[i], ' ');
end;

begin
  Reading(Numbers, n);
  FindMax(Numbers, SortedNumbers, n);
  Output(SortedNumbers, n);
end.
