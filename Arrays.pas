const n = 7;
m = 3;
 var 
A1:array [1..n] of real;
A2:array [1..m] of real;
 i,j,k,l,index:integer;
 begin
 writeln('Enter array of 7 elements');
for i:=1 to n do 
 read (A1[i]); 
 writeln('Enter array of 3 elements');
for j:=1 to m do
 read (A2[j]);
for i:=1 to (n-m+1) do 
 begin
  if A1[i] = A2[1] then 
   begin 
    index := i;
    for k := index to (index+m-1) do
     begin
      for j:=1 to m do
        begin
         if A1[k] = A2[j] then
           inc(l)
           else Break;
         end;
      end;
    end;
   if l = j then Break;
   end;
   write('The second array is included in the first to ',index,' element');
 end.
    
 
