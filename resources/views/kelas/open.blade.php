@extends('layouts.masteradmin')

@section('content')

<div class="col-12">
	<div class="panel">
		
		<div class="col-md-6">
			<div class="panel-heading">
			<h3 class="panel-title">Kelas <span>{{$data_kelas->nama}}</span></h3>
			</div>
		</div>
		<div class="col-md-6">
			
			
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title" id="exampleModalLabel">Tambah Data Kelas</h3>
						
					</div>
					<div class="modal-body">
						
						<form action="/admin/kelas/create" method="POST">
							{{ csrf_field() }}

							
							<div class="form-group">
								<label for="exampleInputEmail1">Kelas</label>
								<input name="kelas" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Kelas">
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
		
		
		<div class="panel-body">
			<table class="table table-hover css-serial">
				
				<thead>
					<tr>
						<th>No</th>
							
						<th>Nama</th>	
						<th>NISN</th>
						<th>Jenis Kelamin</th>
						<th>Tanggal Lahir</th>
						@if(auth()->user()->role=='admin')
						<th>Aksi</th>
						@elseif(auth()->user()->role=='guru')
						<th>Aksi</th>
						@endif
					</tr>
				</thead>
				<tbody>
					
						@foreach($data_kelas->siswa as $key=>$data_siswa)
						<tr>
							<td>{{ ++$key }}</td>
							
							<td class="text-primary" style="font-weight: bold;">{{ $data_siswa->nama }}</td>
							<td>{{ $data_siswa->nisn }}</td>
							<td>{{ $data_siswa->jenis_kelamin }}</td>
							<td>{{ $data_siswa->tanggal_lahir }}</td>
							@if(auth()->user()->role=='guru')
							<td>
								
								<a href="/guru/kelas/{{ $data_siswa->id }}/nilaisiswa" class="btn btn-primary btn-sm">Lihat Nilai</a>
							
							</td>
							@elseif(auth()->user()->role=='admin')
							<td>
								
								<a href="/admin/kelas/{{ $data_siswa->id }}/nilaisiswa" class="btn btn-primary btn-sm">Lihat Nilai</a>
							
							</td>
							@endif
						</tr>
						@endforeach
					
				</tbody>
			</table>
			
		</div>

		
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		
				
		<div class="col-md-7">
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						Tugas
                    </div>
					<div class="panel-body">
						<table class="table table1 table-hover css-serial">
							
							<thead>
								<tr>
									<th>Nama Mapel</th>	
									<th>Pembuat</th>
									<th>Mapel</th>
									<th>Waktu</th>
									<th>Jenis Ujian</th>
									@if(auth()->user()->role=='siswa')
									<th>Aksi</th>
									@endif
									
									
								</tr>
							</thead>
							<tbody>
								
								@foreach($data_kelas->tugas as $tugas)
								<tr>
									<td>{{ $tugas->judul }}</td>
									<td>{{ $tugas->pembuat }}</td>
									<td>{{ $tugas->mapel->nama }}</td>
									<td>{{ $tugas->waktu }}</td>
									
									@if ($tugas->jenis_tugas=='Ujian')
										<td class="text-center">
											<span  class="label" style="background-color: blue;">{{ $tugas->jenis_tugas }}</span>
										</td>
									@else
										<td class="text-center">
											<span  class="label label-success">{{ $tugas->jenis_tugas }}</span>
										</td>
									@endif
									
									@if(auth()->user()->role=='siswa')
									<td>
										@php 
										$sudah = \App\TugasSiswa::where('tugas_id', $tugas->id)->where('siswa_id', auth()->user()->siswa->id)->first();
										@endphp
										@if($sudah)
										<a href="#" class="btn btn-danger btn-sm">selesai</a>
										@else
										<a href="/siswa/tugas/{{ $tugas->id }}/takesoal" class="btn btn-primary btn-sm">Kerjakan</a>
										@endif
										
									</td>
									@endif
									
								</tr>
								@endforeach
								
							</tbody>
						</table>
						
					</div>
                </div>
                
            </div>
            
            
		</div>
		<div class="col-md-5">
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						Materi
                    </div>
					<div class="panel-body">
						<table class="table table1 table-hover css-serial">
							<thead>
								<tr>
									<th>Nama Materi</th>	
									<th>File Materi</th>
									<th>Aksi</th>
								</tr>
							</thead>
							<tbody>
								@foreach($data_kelas->materi as $data_materi)
								<tr>
									<td>{{ $data_materi->nama }}</td>
									<td>{{ $data_materi->file_materi }}</td>
									<td>
										<a href="/admin/materi/download/{{ $data_materi->file_materi }}" class="btn btn-primary btn-sm">Download</a>	
									</td>
								</tr>
								@endforeach
							</tbody>
						</table>
					</div>
                </div>
            </div>
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