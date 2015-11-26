type
  arr = array of char;
var
  A: arr;

function IsDigit(var c: char): boolean;
var
  i: integer;
begin
  i := integer(c);
  IsDigit := (c in ['0'..'9']);
end;

function Rezl(c: char): integer;
begin
  if IsDigit(c) then  
    Rezl := ord(c)-48
 else 
    REzl := -1;
end;

procedure Input(var A: arr);
var length, i, n: integer;
begin
  writeln('Input length of array' );
  read(length);
  n := length - 1;
  SetLength(A, length);
  writeln('Input array' );
  readln(A[0]);
  for i := 0 to n do
  begin
    readln(A[i]);
  end;
end;

function Conversion(var A: arr): integer;
var k, i, s: integer;
begin
  k:=1;
  for i := length(A)-1 downto 0 do
    if IsDigit(A[i])
    then
    begin
    s := s + Rezl(A[i]) * k;
    k:=k*10;
    end;
    Conversion := s;
end;

begin
  Input(A);
  write('Your number: ', Conversion(A));
end.
