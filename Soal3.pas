uses crt;
var
    n, i, j: integer;

begin
    clrscr;
    
    writeln('Masukkan ukuran pola (angka ganjil): '); readln(n); //Input ukuran pola
    
    // Memeriksa apakah n adalah angka genap, jika hasil mod 2 itu 0 jadi error
    if n mod 2 = 0 then
    begin
        writeln('Error: angka tidak valid, harus angka ganjil');
    end
    else
    begin
        // Membuat pola X
        for i := 1 to n do
        begin
            for j := 1 to n do
            begin
                // Memeriksa posisi untuk mencetak bintang
                if (i = j) or (i + j = n + 1) then
                    write('*')
                else
                    write(' ');
            end;
            writeln; // Pindah ke baris berikutnya
        end;
    end;
end.
