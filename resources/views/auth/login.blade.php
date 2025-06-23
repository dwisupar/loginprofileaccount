@extends('layouts.app')

@section('content')
<h3>Login</h3>
<form method="POST" action="{{ route('login') }}">
    @csrf
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
    <button class="btn btn-primary">Login</button>
</form>
@endsection