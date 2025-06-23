@extends('layouts.app')

@section('content')
<h3>Selamat Datang, {{ Auth::user()->name }}</h3>
<p>Anda berhasil login.</p>
@endsection