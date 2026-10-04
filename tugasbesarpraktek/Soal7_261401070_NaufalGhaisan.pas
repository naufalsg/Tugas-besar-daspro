program tarifparkir;
uses crt;

var
  kode : char;
  lama : integer;
  tarif : longint;

begin
  clrscr;
  write('Kode kendaraan (M/K/B) : ');
  readln(kode);
  write('Lama parkir (jam)      : ');
  readln(lama);
  writeln;

  case upcase(kode) of
    'M': begin
           tarif := 5000 + (lama - 1) * 3000;
           if lama > 10 then tarif := 30000;
           writeln('Mobil, tarif parkir : Rp', tarif);
         end;
    'K': begin
           tarif := 2000 + (lama - 1) * 1000;
           if lama > 10 then tarif := 10000;
           writeln('Motor, tarif parkir : Rp', tarif);
         end;
    'B': begin
           tarif := 10000 + (lama - 1) * 5000;
           if lama > 10 then tarif := 50000;
           writeln('Bus, tarif parkir : Rp', tarif);
         end;
  else
    writeln('Kode kendaraan tidak tersedia');
  end;

  readln;
end.