//Поиск индекса начала вхождения одного массива в другой
type
 Mass=array of real;
var 
  A1,A2:Mass;
  n,m,index:integer;

   
procedure Reading (var A1,A2:Mass; var n,m:integer);
 var i:integer;  
 begin
  writeln('Input length of the first array');
  readln(n);
  SetLength(A1,n+1);
  writeln('Input the first array');
  for i:=1 to n do 
   readln (A1[i]); 
  writeln('Input length of the second array');
  readln(m);
  SetLength(A2,m+1);
  writeln('Input the second array');
  for i:=1 to m do 
   read (A2[i]);
  end;
   
 procedure Output(index:integer);
  begin
    write('The second array is included in the first to ',index,' element');
  end;
   
 procedure Search(A1,A2:Mass; n,m:integer; var index:integer);
 var i,j,k,l:integer;
 begin
 l:=1;
  for i:=1 to (n-m+2) do 
 begin
  if A1[i] = A2[1] then 
   begin 
    index := i;
    for k := index to (index+m) do
     begin
      for j:=1 to m+1 do
        begin
         if A1[k] = A2[j] then
           inc(l)
           else Break;
         end;
      end;
    end;
   if l = j then Break;
   end;
   Output(index);
 end;
   
 begin
  Reading(A1,A2,n,m);
  Search(A1,A2,n,m,index);
 end.
    
 
