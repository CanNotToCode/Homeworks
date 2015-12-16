//Oпределение множества массивом булевских значений
type
  BoolAr = array [1..1000] of boolean;

var
  Mult: BoolAr;
  a, b, c: integer;
  k: boolean;
  Com: char;

procedure add(var Mult: BoolAr; a: integer);
begin
  Mult[a] := true;
end;

procedure delete(var Mult: BoolAr; a: integer);
begin
  Mult[a] := false;
end;

function check(Mult: BoolAr; a: integer): boolean;
begin
  check := Mult[a];
end;

function Reading: integer;
var
  m: integer;
begin
  readln(m);
  Reading := m;
end;

procedure Output;
begin
  Writeln('Input A to Add,  D to Delete,  C to Check  or F to Finish');
end;


procedure Verification(var Com: char; var rez: BoolAr; var a, b, c: integer; var k: boolean);
begin
  if Com = 'A' then
  begin
    writeln('Add a number, 0 <= number <= 1000' );
    a := Reading;
    add(Mult, a);
  end;
  if Com = 'D' then 
  begin
    writeln('Delete a number, 0 <= number <= 1000' );
    b := reading;
    delete(Mult, b);
  end;
  if Com = 'C' then
  begin
    writeln('Check a number, 0 <= number <= 1000' );
    c := reading;
    k := check(rez, c);
    writeln(k);
  end;
  Output;
  readln(Com);
end;

begin
  Output;
  read(Com);
  while not (Com = 'F')  do
  begin
    Verification(Com, Mult, a, b, c, k);
  end;
end.
