<h1>People</h1>
<ul>
	<?php foreach ($people as $person): ?>
		<li><?php echo $html->link( $person['Person']['name'], array( 'controller' => 'people', 'action' => 'view', $person['Person']['id'] )); ?></li>
	<?php endforeach; ?>
</ul>