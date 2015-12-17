//Объединение упорядоченных массивов
type
  Mass = array of real;

var
  n, m, f: integer; 
  M1, M2, Rez: Mass;

procedure Reading(var n, m: integer; var M1, M2: Mass);
var
  i, j: integer;
begin
  writeln('Input length of the first array');
  readln(n);
  Setlength(M1, n + 1);
  writeln('Input the first array');
  for i := 1 to n do
    read(M1[i]);
  
  writeln('Input length of the second array');
  readln(m);
  Setlength(M2, m + 1);
  writeln(' Input the second array');
  for j := 1 to m do
    read(M2[j]);
end;

procedure Merger(M1, M2: Mass; n, m: integer; var Rez: Mass; var f: integer);
var
  i, k: integer;
begin
  SetLength(Rez, m + n + 1);
  f := 0; 
  k := 1; 
  for i := 1 to n do 
  begin
    while (M2[k] < M1[i]) and (k < m) do 
    begin
      inc(f); 
      Rez[f] := M2[k]; 
      inc(k); 
    end; 
    if M2[k] = M1[i] then 
      inc(k); 
    inc(f); 
    Rez[f] := M1[i]; 
  end; 
  while (k <= m) do 
  begin
    inc(f); 
    Rez[f] := M2[k]; 
    inc(k); 
  end; 
end;

procedure Output(Rez: Mass; f: integer);
var
  i: integer;
begin
  write('Result: ');
  for i := 1 to f do 
    write(Rez[i], ' '); 
end;

begin
  Reading(n, m, M1, M2);
  Merger(M1, M2, n, m, Rez, f); 
  Output(REz, f);
end.

  
