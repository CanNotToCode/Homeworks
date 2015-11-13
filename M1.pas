type
 Mass = array [1..3,1..3] of real;
var
 B,A:mass;
procedure Readm( var A:mass);
 var i,j:integer;
  begin
   write ('Enter the matrix 3X3');
   writeln;
   for i:=1 to 3 do
    begin
     for j:=1 to 3 do
      read (A[i,j]);
    end;
    writeln; 
   end;
   
 procedure Transp( var A:mass; var B:mass);
   var i,j:integer;
   begin
   for i:=1 to 3 do
   for j:=1 to 3 do
    B[i,j]:=A[j,i];
   end;
   
 procedure Printm( var B:mass);
  var i,j:integer;
   begin
    write ('Transposed matrix: ');
    writeln;
   for i:=1 to 3 do
     begin
      for j:=1 to 3 do
       write (B[i,j],' ');
       writeln;
     end;
   end;
 begin;
  Readm(A);
  Transp(A,B);
  Printm(B);
 end.
    
