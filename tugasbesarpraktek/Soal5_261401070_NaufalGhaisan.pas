program mahasiswa;
uses crt;

var
  m, n, i, j : integer;
  nilai, total, rata : real;
  lulus, tidaklulus : integer;
  rata2 : array[1..100] of real;
  status : array[1..100] of string;

begin
  clrscr;
  write('Jumlah mahasiswa (M) : ');
  readln(m);
  write('Jumlah tugas (N)     : ');
  readln(n);
  writeln;

  lulus := 0;
  tidaklulus := 0;

  for i := 1 to m do
  begin
    writeln('Mahasiswa ke-', i);
    total := 0;
    for j := 1 to n do
    begin
      write('  Nilai tugas ke-', j, ' : ');
      readln(nilai);
      total := total + nilai;
    end;

    rata := total / n;
    rata2[i] := rata;

    { kelulusan berdasarkan rata-rata }
    if rata >= 65 then
    begin
      status[i] := 'LULUS';
      lulus := lulus + 1;
    end
    else
    begin
      status[i] := 'TIDAK LULUS';
      tidaklulus := tidaklulus + 1;
    end;
    writeln;
  end;

  writeln('===== REKAPITULASI NILAI =====');
  for i := 1 to m do
    writeln('Mahasiswa ke-', i, ' : ', rata2[i]:0:2, ' -> ', status[i]);
  writeln;
  writeln('Total LULUS       : ', lulus);
  writeln('Total TIDAK LULUS : ', tidaklulus);
  readln;
end.