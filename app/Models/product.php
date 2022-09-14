<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class product extends Model
{
    use HasFactory;

    protected $table= "products" ;

    protected $fillable=['product_name','Category_id','SubCategory_id','stock_availability','gallery_photo','Product_Description','Price','sale','product_image'];

    

}
