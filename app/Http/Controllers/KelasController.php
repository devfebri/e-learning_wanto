<?php

namespace App\Http\Controllers;

use App\Kelas;
use App\Materi;
use App\Siswa;
use App\TugasSiswa;
use App\Mapel;
use App\MapelSiswa;
use App\SoalJawaban;
use App\Tugas;
use Illuminate\Http\Request;


class KelasController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('cari')) {
            $data_kelas = \App\Kelas::where('nama', 'LIKE', '%' . $request->cari . '%')->paginate(6);
        } else {
            $data_kelas=\App\Kelas::paginate(6);
        }
        
        return view('kelas.index',['data_kelas'=> $data_kelas]);
        
    }
    public function create(Request $request)
    {
        $this->validate($request,[
            'nama'=>'required',
        ]);
        \App\Kelas::create($request->all());
        
        if (auth()->user()->role == 'admin') {
            return redirect('/admin/kelas')->with('sukses', 'Data Berhasil Ditambah');
        } elseif (auth()->user()->role == 'guru') {

            return redirect('/guru/kelas')->with('sukses', 'Data Berhasil Ditambah');
        }
    }
    public function open($id)
    {
        $data_kelas=\App\Kelas::find($id);
       
        
        // $siswas=auth()->user()->siswa->id;
        $tugass=Tugas::all()->first();
        
        $done=TugasSiswa::all()->first();
        // dd($data_kelas);
        
        
        // $itsdone=TugasSiswa::all();
        // $tes=$itsdone->siswa;
        
        $kelas=\App\Kelas::all();
        $siswa=Siswa::all();
        
        
        
        return view('kelas.open',['data_kelas'=> $data_kelas, 'kelas' => $kelas,'siswa'=>$siswa,'done'=>$done,'tugass'=>$tugass]);
    }
    public function tugassiswa($id)
    {
        $siswa=Siswa::find($id);
        $data=TugasSiswa::find($siswa->siswa_id);
        
        return view('kelas.tugassiswa',['siswa'=>$siswa,'data'=>$data]);
    }

    public function nilaisiswa($id)
    {
        $siswa=Siswa::find($id);
        
        return view('kelas.nilaisiswa',['siswa'=>$siswa]);
    }
    public function nilai(Request $request)
    {
        // $this->validate($request,[
        //     'nilai'=>'required',
        // ]);
        // $nilai=MapelSiswa::create($request->all());
        $nilai=new MapelSiswa();
        $nilai->mapel_id=$request->mapel_id;
        $nilai->siswa_id=$request->siswa_id;
        $nilai->tugas1=$request->tugas1;
        $nilai->tugas2=$request->tugas2;
        $nilai->tugas3=$request->tugas3;
        $nilai->tugas4=$request->tugas4;
        $nilai->tugas5=$request->tugas5;
        $nilai->tugas6=$request->tugas6;
        $nilai->uts=$request->uts;
        $nilai->uas=$request->uas;
        $nilai->save();
        return redirect()->back()->with('sukses', 'Nilai Berhasil Disimpan');
    }
    public function update(Request $request,$id)
    {
        $data=MapelSiswa::find($id);
        $data->update($request->all());
        return redirect()->back()->with('sukses', 'Nilai Berhasil diupdate');
    }
  

    public function siswa(Request $request)
    {
        $siswa=Siswa::all();
        $kelas=\App\Kelas::all();
    
        return view('kelas.siswa',['kelas' => $kelas,'siswa'=>$siswa]);
    }
    public function hapuss($id)
    {
        $mapelsiswa=MapelSiswa::find($id);
        $mapelsiswa->delete();
        return redirect()->back()->with('sukses', 'Data Berhasil Dihapus');
    }
    public function hapus($id)
    {
        $kelas = \App\Kelas::find($id);
       
        if($kelas->siswa->count()==0){
            
            if($kelas->materi->count()==0){
                if (auth()->user()->role == 'admin') {
                    $kelas->delete();
                    return redirect('/admin/kelas')->with('sukses', 'Data Berhasil Dihapus');
                } elseif (auth()->user()->role == 'guru') {
                    $kelas->delete();
                    return redirect('/guru/kelas')->with('sukses', 'Data Berhasil Dihapus');
                }
            }
            else{
                return redirect('/admin/kelas')->with('gagal', 'Data Gagal Dihapus, Hapus Materi Yang Ada Didalam Kelas Terlebih Dahulu...');
            }
        }
        else{
            return redirect('/admin/kelas')->with('gagal', 'Data gagal dihapus, hapus siswa yang ada didalam kelas terlebih dahulu...');
        }
        
        
       
        
        

        if (auth()->user()->role == 'admin') {
            return redirect('/admin/kelas')->with('sukses', 'Data Berhasil Dihapus');
        } elseif (auth()->user()->role == 'guru') {

            return redirect('/guru/kelas')->with('sukses', 'Data Berhasil Dihapus');
        }
    }
}
