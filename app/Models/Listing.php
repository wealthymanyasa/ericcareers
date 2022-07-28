<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Listing extends Model
{
    use HasFactory;
/////fillable properties

   protected $fillable = ['title','company','location','website','email','logo','tags','description'];

    //filter clistings
    public function scopeFilter($query, array $filters){
        //check if the $filters contains a tag
                //  dd($filters['tag']);
                 if($filters['tag'] ?? false){
                    //look in the db where tags column is equal to the tag in the requet tag
                    $query->where('tags', 'like','%'. request('tag').'%');
                 }
                 if($filters['search'] ?? false){
                    //search in the db where title column is equal to the tag in the requet search
                    $query->where('title', 'like','%'. request('search').'%')
                    //search in the db where description column is equal to the tag in the requet search
                    ->orWhere('description', 'like','%'. request('search').'%')
                    //search in the db where tags column is equal to the tag in the requet search
                    ->orWhere('tags', 'like','%'. request('search').'%')
                        //search in the db where company column is equal to the tag in the requet search
                    ->orWhere('company', 'like','%'. request('search').'%')
                        //search in the db where location column is equal to the tag in the requet search
                    ->orWhere('location', 'like','%'. request('search').'%');

                 }
    }
}
