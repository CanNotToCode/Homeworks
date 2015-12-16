//Сортировка пузырьком
type
  Mass = array of real;
 var 
  Numbers:Mass;
  n:integer;
  
 procedure Reading(var Numbers:Mass; var n:integer);
  var 
   i:integer;
  begin
  writeln('Input length of array');
  read(n);
  SetLength(Numbers,n);
  writeln('Input array');
  for i:=0 to n-1 do
   read(Numbers[i]);
  end;
  
  procedure Bubble( var Numbers:mass; n:integer);
   var i,j:integer;
    temp:real;
   begin
   for i:=n-1 downto 0 do
    begin
     for j:=0 to n-2 do
     if Numbers[j]>Numbers[j+1] then
      begin
      temp:=Numbers[j];
      Numbers[j]:=Numbers[j+1];
      Numbers[j+1]:=temp;
      end;
     end;
    end;
    
    procedure Output(Numbers:Mass; n:integer);
     var i:integer;
     begin
      write('Sorted array: ');
      for i:= 0 to n-1 do
       write(Numbers[i], ' ');
      end;
     
     BEGIN
      Reading(Numbers,n);
      Bubble(Numbers,n);
      Output(Numbers,n);
     END.
     
  
 
