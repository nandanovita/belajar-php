CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- buat database fakultas
CREATE DATABASE fakultas;

-- buat table jurusan 
CREATE TABLE jurusan (
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     kode CHAR(4) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL
    -> );

-- buat table mahasiswa
CREATE TABLE mahasiswa (
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     id_jurusan INTEGER NOT NULL,
    ->     nim CHAR(8) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL,
    ->     jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL,
    ->     tempat_lahir VARCHAR(50) NOT NULL,
    ->     tanggal_lahir DATE NOT NULL,
    ->     alamat VARCHAR(255) NOT NULL,
    ->     FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
    -> );

-- memasukkan data jurusan
 insert into jurusan (kode, nama) values ("EP", "Ekonomi Pembangunan");
 insert into jurusan (kode, nama) values ("APBL", "Administrasi Publik");

-- memasukkan data mahasiswa 
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) 
value (1, "20011010", "Nanda", "Perempuan", "Mojokerto", "2001-11-22", "Sarirejo Gg 7");
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) 
value (1, "20011012", "Vanya", "Perempuan", "Mojokerto", "2002-02-10", "Kauman Gg 1");

-- update data mahasiswa 
update mahasiswa set nim = "20011011" where id = 2;

-- delete data mahasiswa 
delete from mahasiswa where id=2;




