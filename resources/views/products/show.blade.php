@extends('layouts.app')

@section('content')
    <h1>{{ $product->name }}</h1>
    <p>Kuantitas: {{ $product->quantity }}</p>
    <p>Deskripsi: {{ $product->description }}</p>
    <a href="{{ route('products.index') }}">Kembali ke Daftar Produk</a>
@endsection