program kalkulator;
uses crt;

var
  pilihan, a, b : integer;
  lagi : char;

begin
  repeat
    clrscr;
    writeln('===== KALKULATOR SEDERHANA =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    writeln;
    write('Pilih operasi (1-5) : ');
    readln(pilihan);
    write('Angka pertama : ');
    readln(a);
    write('Angka kedua   : ');
    readln(b);
    writeln;

    case pilihan of
      1: writeln(a, ' + ', b, ' = ', a + b);
      2: writeln(a, ' - ', b, ' = ', a - b);
      3: writeln(a, ' * ', b, ' = ', a * b);
      4: if b = 0 then
           writeln('Tidak bisa dibagi nol')
         else
           writeln(a, ' / ', b, ' = ', a / b:0:2);
      5: if b = 0 then
           writeln('Tidak bisa dibagi nol')
         else
         begin
           writeln(a, ' DIV ', b, ' = ', a div b);
           writeln(a, ' MOD ', b, ' = ', a mod b);
         end;
    else
      writeln('Pilihan tidak tersedia');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T) : ');
    readln(lagi);
  until (lagi = 'T') or (lagi = 't');
end.