<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    // Define the table name
    protected $table = 'products';

    // Define the primary key
    protected $primaryKey = 'id';

    // Define the fillable fields
    protected $fillable = [
        'name',
        'description',
        'quantity',
    ];

    // Define the guarded fields (fields that cannot be mass-assigned)
    protected $guarded = ['id', 'created_at', 'updated_at'];

    // Define relationships
    public function stockIns()
    {
        return $this->hasMany(StockIn::class);
    }

    public function stockOuts()
    {
        return $this->hasMany(StockOut::class);
    }
}
