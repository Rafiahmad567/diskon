import 'dart:io';

void main () {
  stdout.write("masukan nama pelanggan: ");
  var namapelanggan = stdin.readLineSync()!;
  stdout.write("masukan nama barang: ");
  var namabarang = stdin.readLineSync()!;
  stdout.write("masukan jumlah barang: ");
  int jumlah = int.parse(stdin.readLineSync() !);
  stdout.write("masukan harga barang: ");
  int harga = int.parse(stdin.readLineSync()!);

  var totalpembayaran = jumlah * harga;
  double potongan = 0.0;

  if (totalpembayaran > 500000) {
    potongan = totalpembayaran * 0.20;
  } else if (totalpembayaran > 2500000) {
    potongan = totalpembayaran * 0.15;
  } else if (totalpembayaran > 1000000) {
    potongan = totalpembayaran * 0.02;
  }

  double totalsetelahpotongan = totalpembayaran - potongan;

  print("=== struk transaksi ===");
  print("Nama pelanggan: $namapelanggan");
  print("Nama barang: $namabarang");
  print("jumlah: $jumlah");
  print("harga barang: $harga");
  print("total pembayaran: $totalpembayaran");
  print("potongan harga: $potongan");
  print("total setelah potongan: $totalsetelahpotongan");

  stdout.write('bayar : ');
  int bayar = int.parse(stdin.readLineSync()!);
  
  var kembali = bayar - totalsetelahpotongan;
  print('kembalian : $kembali');
}