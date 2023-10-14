<?php
namespace App\Http\Controllers\Dashboard;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;
use Intervention\Image\Facades\Image;
class UserController extends Controller
{
    public function __construct()
    {
        //create read update delete
        $this->middleware(['permission:users_read'])->only('index');
        $this->middleware(['permission:users_create'])->only('create');
        $this->middleware(['permission:users_update'])->only('edit');
        $this->middleware(['permission:users_delete'])->only('destroy');

    }//end of constructor
    public function index(Request $request)
    {
            $users = User::whereRoleIs('admin')->where(function ($q) use ($request) {
            return $q->when($request->search, function ($query) use ($request) {
            return $query->where('first_name', 'like', '%' . $request->search . '%')
            ->orWhere('last_name', 'like', '%' . $request->search . '%');
            });
            })->latest()->paginate(5);
        return view('dashboard.users.index', compact('users'));
    }//end of index
    public
    function create()
    {
        return view('dashboard.users.create');

    }//end of create
    public
    function store(Request $request)
    {
        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|unique:users',
            'image' => 'image',
            'password' => 'required|confirmed',
            'permissions' => 'required|min:1'
        ]);
        $request_data = $request->except(['password', 'password_confirmation', 'permissions', 'image']);
        $request_data['password'] = bcrypt($request->password);
        if ($request->image) {
            $img = $request->image;
            $ext = $img->getClientOriginalExtension();
            $name = "POS_USER-". uniqid() . ".$ext";
            $img->move( public_path('uploads/user_images') , $name);
            $request_data['image'] = $name;
        }//end of if
        $user = User::create($request_data);
        $user->attachRole('admin');
        $user->syncPermissions($request->permissions);
        session()->flash('success', __('site.added_successfully'));
        return redirect()->route('dashboard.users.index');
    }//end of store
    public
    function edit(User $user)
    {
        return view('dashboard.users.edit', compact('user'));

    }//end of user
    public
    function update(Request $request, User $user)
    {
        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
             'email' => ['required', Rule::unique('users')->ignore($user->id),],
             'image' => 'image',
            'permissions' => 'required|min:1'
        ]);
        $request_data = $request->except(['permissions']);
        if ($request->image) {
            if ($user->image != 'default.png') {
               unlink( public_path('uploads/user_images/') . $user->image );
            }//end of inner if
            $img = $request->image;
            $ext = $img->getClientOriginalExtension();
            $name = "POS_USER-". uniqid() . ".$ext";
            $img->move( public_path('uploads/user_images/') , $name);
            $request_data['image'] = $name;
        }//end of external if
        $user->update($request_data);
        $user->syncPermissions($request->permissions);
        session()->flash('success', __('site.updated_successfully'));
        return redirect()->route('dashboard.users.index');
    }//end of update
    public
    function destroy(User $user)
    {
        if ($user->image != 'default.png') {
            unlink( public_path('uploads/user_images/') . $user->image );
        }//end of if
        $user->delete();
        session()->flash('success', __('site.deleted_successfully'));
        return redirect()->route('dashboard.users.index');
    }//end of destroy
}//end of controller
