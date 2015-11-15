type
 Matrix = array [1..3,1..3] of integer;
var 
 A:Matrix;
 i,j,s,k,m,c:integer;
procedure Input(var A:matrix);
var
 i,j:integer;
 begin
  for i:=1 to 3 do
   begin
    for j:=1 to 3 do
     read(A[i,j]); 
   end;
  end;
  
procedure Calculation(var A:matrix);
var
 i,j,s,k,m,c:integer;
 begin
  for i:=1 to 3 do 
   begin
    for j:=1 to 3 do
     begin
      for k:=1 to 3 do
       begin
        s:=s+A[i,k];
        m:=m+A[k,j];
       end;
      if (s = m) and (A[i,j]>=1) and (A[i,j]<=3) then
       inc(c);
       s:=0;
       m:=0;
      end;
    end;
   if c = 9 then
    write('It is a magic square! ')
   else
    write ('It isn`t a magic square. ');
  end;
 begin
  Input (A);
  Calculation(A);
 end.
    
    
