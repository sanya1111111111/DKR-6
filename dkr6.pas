uses crt;

var
    MainAr: array[1..101] of string;
    x,len,i: integer;
    
procedure Insert;
begin
  readln(MainAr[len+1]);
  len:=len+1
end;

procedure Chk;
begin
  writeln(#10+'В очереди содержится '+len+' элементов'+#10)
end;

procedure First;
begin
  if len > 0 then
  begin
    
    writeln(#10+MainAr[len]+#10);
    i:=1;
    while i <= len do
    begin
      MainAr[i]:=MainAr[i+1];
      i:=i+1
    end;
    len:=len-1;
  end
  else writeln(#10+'Ошибка, очередь пуста'+#10);
end;

    
begin
  x:=2;
  len:=0;
  while x <> 0 do
  begin
    println('Выберите действие:'+#10+
    '1 - Считывание первого элемета '+#10+
    '2 - Вставка элемента в конец'+#10+
    '3 - Проверка количества элементов в очереди'+#10+
    '0 - Выход'+#10);
    readln(x);
    case x of
      1: First;
      2: Insert;
      3: Chk;
    end;
  end;
end.