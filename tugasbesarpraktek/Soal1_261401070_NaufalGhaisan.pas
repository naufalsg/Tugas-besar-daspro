

program tokobuku;
uses crt;
var
  n, i: integer;
  harga: array[1..100] of real;
  totalbelanja, diskon, totalbayar: real;
  persen: integer;
begin
    clrscr;
    writeln(' Program belanja toko buku');
    writeln;
    write('Jumlah barang yang dibeli : ');
    readln(n);
    writeln;

    { input harga barang ke-1 sampai ke-N }
    totalbelanja := 0;
    for i := 1 to n do
    begin
        write('Harga barang ke-', i, ' : Rp ');
        readln(harga[i]);
        totalbelanja := totalbelanja + harga[i];
    end;

    { menentukan diskon }
    if totalbelanja < 100000 then
        persen := 0
    else if totalbelanja < 500000 then
        persen := 10
    else
        persen := 20;

    diskon := totalbelanja * persen / 100;
    totalbayar := totalbelanja - diskon;

    { menampilkan rincian }
    writeln;
    writeln(' ===== RINCIAN BELANJA =====');
    for i := 1 to n do
        writeln('Barang ke-', i, ' : Rp ', harga[i]:0:0);
    writeln;
    writeln('Total sebelum diskon : Rp ', totalbelanja:0:0);
    writeln('Diskon (', persen, '%)', '        : Rp ', diskon:0:0);
    writeln('Total bayar akhir    : Rp ', totalbayar:0:0);
    readln;
end.