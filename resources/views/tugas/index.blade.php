@extends('layouts.masteradmin')

@section('content')

<div class="col-12">
	<div class="panel">
		
		<div class="col-md-6">
			<div class="panel-heading">
				<h3 class="panel-title">Manajement Tugas/Quiz</h3>
			</div>
		</div>
		@if(auth()->user()->role=='admin')
		<div class="col-md-6">
			
			<button type="button" class="btn btn-primary navbar-btn-right" style="margin-top: 20px;" data-toggle="modal" data-target="#exampleModal">
				Tambah Data
			</button>
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title" id="exampleModalLabel">Tambah Topik</h3>
						
					</div>
					<div class="modal-body">
						
						<form action="/admin/tugas/create" method="POST">
							{{ csrf_field() }}

							
							<div class="form-group {{ $errors->has('judul')?' has-error':'' }}">
								<label for="exampleInputEmail1">Nama Paket</label>
								<input value="{{ old('judul') }}" name="judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama Paket">
								
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1 {{ $errors->has('mapel_id')?' has-error':'' }}">Mapel</label>
								<select value="{{ old('mapel_id') }}" name="mapel_id" class="form-control" id="exampleFormControlSelect1">
									@foreach ($mapel as $mapel)
									<option value="{{ $mapel->id }}">{{ $mapel->nama }}</option>
										
									@endforeach
								</select>
							</div>
							
                            <div class="form-group">
								<label for="exampleInputEmail1 {{ $errors->has('mapel_id')?' has-error':'' }}">Kelas</label>
								@foreach ($kelas as $kelas)
									
								<th class="text-center" >
									<label class="fancy-checkbox">
										<input type="checkbox" name="kelas[]" value="{{ $kelas->id }}">
										<span>{{ $kelas->nama }}</span>
									</label>
								</th>
								@endforeach
								
							</div>
							<div class="form-group {{ $errors->has('deskripsi')?' has-error':'' }}">
								<label for="exampleInputEmail1">Deskripsi</label>
								<input value="{{ old('deskripsi') }}" name="deskripsi" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Deskripsi">
							</div>
							<div class="form-group {{ $errors->has('jenis_tugas')?' has-error':'' }}">
								<label for="exampleFormControlSelect1">Jenis Tugas</label>
								<select name="jenis_tugas" class="form-control" id="exampleFormControlSelect1">
									<option value="Latihan"{{ (old('jenis_tugas')=='Latihan')?' selected':'' }}>Latihan</option>
									<option value="Ujian"{{ (old('jenis_tugas')=='Ujian')?' selected':'' }}>Ujian</option>
								</select>
							</div>
							<div class="form-group {{ $errors->has('kkm')?' has-error':'' }}">
								<label for="exampleInputEmail1">KKM</label>
								<input value="{{ old('kkm') }}" name="kkm" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="kkm">
							</div>
							<div class="form-group {{ $errors->has('waktu')?' has-error':'' }}">
								<label for="exampleInputEmail1">Waktu</label>
								<input value="{{ old('waktu') }}" name="waktu" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="waktu">
							</div>
							
							
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
						
					</div>
					
				</div>
				</div>
			</div>
		</div>
		@elseif(auth()->user()->role=='guru')
		<div class="col-md-6">
			<button type="button" class="btn btn-primary navbar-btn-right" style="margin-top: 20px;" data-toggle="modal" data-target="#exampleModal">
				Tambah Data
			</button>
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title" id="exampleModalLabel">Tambah Topik</h3>
					</div>
					<div class="modal-body">
						<form action="/guru/tugas/create" method="POST">
							{{ csrf_field() }}
							<div class="form-group {{ $errors->has('judul')?' has-error':'' }}">
								<label for="exampleInputEmail1">Nama Paket</label>
								<input value="{{ old('judul') }}" name="judul" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama Paket">
								@if ($errors->any('judul'))
									<span>{{$errors->first('judul')}}</span>
								@endif
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1 {{ $errors->has('mapel_id')?' has-error':'' }}">Mapel</label>
								<select value="{{ old('mapel_id') }}" name="mapel_id" class="form-control" id="exampleFormControlSelect1">
									@foreach ($mapel as $mapel)
									<option value="{{ $mapel->id }}">{{ $mapel->nama }}</option>
										
									@endforeach
								</select>
							</div>
							{{-- <div class="form-group {{ $errors->has('guru')?' has-error':'' }}">
								<label for="exampleInputEmail1">Guru</label>
								<input value="{{ old('guru') }}" name="guru" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Dibuat Oleh">
							</div> --}}
							<div class="form-group">
								@foreach ($kelas as $kelas)
									<th class="text-center" >
										<label class="fancy-checkbox">
											<input type="checkbox" name="kelas[]" value="{{ $kelas->id }}">
											<span>{{ $kelas->nama }}</span>
										</label>
									</th>
									@endforeach
									@if ($errors->any('kelas'))
									<span>{{$errors->first('kelas')}}</span>
								@endif
							</div>
							
                            {{-- <div class="form-group {{ $errors->has('user_id')?' has-error':'' }}">
								<label for="exampleInputEmail1">Pembuat</label>
								<input value="{{ old('user_id') }}" name="user_id" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="pembuat">
							</div> --}}
							
							<div class="form-group {{ $errors->has('jenis_tugas')?' has-error':'' }}">
								<label for="exampleFormControlSelect1">Jenis Tugas</label>
								<select name="jenis_tugas" class="form-control" id="exampleFormControlSelect1">
									<option value="Latihan"{{ (old('jenis_tugas')=='Latihan')?' selected':'' }}>Latihan</option>
									<option value="Ujian"{{ (old('jenis_tugas')=='Ujian')?' selected':'' }}>Ujian</option>
								</select>
							</div>
							
							<div class="form-group {{ $errors->has('waktu')?' has-error':'' }}">
								<label for="exampleInputEmail1">Waktu</label>
								<input value="{{ old('waktu') }}" name="waktu" type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="waktu">
								@if ($errors->any('waktu'))
									<span>{{$errors->first('waktu')}}</span>
								@endif
							</div>
							
							
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
					
				</div>
				</div>
			</div>
		</div>
		@endif
		
		
		{{-- kelasindex --}}
		<div class="panel-body">
			<table class="table table1 table-bordered">
				
				<thead>
					<tr>
						
						<th>ID Tugas</th>	
                        <th>Nama Paket</th>
                        <th>Dibuat Oleh</th>
						<th style="font-weight: bold">Mapel</th>
						<th style="font-weight: bold">Kelas</th>
						
						<th>Jenis Tugas</th>
						
						<th>Waktu</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					@foreach($data_tugas as $tugas)
						<tr>
							<td>{{$tugas->id}}</td>
							<td >{{$tugas->judul}}</td>
							<td>{{ $tugas->pembuat }}</td>
							<td style="font-weight: bold"><i>{{ $tugas->mapel->nama }}</i></td>
							<td>
								@foreach ($tugas->kelas as $kelas)
									<div class="badge">{{ $kelas->nama }}</div>
								@endforeach
							</td>
							
								@if ($tugas->jenis_tugas=='Ujian')
									<td class="text-center">
										<span  class="label" style="background-color: blue;">{{ $tugas->jenis_tugas }}</span>
									</td>
								@else
									<td class="text-center">
										<span  class="label label-success">{{ $tugas->jenis_tugas }}</span>
									</td>
								@endif
							
							<td>{{ $tugas->waktu }} Menit</td>
							@if(auth()->user()->role=='admin')
								<td>
									
									<a href="/admin/tugas/{{ $tugas->id }}" class="btn btn-primary btn-sm">Open</a>
									<a href="/admin/tugas/{{ $tugas->id }}/hapus" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda Yakin Inggin Dihapus ?')">
										<i class="fa fa-trash-o"></i> Hapus</a>
								</td>
							@elseif(auth()->user()->role=='guru')
								<td>
									<a href="/guru/tugas/{{ $tugas->id }}" class="btn btn-primary btn-sm">Open</a>
									<a href="/guru/tugas/{{ $tugas->id }}/hasil" class="btn btn-primary btn-sm">Hasil</a>
									<a href="/guru/tugas/{{ $tugas->id }}/hapus" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda Yakin Inggin Dihapus ?')">
										<i class="fa fa-trash-o"></i> Hapus</a>
								</td>
							@elseif(auth()->user()->role=='siswa')
								<td><a href="/admin/tugas/{{ $tugas->id }}/takesoal" class="btn btn-primary btn-sm">Take {{ $tugas->jenis_tugas }}</a></td>
							@endif
						</tr>
						
                    @endforeach
				</tbody>
			</table>
			
		</div>

		
	</div>
</div>
<style>
	.table1 {
		display: block;
		overflow-x: auto;
		white-space: nowrap;
	}
</style>

@endsection