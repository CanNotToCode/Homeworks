// Вычисление значения многочлена по схеме Горнера
type
  Nums = array[1..6] of integer;
  Rnums = record
    chisl, znam: integer;
  end;
   Bs=array[1..3] of Rnums;
  Results = array[1..3] of real;

var
  Variables: BS;
  Coeff: Nums;
  Rez: Results;


procedure Reading(var Coeff: Nums; var Variables:Bs);
var
  i, j, k: integer;
begin
  writeln('Input 6 coefficients');
  for i := 1 to 6 do
    read(Coeff[i]);
  for j := 1 to 3 do
  begin
    writeln('Input a numenator');
    read(Variables[j].chisl);
    writeln('Input a denominator');
    read(k);
    if k = 0 then 
    begin
      writeln('Incorrection value! Input a denominator ');
      read(Variables[j].znam);
    end
    else
      Variables[j].znam := k;
  end;
end;


procedure Calculation(Coeff: Nums; Variables: Bs; var Rez: Results );
var
  i, j, k: integer;
  temp: real;
begin
  for j := 1 to 3 do
  begin
    temp := Coeff[2] + Coeff[1] * (Variables[j].chisl / Variables[j].znam);
    i := 3;
    while i <= 6 do 
    begin
      temp := Coeff[i] + (Variables[j].chisl / Variables[j].znam) * temp;
      inc(i);
    end;
    inc(k);
    Rez[k] := temp;
  end;
end;

procedure Output(Rez: Results);
var
  i: integer;
begin
 write('Results: ');
  for i := 1 to 3 do
    write(Rez[i],' ');
end;

begin
  Reading(Coeff, Variables);
  Calculation(Coeff, Variables, Rez);
  Output(Rez);
end.
