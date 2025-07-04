@extends('layouts.app')

@section('content')
<h3>Daftar</h3>
<form method="POST" action="{{ route('register') }}">
    @csrf
    <div class="mb-3">
        <label>Nama</label>
        <input type="text" name="name" class="form-control" required>
        @error('name')<small class="text-danger">{{ $message }}</small>@enderror
    </div>
    <div class="mb-3">
        <label>Email</label>
        <input type="email" name="email" class="form-control" required>
        @error('email')<small class="text-danger">{{ $message }}</small>@enderror
    </div>
    <div class="mb-3">
        <label>Password</label>
        <input type="password" name="password" class="form-control" required>
        @error('password')<small class="text-danger">{{ $message }}</small>@enderror
    </div>
    <div class="mb-3">
        <label>Konfirmasi Password</label>
        <input type="password" name="password_confirmation" class="form-control" required>
    </div>
    <button class="btn btn-success">Daftar</button>
</form>
@endsection