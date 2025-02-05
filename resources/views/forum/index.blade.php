@extends('layouts.masteradmin')

@section('content')
<!-- search and bottom tambah -->
<div class="container-fluid">
	<div class="row searchtambah panel">
		<div class="col-6 search">
			<form class="navbar-form navbar-left" action="/admin/guru" method="GET">
				<div class="input-group">
					<input type="text" name="cari" value="" class="form-control" placeholder="Cari Nama...">
					<span class="input-group-btn"><button type="submit" class="btn btn-primary">Go</button></span>
				</div>
			</form>
		</div>
		<div class="col-6 tambah">
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
				Add New Post
			</button>
		</div>
	</div>
    @foreach ($pengumuman as $data)
        
    
    <div class="row">
        <div class="panel">
            <div class="panel-body">
            <h4 style="color:red;"> Pengumuman : {{$data->pesan}} </h4>
            </div>
        </div>
    </div>
    @endforeach
    
    <div class="row">
        <div class="col-md-6">
			<!-- Tambah data guru-->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
					
						<div class="modal-header">
							<h3 class="modal-title" id="exampleModalLabel">Tambah Konten</h3>
						</div>
						
						<div class="modal-body">
							@if(auth()->user()->role=='siswa')
								<form action="/siswa/forum/create" method="POST" enctype="multipart/form-data">
									{{ csrf_field() }}
									
									<div class="form-group {{ $errors->has('no_hp')?' has-error':'' }}">
										<label for="konten">Konten</label>
										<textarea class="form-control" id="konten" rows="3" name="konten" placeholder="Konten.."></textarea>
                                    @if($errors->has('konten'))
                                        <span class="help-block">{{ $errors->first('konten') }}</span>
                                    @endif
									</div>
                                    <div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>
								</form>
                            @elseif(auth()->user()->role=='guru')
                            <form action="/guru/forum/create" method="POST" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                
                                <div class="form-group {{ $errors->has('konten')?' has-error':'' }}">
                                    <label for="konten">Konten</label>
                                    <textarea class="form-control" id="konten" rows="3" name="konten" placeholder="Konten.."></textarea>
                                @if($errors->has('konten'))
                                    <span class="help-block">{{ $errors->first('konten') }}</span>
                                @endif
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
							@endif
						</div>
					
					</div>
				</div>
			</div>
			<!-- end Tambah data -->
			
		</div>
        <!-- TIMELINE -->
        
            <div class="panel panel-scrolling">
                <div class="panel-heading">
                    <h3 class="panel-title">Forum Diskusi</h3>
                    
                </div>
                
                <div class="" style="position: relative; overflow: hidden; width: auto; height: 430px;"><div class="panel-body" style="overflow: hidden; width: auto; height: 430px;">
                    <ul class="list-unstyled activity-list">
                        @foreach ($forum as $frm)
                        <li>
                            @if($frm->user->role=='siswa')
                            <img src="{{$frm->user->siswa->getAvatar()}}" alt="Avatar" class="img-circle pull-left avatar">
                            @elseif($frm->user->role=='guru')
                            <img src="{{$frm->user->guru->getAvatar()}}" alt="Avatar" class="img-circle pull-left avatar">
                            @endif
                            <p>
                                @if ($frm->user->role=='siswa')
                                <b style="color:green;">{{$frm->user->siswa->nama}}</b>
                                @elseif($frm->user->role=='guru')
                                <b style="color:blue;">{{$frm->user->guru->nama}}</b>
                                
                                @endif
                                
                                 <br>
                                {{$frm->konten}}
                                <span class="timestamp">{{$frm->created_at->diffForHumans()}}</span></p>
                        </li>
                        @endforeach
                    <!-- <button type="button" class="btn btn-primary btn-bottom center-block">Load More</button> -->
                </div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 9px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 292.563px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
            </div>
        
        
        <!-- END TIMELINE -->
    </div>
</div>

@endsection

<style>
	.table1 {
		display: block;
		overflow-x: auto;
		white-space: nowrap;
	}
</style>