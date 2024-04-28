<div class="container-fluid">
	<div class="card">
		<div class="card-body">
			<table class="table table-bordered">
		<thead>
			 <tr>

			<th>#</th>
			<th>Name</th>
			<th>Address</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Status</th>
			<th></th>
			</tr>
		</thead>
		<tbody>
			<?php 
			$i = 1;
			include './database/db_connect.php';
			$stmt = $conn->prepare("SELECT * FROM orders");
			$stmt->execute();
			$result = $stmt->get_result();
			while($row = $result->fetch_assoc()):
			?>
			<tr>
				<td><?php echo $i++ ?></td>
				<td><?php echo htmlspecialchars($row['name']) ?></td>
				<td><?php echo htmlspecialchars($row['address']) ?></td>
				<td><?php echo htmlspecialchars($row['email']) ?></td>
				<td><?php echo htmlspecialchars($row['mobile']) ?></td>
				<?php if($row['status'] == 1): ?>
					<td class="text-center"><span class="badge badge-success">Confirmed</span></td>
				<?php else: ?>
					<td class="text-center"><span class="badge badge-secondary">For Verification</span></td>
				<?php endif; ?>
				<td>
					<button class="btn btn-sm btn-primary view_order" data-id="<?php echo htmlspecialchars($row['id']) ?>">View Order</button>
				</td>
			</tr>
			<?php endwhile; ?>
		</tbody>
	</table>
		</div>
	</div>
	
</div>
<script>
	$('.view_order').click(function(){
		uni_modal('Order','./view_order.php?id='+$(this).attr('data-id'))
	})
</script>