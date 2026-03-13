# Mihekolin Linux Release

Folder ini siap dibagikan ke pengguna Linux.

Isi folder:

- `mihekolin-installer`: binary installer utama
- `install.sh`: helper script agar instalasi lebih mudah
- `README.md`: panduan singkat penggunaan release ini

## Cara Install Cepat

Buka terminal di folder ini, lalu jalankan:

```bash
chmod +x install.sh
./install.sh
```

Setelah instalasi selesai, jika command belum dikenali di terminal yang sama jalankan:

```bash
source ~/.bashrc
mihekolin
```

## Cara Install Manual

Jika tidak ingin memakai script helper, jalankan installer langsung:

```bash
chmod +x mihekolin-installer
./mihekolin-installer
```

## Catatan

- Release ini ditujukan untuk Linux.
- Binary command `mihekolin` sudah di-embed ke dalam `mihekolin-installer`.
- Folder `build/` utama tidak perlu ikut dibagikan ke penerima.
