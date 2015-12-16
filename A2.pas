type 
 Mass = array  of real;
var
 A:mass;
 k,n:integer;
 l:boolean;
 
procedure Reading (var A:mass; var n:integer);
 var  i:integer;
 begin
 writeln ('Input length of sequence ');
 readln(n);
 SetLength(A,n);
 writeln('Enter sequence of ',n, ' elements');
 for i:=0 to n-1 do
   read(A[i]);
  end; 
  
procedure Period (A: Mass; n:integer; var l:boolean;  var k:integer);
 var s,i:integer;
 begin  
  k:=1;
 while k <= (n div 2) do //период не может быть больше половины длины последовательности
  begin 
  for i:=0 to n-k-1 do
   if A[i]=A[i+k] then
    inc(s);
   if s = n-k then
   begin
     l:=true;
     Break;
    end 
    else
     begin
      inc(k);
      s:=0;
    end;
  end;
 end;
 
procedure Output(l:boolean; k:integer);
 begin
  if not l then 
   write('The sequence is not periodic')
  else
   write( 'Period is ',k);
 end;
  
begin
 Reading(A,n);
 Period(A,n,l,k); 
 Output (l,k);
end.
    
    
