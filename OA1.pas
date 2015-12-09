type 
 Mass=array of integer;
var 
 Numbers:mass;
 index,n,element:integer;
 
procedure Reading ( var Numbers:Mass; var n,element:integer);
 var i:integer;
 begin
 writeln('Input length of array');
 readln(n);
 SetLength(Numbers,n);
 writeln('Input array');
 for i:=0 to n-1 do
  read(Numbers[i]);
 writeln('Input your element');
  read(element);
 end;
 
 procedure Search(Numbers:Mass; n,element:integer; var index:integer);
  var
   left,right, middle:integer;
   found:boolean;
  begin
   left:=0;
   right:=n-1;
   found:=false;
   while not found and (left<right) do
    begin
    middle:=(left+right)div 2;
    if element>Numbers[middle] then
     left:= middle +1;
    if element<Numbers[middle] then
     right:= middle +1;
    if element=Numbers[middle] then
     begin
      index:=middle;
      found:=true;
     end;
    end;
   end;
   
  BEGIN
   Reading(Numbers,n,element);
   Search(Numbers,n, element,index);
   if index = 0 then
    write('No')
   else 
    write('Index is ', index+1);
  END.
    
