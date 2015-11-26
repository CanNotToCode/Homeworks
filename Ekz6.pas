type 
 Mass=array of char;
 
var
 max:integer;
 rez:string;
 NewFile:text;
 FileArr:mass;
 
procedure Reading(var NewFile:text);
 var n,i:integer;
     s:string;
  begin
   Assign(NewFile,'Newfile.txt');
   Rewrite(NewFile);
   Writeln('Input amount of strings');
   Readln(n);
   for i:=1 to n do
    begin
     readln(s);
     writeln(NewFile,s);
    end;
   close(NewFile);
  end;

procedure Conversion(var FileArr:mass; var NewFile:text);
 var
 i,m,n,l:integer;
 s:string;
 begin
 Reset(NewFile);
 While not EoF(NewFile) do
  begin
   readln(NewFile,s);
   l:=length(FileArr)+length(s)+2;
  SetLength(FileArr,l);
   n:=0;
   for i:=1 to length(s) do
    begin
     inc(m);
     inc(n);
     FileArr[m-1]:=s[n];
    end;
   inc(m);
   SetLength(FileArr,m);
   FileArr[m-1]:=' ';
  end;
  FileArr[length(FileArr)-1]:=' ';
 end; 
 
procedure Search(var FileArr:mass; var max:integer; var rez:string);
var i,k,j,index:integer;
 begin
 for i:=0 to length(FileArr)-1 do
 begin
  if FileArr[i]=' ' then
   begin
    if k>max then
     begin
     max:=k;
     index:=i-1;
   end;
   k:=0;
  end
 else inc(k);
end;
 
for j:=index-max+1 to index do
  begin
  rez:= rez+FileArr[j];
  end;
end;

procedure Output(max:integer;rez:string);
begin
 writeln('The length of the longest word: ',max);
 write('The longest word: ',rez);
end;

begin
 Reading(NewFile);
 Conversion(FileArr,NewFile);
 Search(FileArr,max,rez);
 Output(max,rez);
end.
