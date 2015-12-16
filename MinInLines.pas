//Поиск минимального элемента строки матрицы
type
 Mass = array [1..3,1..3] of real;
var
 A:mass;

procedure Reading( var A:mass);
 var i,j:integer;
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
   
procedure Output(k:integer; min:real);
begin
  writeln('Minimum element of  ',k,' line  = ', min);  
end;

procedure Search (var A:mass);
var i,j:integer;
    min:real;
begin
  for i:=1 to 3 do
    begin
    min:=A[i,1];
     for j:=1 to 3 do
      if A[i,j]<min then 
        min:=A[i,j]; 
        Output(i,min);
    end;
    
  end;
  
 begin;
  Reading(A);
  Search(A);
 end.
    
