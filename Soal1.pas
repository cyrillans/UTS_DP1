uses crt;
var
  jarak, biayaDasar, biayaTambahan, totalAwal, diskon, diskon2, totalAkhir : real; 
  premium: boolean;
  persetujuan: char;

begin
  clrscr; //clean screen
  write('Jarak(km): '); readln(jarak); //input jarak perjalanan
  if jarak <= 5 then
    biayaTambahan := 5000*jarak //Biaya tambahan jika jarak kurang atau sama dengan 5km
  else if jarak <= 10 then
    biayaTambahan := 4000*jarak //Biaya tambahan jika jarak sekitar 5-10km
  else
    biayaTambahan := 3000*jarak; //Biaya tambahan jika jarak lebih dari 10km

  biayaDasar := 20000; //Biaya dasar
  totalAwal := biayaDasar + biayaTambahan; //Total biaya awal 
 
 //anggota premium atau bukan?
  write('Anggota Premium? Y/N : '); readln(persetujuan);
  if (persetujuan = 'Y')then 
    premium := true
  else
    premium := false;
  
  //Jika anggota premium, mendapat diskon 
  if premium = true then
  begin
    if totalAwal >= 100000 then //diskon 10% jika total belanja lebih dari 100rb
    begin
      diskon := 0.1 * totalAwal;
      diskon2 := (totalAwal-diskon)*0.05; //dan diskon 5% dari keseluruhan harga
      totalAkhir := totalAwal-diskon2; //menghitung total akhir
    end
    else
      diskon2 := (totalAwal-diskon)*0.05; //hanya dapat diskon 5% dari total keseluruhan
      totalAkhir := totalAwal-diskon2;
  end
  else
  totalAkhir := totalAwal; //total akhir sama dengan total awal jika bukan anggota premium
  writeln('Total Akhir : ', totalAkhir:7:0); //output total biaya akhir
end.

