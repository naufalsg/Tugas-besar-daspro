program deretangka;
uses crt;

var
n, i, pilihan: integer;

begin
    clrscr;
    write('Masukkan nilai N : ');
    readln(n);
    write('Pilihan deret (1: Ganjil, 2: Genap) : ');
    readln(pilihan);
    writeln;

    i := 0;
    while i < n do
    begin
        i := i + 1;   { naik di awal supaya continue tidak membuat loop macet }

        { lewati angka yang tidak sesuai kategori }
        if (pilihan = 1) and (i mod 2 = 0) then
            continue;
        if (pilihan = 2) and (i mod 2 <> 0) then
            continue;

        { lewati kelipatan 5 }
        if i mod 5 = 0 then
            continue;

        write(i, ' ');
    end;

    writeln;
    readln;
end.