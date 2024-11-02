uses crt;
var
  jlhPembeli, i, n, jmlSayur, hargaSayur, jumlahSayur, totalBelanja: integer;
  
begin
clrscr;
  write('Masukkan jumlah pembeli : '); readln(jlhPembeli); //Input jumlah pembeli

  i := 1; //inisialisasi i yaitu jumlah pelanggan mulai dari 1
  while i <= jlhPembeli do
  begin
    writeln('Pelanggan ke-', i, ':'); //pelanggan ke i
    write('Masukkan jumlah jenis sayur yang dibeli: '); readln(jmlSayur); //input jumlah jenis sayur

    totalBelanja := 0; 
    n := 1; //inisialisasi n yaitu sayur ke-berapa, mulai dari 1
    while n <= jmlSayur do
    begin
      // Input harga dan jumlah sayur
      write('Masukkan harga sayur ke-', n, ': '); readln(hargaSayur);
      write('Masukkan jumlah sayur yang dibeli: '); readln(jumlahSayur);

      // Hitung total belanja untuk jenis sayur ini
      totalBelanja := totalBelanja + (hargaSayur * jumlahSayur);

      n := n + 1; //jenis sayur selanjutnya 
    end;

    // Output total belanja pembeli
    writeln('Total belanja untuk pembeli ke-', i, ': Rp ', totalBelanja);

    i := i + 1; //jumlah pelanggan berikutnya
  end;
end.
