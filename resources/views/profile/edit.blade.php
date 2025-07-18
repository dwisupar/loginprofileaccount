@extends('layouts.app')

@section('content')
<h3>Edit Profil</h3>
<form method="POST" action="{{ route('profile.update') }}">
    @csrf
    <div class="mb-3">
        <label>Nama</label>
        <input type="text" name="name" value="{{ old('name', $user->name) }}" class="form-control">
    </div>
    <div class="mb-3">
        <label>Email</label>
        <input type="email" name="email" value="{{ old('email', $user->email) }}" class="form-control">
    </div>
    <div class="mb-3">
        <label>Password Baru (kosongkan jika tidak ingin mengubah)</label>
        <input type="password" name="password" class="form-control">
    </div>
    <div class="mb-3">
        <label>Konfirmasi Password</label>
        <input type="password" name="password_confirmation" class="form-control">
    </div>
    <button class="btn btn-primary">Update</button>
</form>

<form method="POST" action="{{ route('profile.destroy') }}" onsubmit="return confirm('Yakin ingin menghapus akun secara permanen?')">
    @csrf
    @method('DELETE')
    <button class="btn btn-danger mt-3">Hapus Akun Permanen</button>
</form>
@endsection