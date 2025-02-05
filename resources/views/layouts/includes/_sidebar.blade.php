<div id="sidebar-nav" class="sidebar">
    <div class="sidebar-scroll">
        <nav>
        
            <ul class="nav">
                @if(auth()->user()->role=='admin')
                
                    <li><a href="{{ url('admin/pengumuman') }}" class="{{ Request::is('admin/pengumuman')?'active':'' }}"><i class="lnr lnr-users"></i> <span>Pengumuman</span></a></li>
                    <li><a href="{{ url('admin/guru') }}" class="{{ Request::is('admin/guru')?'active':'' }}"><i class="lnr lnr-users"></i> <span>Data Guru</span></a></li>
                    <li><a href="{{ url('admin/siswa') }}" class="{{ Request::is('admin/siswa')?'active':'' }}"><i class="lnr lnr-users"></i> <span>Data Siswa</span></a></li>
                    <li><a href="{{ url('admin/kelas') }}" class="{{ Request::is('admin/kelas')?'active':'' }}"><i class="lnr lnr-database"></i> <span>Kelas</span></a></li>
                    <li><a href="{{ url('admin/mapel') }}" class="{{ Request::is('admin/mapel')?'active':'' }}"><i class="lnr lnr-database"></i> <span>Mata Pelajaran</span></a></li>
                    
                @elseif(auth()->user()->role=='guru')
                    <li><a href="{{ url('guru/dashboard/'.auth()->user()->guru->id) }}" class="{{ Request::is('guru/dashboard/'.auth()->user()->guru->id)?'active':'' }}"><i class="lnr lnr-star"></i> <span>Dashboard</span></a></li>
                    <li><a href="{{ url('guru/profile/'.auth()->user()->guru->id) }}" class="{{ Request::is('guru/profile/'.auth()->user()->guru->id)?'active':'' }}"><i class="lnr lnr-home"></i> <span>Profile</span></a></li>
                    <li><a href="{{ url('guru/kelas') }}" class="{{ Request::is('guru/kelas')?'active':'' }}"><i class="lnr lnr-database"></i> <span>Kelas</span></a></li>
                    <li><a href="{{ url('guru/mapel/'.auth()->user()->guru->mapel->id) }}" class="{{ Request::is('guru/mapel/'.auth()->user()->guru->mapel->id)?'active':'' }}"><i class="lnr lnr-database"></i> <span>Mata Pelajaran</span></a></li>
                    <li><a href="{{ url('guru/materi') }}" class="{{ Request::is('guru/materi')?'active':'' }}"><i class="lnr lnr-book"></i> <span>Materi Pembelajaran</span></a></li>
                    <li><a href="{{ url('guru/tugas') }}" class="{{ Request::is('guru/tugas')?'active':'' }}"><i class="lnr lnr-layers"></i> <span>Manajement Tugas/Quiz</span></a></li>
                    
                    <li><a href="{{ url('guru/forum') }}" class="{{ Request::is('guru/forum')?'active':'' }}"><i class="lnr lnr-layers"></i> <span>Forum</span></a></li>
                    
                @elseif(auth()->user()->role=='siswa')
                    <li><a href="/siswa/dashboard/{{ auth()->user()->siswa->id }}" class="{{ Request::is('siswa/dashboard/'.auth()->user()->siswa->id)?'active':'' }}"><i class="lnr lnr-star"></i> <span>Dashboard</span></a></li>
                    <li><a href="/siswa/profile/{{ auth()->user()->siswa->id }}" class="{{ Request::is('siswa/profile/'.auth()->user()->siswa->id)?'active':'' }}"><i class="lnr lnr-home"></i> <span>Profile</span></a></li>
                    <li><a href="{{ url('siswa/kelas/'.auth()->user()->siswa->kelas->id) }}" class="{{ Request::is('siswa/kelas/'.auth()->user()->siswa->kelas->id)?'active':'' }}"><i class="lnr lnr-database"></i> <span>Kelas</span></a></li>
                    <li><a href="{{ url('siswa/materi') }}" class="{{ Request::is('siswa/materi')?'active':'' }}"><i class="lnr lnr-book"></i> <span>Materi Pembelajaran</span></a></li>
                    <li><a href="{{ url('siswa/kelas/'.auth()->user()->siswa->id.'/nilaisiswa') }}" class="{{ Request::is('kelas/'.auth()->user()->siswa->id.'/nilaisiswa')?'active':'' }}"><i class="lnr lnr-layers"></i> <span>Nilai</span></a></li>
                    <li><a href="{{ url('siswa/forum') }}" class="{{ Request::is('siswa/forum')?'active':'' }}"><i class="lnr lnr-layers"></i> <span>Forum</span></a></li>
                @endif
                
                
            </ul>
        </nav>
    </div>
</div>