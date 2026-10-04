program Menghitungnilaiakhir;
uses crt;
var
  nama: string;
  nilaiTugas, nilaiUTS, nilaiUAS, nilaiAkhir, kehadiran : real;
  indeks : char;
  status : string;
begin
  clrscr;
  write('Nama mahasiswa : ');
  readln(nama);
  write('Nilai Tugas : ');
  readln(nilaiTugas);
  write('Nilai UTS : ');
  readln(nilaiUTS);
  write('Nilai UAS : ');
  readln(nilaiUAS);
  write('Kehadiran (%) : ');
  readln(kehadiran);

  nilaiAkhir := (nilaiTugas * 0.30) + (nilaiUTS * 0.30) + (nilaiUAS * 0.40);

  { status lulus butuh dua syarat sekaligus }
  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    status := 'LULUS'
  else
    status := 'TIDAK LULUS';

  
  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln;
  writeln('Nama Mahasiswa : ', nama);
  writeln('Nilai Akhir    : ', nilaiAkhir:0:2);
  writeln('Kehadiran      : ', kehadiran:0:0, '%');
  writeln('Indeks Huruf   : ', indeks);
  writeln('Status         : ', status);
  readln;
end.