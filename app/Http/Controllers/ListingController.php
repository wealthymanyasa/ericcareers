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
//create listing
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
          // dd( $request->hasFile('logo'));
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');
        }
       // dd( auth()->id());
        //set user_id equal to the curently logged in user
        $formFields['user_id'] = auth()->id();
    //  dd($formFields['user_id']);
          ///create job post
         // dd($formFields);
        Listing::create($formFields);
           //redirect to home page with success message
        return redirect('/')->with('message', 'Job Advert created successfully!!!');
    }

    //show the edit form
    public function edit(Listing $listing){
        //dd($listing);
        return view('listings.edit', ['listing' => $listing]);
    }

    public function update(Request $request, Listing $listing){
        //make sure the login user is able to update listing
        if($listing->user_id != auth()->id()){
            abort(403,'Unauthorized Action');
        }

        //validate
        $formFields = $request->validate([
            'title' => 'required',
            'company' => 'required' ,
            'location' => 'required',
            'website' => 'required',
            'email' => ['required','email'],
            'tags' => 'required',
           
            'description' => 'required'

        ]);
        //upload file saving filepath in db / and create folder logos in public if it does not exist
        if($request->hasFile('logo')){
          // dd( $request->hasFile('logo'));
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');
        }
          ///UPDATE job post
        $listing->update($formFields);
           //redirect BACK page with success message
        return back()->with('message', 'Job Advert updated successfully!!!');
    }


     //delete job advert
     public function delete(Listing $listing){
         //make sure the login user is able to delete listing
         if($listing->user_id != auth()->id()){
            abort(403,'Unauthorized Action');
        }

            $listing->delete();
            return back()->with('message', 'Job Advert deleted successfully!!!');
     }
   
     //manage listing
     public function manage(){
        //return view with listings of the authenticated user
        return view('listings.manage',['listings' => auth()->user()->listings()->get()]);
     }
}

