@extends('layouts.masteradmin')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="panel col-md-12">
            <div class="panel-heading">
                <div class="panel-title">Pilih Siswa</div>
               
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Nama Siswa</th>
                                
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($datasiswa as $data)
                            <tr>
                               
                                <td>{{ $data->nama }}</td>
                                
                                <td>
									<a href="/guru/tugas/hasilsiswa/{{ $data->siswa_id }}/{{$tugas->id}}" class="btn btn-primary btn-sm">Open</a>
									<a href="/guru/tugas/{{ $data->id }}/hapus" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda Yakin Inggin Dihapus ?')">
										<i class="fa fa-trash-o"></i> Hapus</a>
								</td>
                                
                            </tr>
                            
                            @endforeach
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        {{-- <div class="panel col-md-12">
            <div class="panel-heading">
                <div class="panel-title">Hasil Soal Pilihan Ganda </div>
               
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Siswa</th> 
                                <th>Kelas
                                    
                                </th>
                                <th>Soal</th>
                                <th>Jawaban</th>
                                <th>Status</th>
                                <th>Score</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($tugas->soaljawaban as $tugas)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td >{{$tugas->siswa->nama}}</td>
                                <td>{{ $tugas->siswa->kelas->nama }}</td>
                                <td>{{ $tugas->soal->soal }}</td>
                                
                                <td>{{ $tugas->jawaban }}</td>
                                    
                                @if ($tugas->status=='benar')
                                <td> <span class="label label-success">{{ $tugas->status }}</span></td>
                                @else
                                <td><span class="label label-danger">{{ $tugas->status }}</span></td>
                                @endif
                                <td>{{ $tugas->score }}</td>
                            </tr>
                            
                            @endforeach
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="panel col-md-12">
            <div class="panel-heading">
                <div class="panel-title">Hasil Essay </div>
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Siswa</th> 
                                <th>Tugas</th>
                                <th>Jawaban</th>
                              
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($jwbessay as $jwb)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td >{{$jwb->siswa->nama}}</td>
                                <td>{{ $jwb->tugas->judul }}</td>
                                <td>{{ $jwb->jawaban }}</td>
                               
                            </tr>
                            
                            @endforeach
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div> --}}
    </div>
	
</div>

@endsection