<?php

namespace app\controllers;


use Yii;

use yii\filters\AccessControl;
use yii\web\Controller;



//use yii\filters\AccessControl;
//use yii\web\Controller;
//use yii\filters\VerbFilter;




use yii\base\Model;
use yii\web\UploadedFile;

use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\Articles;
use yii\helpers\Html;
use app\models\MyForm;


class SiteController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex()
    {
		if(isset($_GET['id'])) {
			$id = $_GET['id'];
			
			$post = Articles::find()->asArray()->where(['id' => Yii::$app->getRequest()->getQueryParam('id')])->one();
			
			
			return $this->render('page', ['articles'=>$post]);
			
		} else {
			$articles = Articles::find()->all();
			return $this->render('articles', ['articles'=>$articles]);
		}
    }

	public function actionForm()
    {
		$form = new MyForm();
		$add_post = new Articles();
		
		if($form->load(Yii::$app->request->post()) && $form->validate()){
			$form->file = UploadedFile::getInstance($form,'file');
			
			$path = $form->file->baseName.".".$form->file->extension;
			
			if($path !== '.') {
				$form->file->saveAs('../photo/'.$path);
			} else {$path = 'default.jpg';}
	
			$add_post->title = Html::encode($form->title);
			$add_post->text = Html::encode($form->text);
			$add_post->tags = Html::encode($form->tags);
			$add_post->img = $path;
			$add_post->data = $form->data;
			
			$add_post->save();
		}
        return $this->render('form', ['form'=>$form]);
    }
}
