@extends('layouts.app')

@section('content')
@push('scripts')
<script>
    $(document).ready(function() {
        $('#usersTable').DataTable({
            language: {
                url: '//cdn.datatables.net/plug-ins/1.13.6/i18n/id.json'
            },
            responsive: true
        });
    });
</script>
@endpush

<h3>Daftar Akun</h3>
<a href="{{ route('users.create') }}" class="btn btn-success mb-3">+ Tambah Akun</a>

<table class="table table-bordered" id="usersTable">
    <thead>
        <tr>
            <th>Nama</th>
            <th>Email</th>
            <th>Dibuat</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($users as $u)
        <tr>
            <td>{{ $u->name }}</td>
            <td>{{ $u->email }}</td>
            <td>{{ $u->created_at->format('d-m-Y') }}</td>
            <td>
                <a href="{{ route('users.edit', $u) }}" class="btn btn-sm btn-warning">Edit</a>

                <!-- Tombol untuk buka modal -->
                <button type="button" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#modalHapus{{ $u->id }}">
                    Hapus
                </button>

                <!-- Modal Konfirmasi Hapus -->
                <div class="modal fade" id="modalHapus{{ $u->id }}" tabindex="-1" aria-labelledby="modalLabel{{ $u->id }}" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header bg-danger text-white">
                                <h5 class="modal-title" id="modalLabel{{ $u->id }}">Konfirmasi Hapus</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Tutup"></button>
                            </div>
                            <div class="modal-body">
                                Apakah kamu yakin ingin menghapus user <strong>{{ $u->name }}</strong>?
                            </div>
                            <div class="modal-footer">
                                <form action="{{ route('users.destroy', $u) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                    <button type="submit" class="btn btn-danger">Hapus</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Modal -->
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

@endsection