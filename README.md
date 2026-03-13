# Mihekolin Linux

Mihekolin adalah alat bantu command line untuk membuat proyek Android Kotlin dari Linux tanpa bergantung pada Android Studio.

## Isi Paket

- `mihekolin-installer` - binary installer utama
- `install.sh` - helper script agar instalasi lebih mudah
- `README.md` - panduan penggunaan paket ini

## Install Cepat

Jika Anda membuka folder ini dari file manager, jalankan `install.sh` dengan opsi "Run in Terminal" bila tersedia. Jika dari terminal, jalankan:

```bash
chmod +x install.sh
./install.sh
```

Jika command belum langsung dikenali di terminal yang sama:

```bash
source ~/.bashrc
```

## Verifikasi

Setelah instalasi selesai, cek dengan:

```bash
mihekolin
mihekolin --help
```

## Perintah Dasar

```bash
mihekolin doctor
mihekolin new NamaAplikasi
```

## Install Manual

Jika tidak ingin memakai script helper:

```bash
chmod +x mihekolin-installer
./mihekolin-installer
```

## Catatan

- Paket ini ditujukan untuk Linux.
- Binary command `mihekolin` sudah tertanam di dalam `mihekolin-installer`.
- Gunakan rilis yang sesuai dengan arsitektur Linux Anda.
