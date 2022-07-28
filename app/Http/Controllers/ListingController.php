<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;  

class ListingController extends Controller
{
    //show all listings
    public function index(){
        // dd(Listing::latest()->filter(request(['tag', 'search']))->paginate(3));
        return view('listings.index', [
            'listings' => Listing::latest()->filter(request(['tag', 'search']))->paginate(4)
        ]);
    }

    //show single listing
    public function show(Listing $listing){
        return view('listings.show', [
            'listing' => $listing
    ]);
    }
      //show create listing form
      public function create(){
        return view('listings.create');
    }

    public function store(Request $request){
        //dd($request->all());

        //validate
        $formFields = $request->validate([
            'title' => 'required',
            'company' => ['required', Rule::unique('listings', 'company')],
            'location' => 'required',
            'website' => 'required',
            'email' => ['required','email'],
            'tags' => 'required',
            'logo' => 'required',
            'description' => 'required',

        ]);
        //upload file saving filepath in db / and create folder logos in public if it does not exist
        if($request->hasFile('logo')){
           dd( $request->hasFile('logo'));
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');
        }
          ///create job post
        Listing::create($formFields);
           //redirect to home page
        return redirect('/')->with('message', 'Job Advert created successfully!!!');
    }
}
