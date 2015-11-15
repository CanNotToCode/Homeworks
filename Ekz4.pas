type
 Matrix = array [1..5,1..5] of real;
var i,j,m,n,b1,b2,c1,c2,k:integer;
 A: Matrix; 
 
procedure Reading( var A:matrix; i,j,n,m:integer);
 begin
  n:=5;
  m:=5;
  for i:=1 to n do
   begin
    for j:=1 to m do
     read(A[i,j]);
   end;
 end; 
 
procedure Checking ( var A:matrix; i,j,m,n,b1,b2,c1,c2,k:integer);
 begin
 for i:=1 to 5 do
  begin
   for j:=1 to 5 do
    begin
     for m:=1 to 5 do
      begin
      if A[i,j]>=A[i,m] then
       inc(c1);
      if A[i,j]<=A[i,m] then
       inc(b1);
       
      if A[i,j]<=A[m,j] then
       inc(c2);
      if A[i,j]>=A[m,j] then
       inc(b2);
     end;
     if ((c1=5) and(c2=5)) or ((b1=5) and(b2=5)) then
       begin
        inc(k);
        if k = 1 then
        write ('"Saddle" points: ');
        write(A[i,j], ' ');
       end;
       c1:=0;
       c2:=0;
       b1:=0;
       b2:=0;
     end;
   end;
   if k = 0 then 
 write(' No "saddle" points');
  end;
begin
 Reading(A,i,j,n,m);
 Checking(A,i,j,m,n,b1,b2,c1,c2,k);
end. 
