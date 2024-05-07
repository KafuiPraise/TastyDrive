<?php

namespace App\Http\Controllers;

use App\Models\Food;
use App\Models\Order;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rule;

class FoodController extends Controller
{
    
    public function index()
    {
        if (request()->has('asc')) {
            if (request()->asc == 'true') {
                $foods = Food::orderBy('price')->orderBy('name')->paginate(12);
                // orderBy('name') so that for those foods with same price, it will sort alphabetically by their name
            }
            if (request()->asc == 'false') {
                $foods = Food::orderBy('price', 'DESC')->orderBy('name')->paginate(12);
            }
        } else {
            $foods = Food::paginate(12);
        }
        return view('food.home',  ['foods' => $foods]);
    }
        public function filter($type)
    {
        $foods = Food::where('type', '=', $type);

        if (request()->has('asc')) {
            if (request()->asc == 'true') {
                $sorted = $foods->orderBy('price');
            }
            if (request()->asc == 'false') {
                $sorted = $foods->orderBy('price', 'DESC');
            }
        } else {
            $sorted = $foods;        
        }
        return view('food.home',  ['foods' => $foods->paginate(12)]);
    }

    public function sortByPrice($type)
    {
        if ($type) {
            $foods = Food::orderBy('price')->paginate(12);
        } else {
            $foods = Food::orderByDesc('price')->paginate(12);
        }

        return view('food.home',  ['foods' => $foods]);
    }

    public function adminIndex()
    {
        $foods = Food::orderBy('id','desc')->paginate(10);
        return view('food.viewfood',  ['foods' => $foods]);
    }

    public function show($id)
    {
        $food = Food::findOrFail($id);
        return view('food.show', ['food' => $food]);
    }

    public function getForUpdate($id)
    {
        $food = Food::findOrFail($id);
        return view('food.updatefood', ['food' => $food]);
    }

    public function destroy($id)
    {
        $food = Food::findOrFail($id);
        $food->delete();
        return redirect('/food/viewfood');
    }

    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required | unique:food',
            'description' => 'required',
            'price' => 'required',
            'type' => 'required',
            'photo' => 'required|image|mimes:jpeg,png,jpg,gif|max:5048',
        ]);
        if ($request->hasFile('photo')) {
            $image = $request->file('photo');
            $filename = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images'), $filename);
            $request->input('photo', $filename);
        }
        Food::create($request->all());
        return redirect('food/viewfood');
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => [
                'required',
                Rule::unique('request')->ignore($id),
            ],
            'description' => 'required',
            'price' => 'required',
            'type' => 'required',
            'photo' => 'required'
        ]);

        $food = Food::find($id);

        if ($request->hasFile('photo')) {
            $image = $request->file('photo');
            $path = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path($path = 'images'));
            $food->photo = $path;
        }

        $food->name = $request->name;
        $food->description = $request->description;
        $food->price = $request->price;
        $food->type = $request->type;
        $food->photo = $request->photo;

        $food->save();

        return redirect('/food/viewfood');
    }
}