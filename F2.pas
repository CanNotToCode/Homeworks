//Сумма чисел по их записям в текстовом файле
type
  Mass = array of integer;

var
  NewFile: text;
  FileArr: mass;

function IsDigit(var c: char): boolean;
begin
  IsDigit := (c in ['0'..'9']);
end;

function Rezl(c: char): integer;
begin
  if IsDigit(c) then  
    Rezl := ord(c) - 48
  else 
    Rezl := -1;
end;

function Conversion(var A: string): integer;
var
  k, i, s: integer;
begin
  k := 1;
  for i := length(A) downto 1 do
    if IsDigit(A[i])
    then
    begin
      s := s + Rezl(A[i]) * k;
      k := k * 10;
    end;
  Conversion := s;
end;

procedure Reading(var NewFile: text);
var
  i, n: integer;
  s: string;
begin
  Assign(NewFile, 'Newfile.txt');
  Rewrite(NewFile);
  n := 1;
  Writeln('Input numbers');
  for i := 1 to n do
  begin
    readln(s);
    s := s + ' ';// adds ' ' in end of string
    writeln(NewFile, s);
  end;
  close(NewFile);
end;


procedure CharInInteger(var FileArr: mass; var NewFile: text);
var
  i, k, l, j: integer;
  s, A: string;
  Space: array of integer;
begin
  Reset(NewFile);
  while not EoF(NewFile) do
  begin
    readln(NewFile, s);
    for i := 1 to  length(s) do
      if s[i] = ' ' then
      begin
        inc(l);
        SetLength(Space, l);
        Space[k] := i;  // the index of spaces in file
        inc(k);
      end;
    
    SetLength(FileArr, length(Space));
    A := copy(s, 1, space[0] - 1);
    FileArr[0] := Conversion(A);
    j := 0;
    for i := 0 to Length(space) - 2 do
    begin
      A := copy(s, Space[i] + 1, space[i + 1] - space[i] - 1);
      inc(j);
      FileArr[j] := Conversion(A);
    end;
  end;
end;

function Sum(FileArr: mass): integer;
var
  i, p: integer;
begin
  for i := 0 to length(FileArr) - 1 do
    p := p + FileArr[i];
  Sum := p;
end;

begin
  Reading(NewFile);
  CharInInteger(FileArr, NewFile);
  write('Sum of numbers is ', Sum(FileArr));
end.
