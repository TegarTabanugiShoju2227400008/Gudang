@extends('layouts.app')

@section('content')
    <h1>Tambah Produk</h1>
    <form action="{{ route('products.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="name">Nama:</label>
            <input type="text" name="name" id="name" class="form-control">
        </div>
        <div class="form-group">
            <label for="quantity">Kuantitas:</label>
            <input type="number" name="quantity" id="quantity" class="form-control">
        </div>
        <div class="form-group">
            <label for="description">Deskripsi:</label>
            <textarea name="description" id="description" class="form-control"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Tambah</button>
    </form>
@endsection