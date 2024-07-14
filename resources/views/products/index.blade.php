@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Manajemen Gudang</h1>
        <a href="{{ route('products.create') }}" class="btn btn-primary mb-3">Tambah Produk Baru</a>

        <div class="form-group d-flex align-items-center mb-4">
            <input type="text" id="searchInput" class="form-control me-2" placeholder="Masukkan keyword untuk mencari produk">
            <button id="searchButton" class="btn btn-primary">Cari</button>
        </div>

        <table class="table table-striped mt-3" id="productTable">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Stok</th>
                    <th>Deskripsi</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @forelse($products as $product)
                    <tr>
                        <td>{{ $product->name }}</td>
                        <td>{{ $product->quantity }}</td>
                        <td>{{ $product->description }}</td>
                        <td>
                            <a href="{{ route('products.show', $product->id) }}" class="btn btn-info">Lihat</a>
                            <a href="{{ route('products.edit', $product->id) }}" class="btn btn-warning">Edit</a>
                            <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">Hapus</button>
                            </form>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="4">Tidak ada produk yang ditemukan.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>

    <script>
        function searchTable() {
            const query = document.getElementById('searchInput').value.toLowerCase();
            const rows = document.querySelectorAll('#productTable tbody tr');

            rows.forEach(row => {
                const name = row.querySelector('td:nth-child(1)').textContent.toLowerCase();
                const description = row.querySelector('td:nth-child(3)').textContent.toLowerCase();

                if (name.includes(query) || description.includes(query)) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
        }

        document.getElementById('searchInput').addEventListener('keyup', searchTable);
        document.getElementById('searchButton').addEventListener('click', searchTable);
    </script>
@endsection
