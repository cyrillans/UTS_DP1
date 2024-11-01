uses crt;
var
    kembalian, jumlahPecahan : longint;
    pecahanUang : array[1..11] of longint;
    jumlahPerPecahan : array[1..11] of longint;
    i : integer;

begin
clrscr;
    //Pecahan uang yang tersedia
    pecahanUang[1] := 100000;
    pecahanUang[2] := 75000;
    pecahanUang[3] := 50000;
    pecahanUang[4] := 20000;
    pecahanUang[5] := 10000;
    pecahanUang[6] := 5000;
    pecahanUang[7] := 2000;
    pecahanUang[8] := 1000;
    pecahanUang[9] := 500;
    pecahanUang[10] := 200;
    pecahanUang[11] := 100;

    write('Masukkan jumlah kembalian: '); readln(kembalian); //Input jumlah kembaliannya
    
    jumlahPecahan := 0; //Inisialisasi jumlah pecahan awal sama dengan 0
    
    // Proses untuk menghitung pecahan
    for i := 1 to 11 do
    begin
        jumlahPerPecahan[i] := kembalian div pecahanUang[i]; //untuk menghitung berapa pecahan yang dibutuhkan
        kembalian := kembalian mod pecahanUang[i]; //menghitung sisa kembalian
        jumlahPecahan := jumlahPecahan + jumlahPerPecahan[i]; //menghitung total pecahan
    end;
    writeln('Jumlah minimum pecahan uang yang dibutuhkan: ', jumlahPecahan); //output jumlah pecahannya
end.
