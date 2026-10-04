program hariperbulan;
uses crt;

var
  tahun, bulan, hari : integer;
  kabisat : boolean;

begin
  clrscr;
  write('Tahun : ');
  readln(tahun);
  write('Bulan (1-12) : ');
  readln(bulan);
  writeln;

  { kabisat: habis dibagi 400, atau habis dibagi 4 tetapi tidak habis dibagi 100 }
  kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  case bulan of
    1, 3, 5, 7, 8, 10, 12: hari := 31;
    4, 6, 9, 11: hari := 30;
    2: if kabisat then
         hari := 29
       else
         hari := 28;
  else
    hari := 0;
  end;

  if hari = 0 then
    writeln('Nomor bulan tidak valid')
  else
    writeln('Bulan ', bulan, ' tahun ', tahun, ' memiliki ', hari, ' hari');

  readln;
end.