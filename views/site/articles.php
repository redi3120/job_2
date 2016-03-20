<div class="site">
    <h1>Articles</h1>
	<div>
	<?   
	foreach($articles as $te => $data){ ?>
		<div style="border: 1px solid #ccc; border-radius:5px; padding: 10px; margin:0 0 10px 0;">
			<h3><a href="?r=site%2Findex&id=<? echo $data->id; ?>"><? echo $data->title; ?></a></h3>
			<p><img src="/photo/<? echo $data->img; ?>" style="float: left; width: 200px; margin-right: 15px;"><? echo $data->text; ?></p>
			<small><? echo $data->data; ?></small>
		</div>
	<? } ?>
	</div>
</div>	