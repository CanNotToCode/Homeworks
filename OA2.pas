//Проверка включения одного упорядоченного массива в другой
type 
 Mass=array of real;
var
 Mas1,Mas2: Mass;
 n,m:integer;
 
procedure Reading(var Mas1,Mas2:mass; var n,m:integer);
var i:integer;
 begin
  writeln('Enter the length of the first array ');
  read(n);
  SetLength(Mas1,n);
  writeln('Enter the length of the second array');
  read(m);
  SetLength(Mas2,m);
  writeln('Enter the first array of ', n, ' elements');
  for i:=0 to n-1 do
   read (Mas1[i]);
  writeln('Enter the second array of ', m, ' elements');
  for i:=0 to m-1 do
   read (Mas2[i]);
 end;

function IsIncluded(Mas1,Mas2:mass):boolean;
 var k,n,m,i,j:integer;
 begin
  n:=length(Mas1);
  m:=length(Mas2);
 while (i<=n-1) and (j<= m-1) do
 begin
  if (Mas1[i] <= Mas2[j]) then 
   begin 
    if (Mas1[i] = Mas2[j]) then
     begin
       inc(k);
       inc(j);
      end;
    end
  else
    begin
     inc(j); 
     dec(i);
    end;
   inc(i);
   end;
  IsIncluded:=(k=m);
  end;
  BEGIN
   Reading(Mas1,Mas2, n,m);
   if IsIncluded(Mas1,Mas2) then
    write('Included')
   else write('Not included');
  End.
  
 
