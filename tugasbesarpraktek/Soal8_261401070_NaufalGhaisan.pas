program gajikaryawan;
uses crt;

var
  gol : char;
  jam : integer;
  pokok, lembur, bonus, total : longint;
  valid : boolean;

{ format ribuan: 1500000 jadi 1.500.000 }
function rp(x: longint): string;
var
  s: string;
  i: integer;
begin
  str(x, s);
  i := length(s) - 2;
  while i > 1 do
  begin
    insert('.', s, i);
    i := i - 3;
  end;
  rp := s;
end;

begin
  clrscr;
  write('Golongan (A/B/C) : ');
  readln(gol);
  write('Total jam kerja   : ');
  readln(jam);
  gol := upcase(gol);
  valid := true;

  case gol of
    'A': pokok := 1500000;
    'B': pokok := 2000000;
    'C': pokok := 2500000;
  else
    valid := false;
  end;

  writeln;
  if not valid then
    writeln('Golongan tidak tersedia')
  else
  begin
    { kelebihan dari 40 jam dihitung lembur }
    if jam > 40 then
      lembur := (jam - 40) * 20000
    else
      lembur := 0;

    { bonus khusus golongan C }
    if (gol = 'C') and (jam > 50) then
      bonus := 100000
    else
      bonus := 0;

    total := pokok + lembur + bonus;

    writeln('Gaji Pokok : Rp', rp(pokok));
    writeln('Lembur     : Rp', rp(lembur));
    writeln('Bonus      : Rp', rp(bonus));
    writeln('Total Gaji : Rp', rp(total));
  end;

  readln;
end.