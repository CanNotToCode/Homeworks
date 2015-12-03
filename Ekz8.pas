type
  Mass = array of integer;

var
  NewFile: text;
  Rez: String;
  Numbers: mass;

procedure Reading(var Numbers: mass);
var
  n, i: integer;
begin
  writeln('Input amount of numbers');
  read(n);
  Setlength(Numbers, n);
  writeln('Input numbers');
  for i := 0 to n - 1 do
    read( Numbers[i]);
end;

function InChar(c: integer): string;
var
  Number: string;
  k: integer;
begin
  while c <> 0 do
  begin
    k := c mod 10;
    Number := k + Number;
    c := c div 10;
  end;
  InChar := Number;
end;

procedure IntegerInString(Numbers: mass; var Rez: string);
var
  i: integer;
begin
  for i := 0 to Length(Numbers) - 1 do
    Rez := Rez + InChar(Numbers[i]) + ' ';
end;

procedure Recording(var NewFile: text; var Rez: string);
begin
  Assign(NewFile, 'Newfile.txt');
  Rewrite(NewFile);
  writeln(NewFile, Rez);
  close(NewFile);
end;

procedure Output(NewFile: text);
var
  s: string;
begin
  Reset(NewFile);
  write('Record of numbers in the file : ');
  while not EoF(NewFile) do
  begin
    read(NewFile, s);
    write(s);
  end;
end;


begin
  Reading(Numbers);
  IntegerInString(Numbers, Rez);
  Recording(NewFile, Rez);
  OutPut(Newfile);
end.
