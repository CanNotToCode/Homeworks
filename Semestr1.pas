//Семестровая
const
  n = 9;

type
  Mass = array [1..3, 1..9] of real;
  Numbers = array [1..3] of real;

var
  i, l: integer;
  h, b, x, a, sum, max: real;
  Ar: Numbers;
  Rez: Mass;


procedure Reading(var h, b: real; var Ar: Numbers);
var
  i: integer;
begin
  writeln('Enter h and b');
  read(h, b);
  writeln('Enter a1,a2,a3');
  for i := 1 to 3 do
    read(Ar[i]);
end;


function F(Ar: Numbers; b,h:real): real;
var
  i, j: integer;
  a,x: real;
begin
  for i := 1 to 3 do
  begin
  a := Ar[i];
    for j := 1 to n do
    begin
     x := b + j * h; 
      if (a < 0) then
      begin
        Rez[i, j] := ln(1 + a * a + x * x) - 1;
      end;
      if (a >= 0) then 
      begin
        Rez[i, j] := ln(1 + 2 * a + x * x) + 1;
      end;
    end;
  end;
  F := Rez[i, j];
end;



function Fi(Rez: Mass; i: integer): real;
var
  k: real;
  j: integer;
begin
  k := 0;
  i := l;
  for j := 1 to n do
  
  begin
    k := k + abs(Rez[i, j] ); 
  end;
  Fi := k;
end;



function Ps(Rez: Mass; i: integer): real;
var
  c: real;
  j: integer;
begin
  i := l;
  c := 1;
  for j := 2 to n do 
  
  begin;
    if ((Rez[i][j] * Rez[i][j]) > (Rez[i][j - 1] * Rez[i][j - 1]))  then
      c := (Rez[i][j] * Rez[i][j]) 
    else c := Rez[i][j - 1] * Rez[i][j - 1];
  end; 
  Ps := c; 
end;

procedure Calculation(Ar: Numbers; var Rez: Mass);
var
  i, j: integer;
begin
  for i := 1 to 3 do
   begin
      for j := 1 to n do 
      begin
        Rez[i][j] := F(Ar,b, h);
      end;
  end;
end;

procedure Output(Rez: Mass);
var
  i, j: integer;
begin
  for i := 1 to 3 do
  begin
    for j := 1 to 9 do
      write(Rez[i, j], ' ');
    writeln;
  end;
end;

begin
  Reading(h, b, Ar);
  Calculation(Ar, Rez);
  Output(Rez);
  
  writeln('Enter the line number for which you want to find Fi and Ps ( 1<=a<=3)');
  read(l);
  sum := Fi(Rez, i);
  max := Ps(Rez, i);
  writeln('The sum of modules', ' ', sum);
  write('Maximum square', ' ', max);
end.
