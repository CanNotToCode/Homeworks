const n = 7;
m = 3;
 var 
A1:array [1..n] of real;
A2:array [1..m] of real;
 i,j,k,l,index:integer;
 begin
 writeln('������� ������ �� 7 ���������');
for i:=1 to n do //� ����������
 read (A1[i]); 
 writeln('������� ������ �� 3 ���������');// �����������
for j:=1 to m do// ��������
 read (A2[j]);// �������
for i:=1 to (n-m+1) do 
 begin
  if A1[i] = A2[1] then //����� ������� �������� 2 ������� � 1 �������
   begin 
    index := i;
    for k := index to (index+m-1) do
     begin
      for j:=1 to m do
        begin
         if A1[k] = A2[j] then
           inc(l)
           else Break;
         end;
      end;
    end;
   if l = j then Break;
   end;
   write('������ ������ ������ � ������ � ',index,' ��������');
 end.
    
 
