<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>
<? if($name): ?>
<p>Все верно</p>
<? endif; ?>
<? 
   $f = ActiveForm::begin(['options'=>['enctype'=>'multipart/form-data']]);
   echo $f->field($form, 'title',[]); ?>
<? 
echo $f->field($form, 'data', ['inputOptions' => ['value' => date('Y-m-d H:i:s'), 'class'=>'form-control']]); 
?>

<? echo $f->field($form, 'text')->textArea(['rows' => 6]); ?>
<? echo $f->field($form, 'tags'); ?>
<? echo $f->field($form, 'file')->fileInput(); ?>
<? echo Html::submitButton("Отправить"); ?>
<? ActiveForm::end(); ?>