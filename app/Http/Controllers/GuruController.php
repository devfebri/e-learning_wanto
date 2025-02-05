<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mapel;
class GuruController extends Controller
{
    public function getAvatar()
    {
        if (!$this->avatar) {
            return asset('images/default.jpg');
        }
        return asset('images/' . $this->avatar);
    }
    public function index(Request $request)
    {
        if ($request->has('cari')) {
            $data_guru = \App\Guru::where('nama', 'LIKE', '%' . $request->cari . '%')->paginate(8);
        } else {
            $data_guru = \App\Guru::paginate(18);
        }
        
        $mapel=Mapel::all();
        return view('guru.index', ['data_guru' => $data_guru,'mapel'=>$mapel]);
    }


    public function create(Request $request)
    {

        $this->validate($request, [
            'nip' => 'required|integer|min:5|unique:guru',
            'nama' => 'required|min:2',
            'email' => 'required|email|unique:users',
            'jenis_kelamin' => 'required',
            'tanggal_lahir' => 'required',
            'mapel_id'=>'required',


        ]);
        //insert table user
        $user = new \App\User;
        $user->role = 'guru';
        $user->name = $request->nama;
        $user->email = $request->email;
        $user->password = bcrypt('guru123');
        $user->remember_token = str_random(60);
        $user->save();
        
        
        //insert table siswa
        $request->request->add(['user_id' => $user->id]);
        $guru = \App\Guru::create($request->all());
        if (auth()->user()->role == 'admin') {
            
            return redirect('admin/guru')->with('sukses', 'Data Berhasil Diinput');
        }
    }

    public function edit($id)
    {
        $guru = \App\Guru::find($id);
        $mapel=Mapel::all();
        return view('guru/edit', ['guru' => $guru,'mapel'=>$mapel]);
    }
    public function update(Request $request, $id)
    {
        $guru = \App\Guru::find($id);
        $user=\App\User::find($guru->user_id);
        $user->name=$request->nama;
        $user->save();
        $guru->update($request->all());
        return redirect('/admin/guru')->with('sukses', 'Data Berhasil Diupdate');
    }

    public function hapus($id)
    {
        
        $guru = \App\Guru::find($id);
        $user = \App\User::find($guru->user_id);
        $user->delete();
        $guru->delete();
        return redirect('/admin/guru')->with('sukses', 'Data Berhasil Dihapus');
        
       
        
    }
}
