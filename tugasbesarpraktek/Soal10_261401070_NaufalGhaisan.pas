program namahari;
uses crt;

var
  hari : integer;

begin
  clrscr;
  write('Masukkan angka hari (1-7) : ');
  readln(hari);

  case hari of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
  else
    writeln('Angka hari tidak valid');
  end;

  readln;
end.