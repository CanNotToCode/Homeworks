//Длина возрастающей подпоследовательности
type 
 Mass = array of integer;
var 
 A:mass;
 max,n:integer;
 
procedure Reading(var A:mass;  var n:integer);
 var i:integer;
 begin
 writeln('Input length of sequence ');
 read(n);
 Setlength(A,n);
writeln('Enter sequence of ', n, ' elements');
 for i:=0 to n-1 do
  read(A[i]);
 end; 
 
procedure Search(A:mass; n:integer; var max:integer);
 var i,s,m:integer;
     k:boolean;
 begin
  i:=0;
  s:=1;
  while (i<=n-2) do
   begin
    while (A[i]<A[i+1]) and (not k)  do
     begin
      inc(s);
      if i<n-2 then
      inc(i)
       else 
       k:=true; 
     end;
    if s>max then 
     max:=s;
    m:=i;
    i:=m+1;
    s:=1;
   end;
  end; 
 
 procedure Output(max:integer);
  begin
   if max = 0 then 
    writeln ('Sequence doesn`t contain increasing subsequence')
   else
    writeln('The maximum length of increasing subsequence - ',max);
  end;
begin
 Reading(A,n);
 Search(A,n,max);  
 Output(max);
end.
