<?php
require 'db.php';
$message = '';
if (isset ($_POST['name'])  && isset($_POST['email']) ) {
  $name = $_POST['name'];
  $status = $_POST['status'];
  $sql = 'INSERT INTO analyzer(name, status) VALUES(:name, :status)';
  $statement = $connection->prepare($sql);
  if ($statement->execute([':name' => $name, ':email' => $status])) {
    $message = 'data inserted successfully';
  }



}


 ?>
<?php require 'header.php'; ?>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Create a person</h2>
    </div>
    <div class="card-body">
      <?php if(!empty($message)): ?>
        <div class="alert alert-success">
          <?= $message; ?>
        </div>
      <?php endif; ?>
      <form method="post">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" name="name" id="name" class="form-control">
        </div>
        <div class="form-group">
          <label for="email">Description</label>
          <input type="text" name="email" id="email" class="form-control">
        </div>
        <div class="form-group">
          <button type="submit"  href="index.php" class="btn btn-info"  >Create a person</button>




        </div>
      </form>
    </div>
  </div>
</div>
<?php require 'footer.php'; ?>
