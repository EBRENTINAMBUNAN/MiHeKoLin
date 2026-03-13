# Mihekolin

Mihekolin adalah singkatan dari `Micro Helper Kotlin Linux`, yaitu alat bantu kecil untuk pengembangan aplikasi Android berbasis Kotlin di Linux tanpa bergantung pada Android Studio. Pada struktur ini, `src/Linux/mihekolin` sudah menjadi source binary penuh untuk command `mihekolin`, lalu `src/Linux/main.cpp` meng-embed binary tersebut ke installer C++. Pengguna akhir cukup menerima binary installer dari folder `build` atau paket `release`, lalu menjalankannya tanpa perlu mengubah source.

Source native per platform:

```text
src/Linux/
src/Windows/
```

## Ambil Source

Sebelum build atau compile, clone repositori ini terlebih dulu:

```bash
git clone https://github.com/EBRENTINAMBUNAN/MiHeKoLin.git
cd MiHeKoLin
```

## Build Installer

```bash
make
./build/mihekolin-installer
source ~/.bashrc
```

Hasil compile ada di:

```text
build/mihekolin
build/mihekolin-installer
```

## Build Release

```bash
make release
make strip
make release-strip
```

Paket distribusi hanya berisi binary installer:

```text
build/release/linux/mihekolin-installer
build/release/linux/install.sh
build/release/linux/README.md
build/release/linux/mihekolin-installer-linux-<arsitektur>.tar.gz
build/release/windows/mihekowin-installer.exe
build/release/windows/mihekowin-installer-windows-<arsitektur>.zip
```

## Daftar Perintah Setelah Install

```bash
mihekolin
mihekolin doctor
mihekolin doctor java gradle sdk
mihekolin new NamaAplikasi
mihekolin new NamaAplikasi com.namaaplikasi.app
cd NamaAplikasi && mihekolin run build
```

Default package:

```text
com.namaaplikasi.app
```

Catatan:

- `src/Linux/mihekolin` dikompilasi menjadi binary command `build/mihekolin`
- `src/Linux/main.cpp` bertugas memasang binary `mihekolin` ke `~/bin`
- `src/Windows/mihekowin.cpp` dan `src/Windows/main.cpp` adalah source native Windows
- binary yang dipasang dibuat read-only (`0555`) sebagai pembatas praktis agar end-user fokus menjalankan command, bukan mengubah source
- folder release menyesuaikan sistem operasi build, misalnya `build/release/linux/` saat dibangun di Linux
- build Windows memakai command `mihekowin.exe` dan installer `mihekowin-installer.exe`
- `mihekolin new` otomatis membuat project, menulis Gradle Wrapper langsung dari instalasi Gradle lokal, dan menjalankan build awal `./gradlew assembleDebug`
- APK debug hasil build awal tersedia di `app/build/outputs/apk/debug/app-debug.apk`
- `make strip` mengecilkan binary `build/mihekolin` dan `build/mihekolin-installer`
- `make release-strip` membuat paket distribusi installer dengan ukuran lebih kecil

## License

Proyek ini menggunakan lisensi MIT. Detail lisensi tersedia di file `LICENSE`.
