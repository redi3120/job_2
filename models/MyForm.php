<?php
namespace app\models;

use Yii;
use yii\base\Model;

class MyForm extends Model
{
    public $title;
    public $text;
	public $data;
	public $tags;
	public $file;
	public $img;
	
	public function rules(){
		return [
			['img','string'],
			['tags','string'],
			[['title','text','data'], 'required','message' => 'Поле обязательно для заполнения'],
			[['file'],'file','extensions'=>'jpg, png'],
		];
	}

}
