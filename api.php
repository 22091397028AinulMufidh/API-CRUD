<?php

header('Content-Type: application/json');
$koneksi = mysqli_connect("localhost", "root", "", "db_mhs");

if($_SERVER['REQUEST_METHOD'] === 'GET'){

    $sql = "SELECT * FROM Mahasiswa";
    $query = mysqli_query($koneksi, $sql);
    $array_data = array();
    
    while($data = mysqli_fetch_assoc( $query )) {
        $array_data[] = $data;
    }

    echo json_encode($array_data);

} elseif($_SERVER['REQUEST_METHOD'] === 'POST') {

    $nama = $_POST['nama'];
    $nim = $_POST['nim'];
    $jurusan = $_POST['jurusan'];
    $semester = $_POST['semester'];
    $ipk = $_POST['ipk'];
    
    $sql = "INSERT INTO Mahasiswa (nama, nim, jurusan, semester, ipk) VALUES( '$nama',
     '$nim','$jurusan', '$semester', '$ipk')";

    $cek = mysqli_query($koneksi, $sql);

    if($cek) {
        $data = [
            'status' => 'berhasil'
        ];
        
        echo  json_encode([$data]);
    } else {
        $data = [
            'status' => 'gagal'
        ];
        
        echo  json_encode([$data]);

    }

} elseif ($_SERVER['REQUEST_METHOD'] === 'DELETE') {

    $id = $_GET['id'];
    $sql = "DELETE FROM Mahasiswa WHERE id='$id'";
    $cek = mysqli_query($koneksi, $sql);

    if($cek) {
        $data = [
            'status' => 'berhasil'
        ];
        
        echo  json_encode([$data]);
    } else {
        $data = [
            'status' => 'gagal'
        ];
        
        echo  json_encode([$data]);

    }

} elseif($_SERVER['REQUEST_METHOD'] === 'PUT') {
    $id = $_GET['id'];
    $nama = $_GET['nama'];
    $nim = $_GET['nim'];
    $jurusan = $_GET['jurusan'];
    $semester = $_GET['semester'];
    $ipk = $_GET['ipk'];

    $sql = "UPDATE Mahasiswa SET id='$id', nama='$nama', nim='$nim', jurusan='$jurusan',
     semester='$semester', ipk='$ipk' WHERE id='$id'";
    $cek = mysqli_query($koneksi, $sql);

    if($cek) {
        $data = [
            'status' => 'berhasil'
        ];
        
        echo  json_encode([$data]);
    } else {
        $data = [
            'status' => 'gagal'
        ];
        
        echo  json_encode([$data]);

    }
}
