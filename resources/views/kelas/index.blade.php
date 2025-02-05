@extends('layouts.masteradmin')

@section('content')


<div class="container-fluid">
	@if(auth()->user()->role=='admin')
	<div class="row searchtambah panel">
		<div class="col-6 search">
			<form class="navbar-form navbar-left" action="/admin/kelas" method="GET">
				<div class="input-group">
					<input type="text" name="cari" value="" class="form-control" placeholder="Cari Kelas...">
					<span class="input-group-btn">
						<button type="submit" class="btn btn-primary">Go</button>
					</span>
				</div>
			</form>
		</div>
		<div class="col-6 tambah">
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
				Tambah Data
			</button>
		</div>
		
	</div>
	
	@endif
</div>


<div class="container-fluid">
	<div class="panel">
		<div class="col-md-6">
			<div class="panel-heading">
				<h3 class="panel-title">Kelas</h3>
			</div>
		</div>
		<div class="col-md-6">
			
			@if (auth()->user()->role=='admin')
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
								<input name="nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Kelas">
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
			@elseif(auth()->user()->role=='guru')
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title" id="exampleModalLabel">Tambah Data Kelas</h3>
						
					</div>
					<div class="modal-body">
						
						<form action="/guru/kelas/create" method="POST">
							{{ csrf_field() }}

							
							<div class="form-group {{ $errors->has('nama')?' has-error':'' }}">
								<label for="exampleInputEmail1">Kelas</label>
								<input value="{{ old('nama') }}" name="nama" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Kelas">
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
			@endif
			
		</div>
		
		<div class="col-md-12">
			
		</div>
		<div class="panel-body">
			
			<table class="table table-hover css-serial">
				<thead>
					<tr>
						<th>NO</th>	
						<th>Kelas</th>
						<th>Jumlah Siswa</th>
						<th>Jumlah Materi</th>
						@if(auth()->user()->role=='guru')
						<th>Aksi</th>

						@endif
					</tr>
				</thead>
				<tbody>
					@php
						$i=$data_kelas->perPage()*($data_kelas->currentPage()-1);
						$i++
					@endphp
				@foreach($data_kelas as $kelas)
				<tr>
					{{-- @if(auth()->user()->role=='siswa')
						@if(auth()->user()->siswa->kelas->nama==$kelas->nama)
							<td>{{ $loop->iteration }}</td>
							<td class="text-primary" style="font-weight: bold;">{{$kelas->nama}}</td>
							<td><span class="badge">( {{ $kelas->siswa->count() }} Siswa )</span></td>
							<td><span class="badge">( {{ $kelas->materi->count() }} Materi )</span></td>
							<td>
								<a href="/siswa/kelas/{{ $kelas->id }}" class="btn btn-primary btn-sm">Open</a>
								
							</td>
						
						@endif --}}
					{{-- @elseif(auth()->user()->role=='guru') --}}
							<td>{{ $i++ }}</td>
							<td class="text-primary" style="font-weight: bold;">{{$kelas->nama}}</td>
							<td><span class="badge">( {{ $kelas->siswa->count() }} Siswa )</span></td>
							<td><span class="badge">( {{ $kelas->materi->count() }} Materi )</span></td>
							@if (auth()->user()->role=='guru')
							<td>
								<a href="/guru/kelas/{{ $kelas->id }}" class="btn btn-primary btn-sm">Open</a>
							</td>
							@elseif(auth()->user()->role=='admin')
							<td>
								<a href="/admin/kelas/{{ $kelas->id }}" class="btn btn-primary btn-sm">Open</a>
								<a href="/admin/kelas/{{ $kelas->id }}/hapus" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda Yakin Inggin Dihapus ?')">
									<i class="fa fa-trash-o"></i> Hapus
								</a>
							</td>
							@endif
							
					{{-- @elseif(auth()->user()->role=='admin')
						<td>{{ $loop->iteration }}</td>
						<td class="text-primary" style="font-weight: bold;">{{$kelas->nama}}</td>
						<td><span class="badge">( {{ $kelas->siswa->count() }} Siswa )</span></td>
						<td><span class="badge">( {{ $kelas->materi->count() }} Materi )</span></td>
						<td>
							<a href="/admin/kelas/{{ $kelas->id }}" class="btn btn-primary btn-sm">Open</a>
							<a href="/admin/kelas/{{ $kelas->id }}/hapus" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda Yakin Inggin Dihapus ?')">
								<i class="fa fa-trash-o"></i> Hapus
							</a>
						</td>
					@endif --}}
				</tr>
				@endforeach
				</tbody>
			</table>
			{{ $data_kelas->links() }}
			
		</div>

		
	</div>
</div>



<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						Data
					</div>
					<div class="panel-body">
						<p>Jumlah Total Kelas : {{ $data_kelas->total() }}</p> 
						<p>Jumlah Kelas : {{ $data_kelas->perPage() }}</p> 
						<p>Halaman : {{ $data_kelas->currentPage() }}</p> 
					</div>
				</div>
			</div>
        </div>
	</div>
</div>

@endsection