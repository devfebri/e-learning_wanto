<?php

namespace App\Http\Controllers;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Kelas;
use App\Materi;
use Illuminate\Support\Facades\Storage;

use File;

use function Symfony\Component\String\s;

class MateriController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('cari')) {
            $data_materi = \App\Materi::where('nama_mp', 'LIKE', '%' . $request->cari . '%')->paginate(8);
        } else {
            $data_materi = \App\Materi::paginate(20);
        }
        
        $mapel=\App\Mapel::all();
        $kelas=\App\Kelas::all();
        return view('materi.index',['data_materi' => $data_materi,'kelas' => $kelas,'mapel'=>$mapel]);
    }


    public function view($id)
    {
        $data_materi=Materi::find($id);
        
        return view('materi.view',compact('data_materi'));
    }

    public function create(Request $request)
    {
        $this->validate($request, [
            
            'nama' => 'required',
            'kelas_id' => 'required',
            
            'mapel_id'=>'required',
            'file_materi'=>'mimes:pdf,ppt,docx',

        ]);
        $data=new Materi;
        if($request->file('file_materi')){
            $file_materi=$request->file('file_materi');
            $filename=$file_materi->getClientOriginalName();//.'.'.$file_materi->getClientOriginalExtension();
            $request->file_materi->move('materi/', $filename);
            $ttt=$data->file_materi=$filename;
        }
        
        $data->nama=$request->nama;
        $data->kelas_id=$request->kelas_id;
        $data->mapel_id=$request->mapel_id;
        $data->link=$request->link;
        $data->save();

        

        if (auth()->user()->role == 'admin') {
            return redirect('/admin/materi')->with('sukses', 'Data Berhasil Diinput');
        } elseif (auth()->user()->role == 'guru') {
            return redirect('/guru/materi')->with('sukses', 'Data Berhasil Diinput');
        }
    }
   

  

    public function hapus($id)
    {
        $materi = Materi::findOrFail($id);
        $file='/materi/'.$materi->file_materi;
        $path=str_replace('\\','/',public_path()) ;
        // dd($materi->link);

        if($materi->file_materi!=null){
            if(file_exists($path.$file)){
                unlink($path.$file);
                $materi->delete();
                
                return redirect('/'.auth()->user()->role.'/materi')->with('sukses', 'Data Berhasil Dihapus');
            }
            else{
                //  $materi->delete();
                
                return redirect('/'.auth()->user()->role.'/materi')->with('gagal', 'Gagal Menghapus file');
            }
        }else{
            $materi->delete();
                
                return redirect('/'.auth()->user()->role.'/materi')->with('sukses', 'Data Berhasil Dihapus');
        }
        
        
      
    }

    public function getDownload($file_materi)
    {
       
        
        return  response()->download('materi/'.$file_materi);
        
    }
}
