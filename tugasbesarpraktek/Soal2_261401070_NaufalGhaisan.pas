program cekpass;
uses crt;

var
password: string;
percobaan: integer;

begin
    clrscr;
    percobaan := 0;

    repeat
    percobaan := percobaan + 1;
    write('Masukkan password (percobaan ke-', percobaan, '): ');
    readln(password);

    if password = 'nopalganteng' then
    begin
        writeln('Login Berhasil! Selamat Datang');
        break;
    end
    else
        writeln('Password salah')

    until percobaan = 3;

    if password <> 'nopalganteng' then
    writeln('Akses Ditolak! Akun Terkunci.');

    readln;
end.
