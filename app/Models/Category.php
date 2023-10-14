<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;

class Category extends Model
{
    // use \Dimsav\Translatable\Translatable;
    use Translatable;
    protected $guarded = [];
    public $translatedAttributes = ['name'];
    public function products()
    {
        return $this->hasMany(Product::class);

    }//end of products
}
