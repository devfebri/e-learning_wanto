<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mapel;
use App\Siswa;
use App\Tugas;
class DashboardController extends Controller
{
    public function index($id)
    {
        $kelas=\App\Kelas::all();
        $materi=\App\Materi::all();
        $guru=\App\Guru::all();
        $mapel=Mapel::all();
        $siswa=\App\Siswa::find($id);
        $datasiswa=Siswa::all();
        $tugas =Tugas::all();
        return view('dashboard',['kelas'=>$kelas,'siswa'=>$datasiswa,'siswa'=>$siswa,'materi'=>$materi,'guru'=>$guru,'mapel'=>$mapel,'tugas'=>$tugas]);
    }
}
