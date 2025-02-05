<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mapel;
use App\Guru;
use App\Kelas;
use App\Tugas;

class MapelController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('cari')) {
            $data_mapel = Mapel::where('nama', 'LIKE', '%' . $request->cari . '%')->paginate(10);
        } else {
            $data_mapel = Mapel::paginate(10);
        }
        $guru=Guru::all();
        
        $kelas=Kelas::all();
        return view('mapel.index',['data_mapel'=>$data_mapel,'guru'=>$guru,'kelas'=>$kelas]);
    }
    public function index2($id)
    {
        $mapel=Mapel::find($id);
        // dd($guru);
        return view('mapel.index2',['mapel'=>$mapel]);
    }
    
    public function create(Request $request)
    {
        $mapel=Mapel::create($request->all());
        $mapel->kelas()->attach($request->kelas);

        if (auth()->user()->role == 'admin') {
            return redirect('/admin/mapel')->with('sukses', 'Data Berhasil Ditambah');
        } elseif (auth()->user()->role == 'guru') {

            return redirect('/guru/mapel')->with('sukses', 'Data Berhasil Ditambah');
        }

    }

    public function hapus($id)
    {
        $data_mapel=Mapel::find($id);
        

        if($data_mapel->materi->count()==0){
            $data_mapel->delete();
            if (auth()->user()->role == 'admin') {
                return redirect('/admin/mapel')->with('sukses', 'Data Berhasil Dihapus');
            } elseif (auth()->user()->role == 'guru') {
    
                return redirect('/guru/mapel')->with('sukses', 'Data Berhasil Dihapus');
            }
        }
        else{
            if (auth()->user()->role == 'admin') {
                return redirect('/admin/mapel')->with('gagal', 'Data Gagal Dihapus, Hapus Materi Yang Berhubungan Dengan Mata Pelajaran Terlebih Dahulu');
            } elseif (auth()->user()->role == 'guru') {
    
                return redirect('/guru/mapel')->with('gagal', 'Data Gagal Dihapus, Hapus Materi Yang Berhubungan Dengan Mata Pelajaran Terlebih Dahulu');
            }
        }
        
    }

    public function open($id)
    {
        $mapel=Mapel::find($id);
        $data_tugas=Tugas::find($id);
        return view('mapel.open',['data_tugas'=>$data_tugas,'mapel'=>$mapel]);
    }
}

