<?php
require 'db.php';
$id = $_GET['id'];
$sql = 'SELECT * FROM analyzer WHERE id=:id';
$statement = $connection->prepare($sql);
$statement->execute([':id' => $id ]);
$person = $statement->fetch(PDO::FETCH_OBJ);
if (isset ($_POST['name'])  && isset($_POST['status']) ) {
  $name = $_POST['name'];
  $status = $_POST['status'];
  $sql = 'UPDATE analyzer SET name=:name, status=:status WHERE id=:id';
  $statement = $connection->prepare($sql); 
  if ($statement->execute([':name' => $name, ':status' => $status, ':id' => $id])) {
   header("location: form_builder.php");
  }



}


 ?>
<?php require 'header.php'; ?>
<div class="container">
  <div class="card mt-5">
    <div class="card-header">
      <h2>Update person</h2>
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
          <input value="<?= $person->name; ?>" type="text" name="name" id="name" class="form-control">
        </div>
        <div class="form-group">
          <label for="email">Status</label>
          <input type="text" value="<?= $person->status; ?>" name="email" id="email" class="form-control">
        </div>
        <div class="form-group">
          <button type="submit" onClick="document.location.href='some/page'" class="btn btn-info" >Update person </button>
        </div>
      </form>
    </div>
  </div>
</div>
<?php require 'footer.php'; ?>
