type
 Mass = array [1..3,1..3] of real;
var
 A:mass;
 i,j,min:integer;
procedure Reading( var A:mass; i,j:integer);
  begin
   write ('Enter matrix 3X3');
   writeln;
   for i:=1 to 3 do
    begin
     for j:=1 to 3 do
      read (A[i,j]);
    end;
    writeln; 
   end;
   
procedure Search (var A:mass; i,j:integer; min:real);
begin
  for i:=1 to 3 do
    begin
    min:=A[i,1];
     for j:=1 to 3 do
      if A[i,j]<min then 
        min:=A[i,j];
     writeln('Minimum element of  ',i,' line  = ', min);   
    end;
  end;
  
 begin;
  Reading(A,i,j);
  Search( A,i,j,min);

 end.
    
