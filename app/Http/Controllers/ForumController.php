<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Forum;
use App\Pengumuman;

class ForumController extends Controller
{
    public function index(){
        $forum=Forum::orderBy('created_at','desc')->paginate(10);
        $pengumuman=Pengumuman::all();
        return view('forum.index',compact(['forum','pengumuman']));
    }

    public function create(Request $request){
        $this->validate($request, [
            
            'konten' => 'required',
           
        ]);
       
        $forum=new Forum;
      
        $forum->konten=$request->konten;
        $forum->user_id=auth()->user()->id;
        $forum->save();
        if (auth()->user()->role == 'siswa') {
            return redirect('siswa/forum')->with('sukses','Berhasil Menambahkan Pesan');
        }elseif(auth()->user()->role == 'guru'){
            return redirect('guru/forum')->with('sukses','Berhasil Menambahkan Pesan');
        }
    }
}
