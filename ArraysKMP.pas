//Поиск подстроки в строке через алгоритм Кнута-Морриса-Пратта
type
  Mass = array[1..100] of real;
  Arr = array [1..100] of integer;

var
  M1, M2: Mass;
  PrefixArr: Arr;
  s, n, m: integer;

procedure Reading(var n, m: integer; var M1, M2: Mass);
var
  i, j: integer;
begin
  writeln('Input length of the first array');
  readln(n);
  writeln('Input the first array');
  for i := 1 to n do
    read(M1[i]);
  writeln('Input length of the second array');
  readln(m);
  writeln('Input the second array');
  for j := 1 to m do
    read(M2[j]);
end;


function Output(var s, i: integer; PrefixArr: Arr):integer;
begin
  writeln('The second array is included in the first array from the ', i - m + 1, ' element');
  s := PrefixArr[s];
end;

procedure PrefixSearch(m: integer; M2: Mass; var s: integer; var PrefixArr: Arr);
var
  i: integer;
begin
  for i := 2 to m do 
  begin
    while (s > 0) and not (M2[s + 1] = M2[i]) do
      s := PrefixArr[s]; 
    if M2[s + 1] = M2[i] then 
      inc(s);
    PrefixArr[i] := s; 
  end;
end;

procedure SearchIndex(var n, s: integer; var M1, M2: Mass);
var
  i,l: integer;
begin
  for i := 1 to n do
  begin
    while (s > 0) and not (M2[s + 1] = M1[i]) do
      s := PrefixArr[s];
    if M2[s + 1] = M1[i] then inc(s);
    if (s = m) then 
     l := Output(s, i, PrefixArr);
  end;
end;

begin
  Reading(n, m, M1, M2);
  PrefixSearch(m, M2, s, Prefixarr); 
  SearchIndex(n, s, M1, M2);
end.
