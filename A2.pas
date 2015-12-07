type 
 Mass = array [1..18] of real;
var
 A:mass;
 i,k,s:integer;
 
procedure Reading (var A:mass);
 var  i:integer;
 begin
 writeln('Enter sequence of 18 elements');
 for i:=1 to 18 do
   read(A[i]);
  end; 
  
procedure Period (A: Mass);
 var s,k,i,l:integer;
 begin  
  k:=1;
 while k<=9 do
  begin 
  for i:=1 to 18-k do
   if A[i]=A[i+k] then
    inc(s);
   if s = 18-k then
   begin
     l:=1;
     writeln('Period is ', k);
     Break;
    end 
    else
     begin
      inc(k);
      s:=0;
    end;
  end;
  if l = 0 then 
  write( 'Еhe sequence is not periodic');
 end;
begin
Reading(A);
Period(A); 
end.
    
    
