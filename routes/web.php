<?php

use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\AdminAuthController;
use App\Http\Controllers\AdminDashboardController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ShopPageController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\HeaderController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;



require __DIR__ . '/auth.php';



Route::get('/admin/login',[AdminAuthController::class,'index'])->name('admin.login');
Route::post('/admin/login',[AdminAuthController::class,'store'])->name('admin.login');

Route::middleware('auth:admin')->prefix('admin')->name('admin.')->group(function(){

    Route::get('/dashboard',[AdminDashboardController::class,'index'])->name('dashboard');
    Route::get('/search','ProductDetailsController@search');

    Route::get('/productView',[ProductController::class,'index'])->name('productView');
    Route::get('/productAdd',[ProductController::class,'create'])->name('productAdd');
    Route::post('/productStore',[ProductController::class,'store'])->name('image.resize.pro');

    Route::get('/stockView',[ProductController::class,'stockView'])->name('stockView');
    Route::get('/stockAdd',[ProductController::class,'stockAdd'])->name('stockAdd');
    Route::post('/stockStore',[ProductController::class,'stockStore'])->name('stockStore');
    Route::get('/getSubCategoryById',[ProductController::class,'getSubCategoryById'])->name('getSubCategoryById');
       
    Route::get('/editProduct/{id}',function($id){
        $prod = DB::table('products')->select('id','product_name','Product_Description','Price','Quantity','sale','stock_availability')->where('id','=',$id)->get();
        return view('Admin.Product.product_edit',['prod'=>$prod]);
    })->name('edit.product');

    Route::post('/updateProduct/{id}',[ProductController::class,'updateProduct'])->name('update.prod');

    Route::get('/editStock/{id}',function($id){
        $stock = DB::table('stocks')->select('id','stock_available','product_name')->where('id','=',$id)->get();
        return view('Admin.Stock.stockEdit',['stock'=>$stock]);
    })->name('edit.stock');

    Route::post('/updateStock/{id}',[ProductController::class,'updateStock'])->name('update.stock');

    Route::get('/categoryView',[CategoryController::class,'index'])->name('CategoryView');
    Route::get('/CategoryAdd',[CategoryController::class,'create'])->name('CategoryAdd');
    Route::post('/Category',[CategoryController::class, 'show'])->name('image.resize');

    Route::get('/editCategory/{id}',function($id){
        $data = DB::table('categories')->select('id','Category_Name')->where('id','=',$id)->get();
        return view('Admin.Category.category_edit',['data'=>$data]);
    })->name('edit.cate');
    Route::post('/updateCate/{id}',[CategoryController::class,'update'])->name('update.cate');

    Route::get('/SubCategoryView',[SubCategoryController::class,'index'])->name('SubCategoryView');
    Route::get('/SubCategoryAdd',[SubCategoryController::class,'create'])->name('SubCategoryAdd');
    Route::post('/SubCategory',[SubCategoryController::class, 'show'])->name('image.resize.sub');

    Route::get('/editSubcategory/{sub_id}',function($id){
        $sub = DB::table('subcategories')->select('id','SubCategory_Name')->where('id','=',$id)->get();
        return view('Admin.SubCategory.subcategory_edit',['sub'=>$sub]);
    })->name('edit.sub');

    Route::post('/updateSubCate/{id}',[SubCategoryController::class,'updateSub'])->name('update.Subcate');
});

Route::get('/',[HomeController::class,'index'])->name('user.index');
Route::get('/search/',[HomeController::class,'search'])->name('search');

Route::get('forget-password', [ForgotPasswordController::class, 'ForgetPassword'])->name('ForgetPasswordGet');
Route::post('forget-password', [ForgotPasswordController::class, 'ForgetPasswordStore'])->name('ForgetPasswordPost');
Route::get('reset-password/{token}', [ForgotPasswordController::class, 'ResetPassword'])->name('ResetPasswordGet');
Route::post('reset-password', [ForgotPasswordController::class, 'ResetPasswordStore'])->name('ResetPasswordPost');

Route::get('/productShow/{product_id}',[ShopPageController::class,'show'])->name('productShow');
Route::get('/product',[ShopPageController::class,'store'])->name('product');

// Route::get('/shop/{id}',[ShopPageController::class,'shop'])->name('shop');
Route::get('/getPrice',[ShopPageController::class,'filter'])->name('get.price');
Route::get('/getPrice',[ShopPageController::class,'filters'])->name('get.price');



Route::middleware('auth')->group(function()
{ 
    Route::get('/shop/{id}',[ShopPageController::class,'shop'])->name('shop');
});
