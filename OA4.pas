//Объединение упорядоченных массивов

type
  Mass = array of real;

var
  i, n1, n2, n3: integer; 
  M1, M2, M3: Mass;

procedure Reading(var n1,n2:integer; var M1,M2:Mass);
 var i:integer;
 begin
 write('Input length of the first array: ');
 readln(n1);
  SetLength(M1,n1);
  writeln('Input the first array: ');
  for i := 0 to n1-1 do 
    readln(M1[i]); 
  write('Input length of the second array: ');
  readln(n2); 
  SetLength(M2,n2);
  writeln('Input the second array: ');
  for i := 0 to n2-1 do 
    read(M2[i]);
  end;
procedure Merger(n1: integer; M1: Mass; n2: integer; M2: Mass; var n3: integer; var M3: Mass);
var
  i, j: integer;
begin
  n3 := -1; 
  j := 0; 
  i := 0;
  while (i <= n1-1) and (j <= n2-1) do 
  begin
    if M2[j] < M1[i] then
    begin
      inc(n3); 
      SetLength(M3,n3+1);
      M3[n3] := M2[j]; 
    end;
    if M2[j] > M1[i] then
    begin
      inc(n3); 
      SetLength(M3,n3+1);
      M3[n3] := M1[i]; 
    end;
    if M2[j] = M1[i] then 
    begin
      inc(n3); 
      SetLength(M3,n3+1);
      M3[n3] := M1[i]; 
    end;
    if (j <= n2)  then 
    begin
      inc(n3);
      SetLength(M3,n3+1);
      M3[n3] := M2[j]; 
      SetLength(M3,n3+1);
    end; 
    inc(j);
    inc(i);
    
  end;
end;

begin 
  Reading(n1,n2,M1,M2);
  Merger(n1, M1, n2, M2, n3, M3); 
  write('Result: ');
  for i := 0 to n3 do 
    write(M3[i], ' '); 
end.
