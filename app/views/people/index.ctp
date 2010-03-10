<h1>People</h1>
<ul>
	<?php foreach ($people as $person): ?>
		<li><?php echo $person['Person']['name']; ?></li>
	<?php endforeach; ?>
</ul>