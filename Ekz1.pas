type 
 Mass = array of integer;
 var
 A1, B1, Rez: array of integer; //ј1 и ¬1 - массивы, в которые преобразуютс€ строки, Rez - массив, хран€щий значени€ суммы
 A, B, P, R, J: string; 
 n, m, pr, s, f, h, v, x, g, d: integer;
procedure Reading(Var A,B:string; var n,m:integer); //считывание
 begin
 writeln('¬ведите числа ');
  readln(A);
  read(B);
  n := Length(A); // длина введенных строк
  m := Length(B);
  
  if (n >= m) then 
   begin
    P := A;
    R := B;
    f := n; // f хранит длину наибольшей строки
    h := m;
   end
  else
   begin
    P := B;
    R := A; 
    f := m;
    h := n;
   end;
 end;   
 
 procedure Conversion (var A1,B1:array of integer; var f,pr,x,g,d,h:integer; var P, R:string); //преобразование
  begin
   SetLength(A1,f);// устанавливаетс€ длина массивов, равна€ длине наибольшей строки
   SetLength(B1,f);
  for f:=1 to f do //длинна€ строка преобразуетс€ в массив
   begin
    Val(P[f],A1[x],pr);
    inc(x);
    end;
    
 g:=f-h;
 d:=1;
   while g <= Length (B1)-1 do 
     begin 
      Val(R[d],B1[g],pr);
      inc(g);
      inc(d);
     end;
   end;
   
  procedure Calculation (var Rez,A1,B1:array of integer; f,g,s,v:integer); //вычисление
   begin
    SetLength(Rez, f+1); //длина суммы не может быть больше длины наибольшего числа +1
    g := f-1;
    s := (Length(Rez)-1);
    while (s >= 0) and (g >= 0) do
     begin
      Rez[s]:= Rez[s] + (A1[g]+B1[g])mod 10;
      v := (A1[g]+B1[g])div 10;
      if g > 0 then
       A1[g-1]:= A1[g-1]+v
      else
       Rez[s-1]:=Rez[s-1]+v;
      g:=g-1;
      s:=s-1;
   end; 
  end;
   
procedure Output(var Rez: mass; var J:string; n:integer); //вывод
 begin  
  if Rez[0]=0 then // из элементов массива, содержащего сумму, создаетс€ строка
   for n:=1 to Length(Rez)-1 do
    J:=J+Rez[n]
  else  
   for n:=0 to Length(Rez)-1 do
    J:=J+Rez[n];
    write( '—умма равна ', J);
  end;
  begin
   Reading(A,B,n,m);
   Conversion (A1,B1,f,pr,x,g,d,h, P, R);
   Calculation (Rez,A1,B1,f,g,s,v);
   Output(Rez,J,n);
end.

    
    