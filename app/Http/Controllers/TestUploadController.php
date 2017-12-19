<?php

namespace App\Http\Controllers;

use App\Lesson;
use App\Question;
use App\QuestionsOption;
use App\TestsResult;
use Illuminate\Http\Request;

class TestUploadController extends Controller
{
    public function showUploadFile(Request $request){
        $file = $request->file('image');
        
           //Display File Name
           echo 'File Name: '.$file->getClientOriginalName();
           echo '<br>';
        
           //Display File Extension
           echo 'File Extension: '.$file->getClientOriginalExtension();
           echo '<br>';
        
           //Display File Real Path
           echo 'File Real Path: '.$file->getRealPath();
           echo '<br>';
        
           //Display File Size
           echo 'File Size: '.$file->getSize();
           echo '<br>';
        
           //Display File Mime Type
           echo 'File Mime Type: '.$file->getMimeType();
        
           //Move Uploaded File
           $destinationPath = 'uploads';
           $file->move($destinationPath,$file->getClientOriginalName());

        return view('testUploadResult');
     }
}
