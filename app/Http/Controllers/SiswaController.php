<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\Kelas;
use App\Siswa;

class SiswaController extends Controller
{
    public function index(Request $request)
    { 

        if ($request->has('cari')) {
            $data_siswa = \App\Siswa::where('nama', 'LIKE', '%' . $request->cari . '%')->paginate(8);
        } else {
            $data_siswa = \App\Siswa::paginate(10);
        }
        
        $kelas = Kelas::all();
        
       
        return view('siswa.index', ['data_siswa' => $data_siswa, 'kelas' => $kelas]);
    }


    public function create(Request $request)
    {
        //validasi saat error pas tambah tada
        
        $this->validate($request, [
            'nisn' => 'required|integer|min:5|unique:siswa',
            'nama' => 'required|min:2',
            'kelas_id' => 'required',
            'email' => 'required|email|unique:users',
            'jenis_kelamin' => 'required',
            'agama' => 'required',
            'kelas_id' => 'required',
            'tempat_lahir' => 'required',
            'tanggal_lahir' => 'required',
            'avatar' => 'mimes:jpg,png',

        ]);

        //insert table user
        $user = new \App\User;
        $user->role = 'siswa';
        $user->name = $request->nama;
        $user->email = $request->email;
        $user->password = bcrypt('siswa123');
        $user->remember_token = str_random(60);
        $user->save();

        //insert table siswa
        $request->request->add(['user_id' => $user->id]);


        $siswa = \App\Siswa::create($request->all());
           

        if (auth()->user()->role == 'admin') {
            return redirect('/admin/siswa')->with('sukses', 'Data Berhasil Diinput');
        } elseif (auth()->user()->role == 'guru') {
            return redirect('/guru/siswa')->with('sukses', 'Data Berhasil Diinput');
        }
    }

    public function edit($id)
    {
        $siswa = \App\Siswa::find($id);
        return view('siswa/edit', ['siswa' => $siswa]);
    }

    public function update(Request $request, $id)
    {
        
        $siswa = \App\Siswa::find($id);
        $siswa->update($request->all());
        if ($request->has('avatar')) {
           
            $request->file('avatar')->move('images/', $request->file('avatar')->getClientOriginalName());
            $siswa->avatar = $request->file('avatar')->getClientOriginalName();
            $siswa->save();
        }
        if (auth()->user()->role == 'admin') {
            return redirect('/admin/siswa')->with('sukses', 'Data Berhasil Diupdate');
        } elseif (auth()->user()->role == 'guru') {
            return redirect('/guru/siswa')->with('sukses', 'Data Berhasil Diupdate');
        }
    }

    public function hapus($id, Request $request)
    {
        $siswa = \App\Siswa::find($id);
        $user = \App\User::find($siswa->user_id);
        $user->delete();
        $siswa->delete();

        if (auth()->user()->role == 'admin') {
            return redirect('/admin/siswa')->with('sukses', 'Data Berhasil Dihapus');
        } elseif (auth()->user()->role == 'guru') {

            return redirect('/guru/siswa')->with('sukses', 'Data Berhasil Dihapus');
        }
        
    }

    public function profile($id)
    {
        $siswa = \App\Siswa::find($id);
        return view('siswa.profile', ['siswa' => $siswa]);
    }
}
