<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
  $(document)._____(function() {
     $("#itemID")._____(function() {
        $("#displayitem")._____();
     });
     $("#displayitem")._____(function() {
        $("#items")._____("action", "index.php?content=displayitem")._____();
     });
     $("#deleteitem")._____(function() {
        const userConfirmed = confirm("Are you sure you want to remove this item?");
        if (userConfirmed) {
           $("#items")._____("action", "index.php?content=removeitem")._____();
        } else {
           alert("Action canceled.");
        }
     });
     $("#updateitem")._____(function() {
        $("#items")._____("action", "index.php?content=updateitem")._____();
     });
     const firstValue = $("#itemID option:first").val();
     $("#itemID").val(firstValue).focus();
  });
</script>
<h2>Select Item</h2>
<form id="items" method="post">
   <select ondblclick="listbox_dblclick()" id="itemID" size="20">
       <?php
   //    include('item.php');
       $items = Item::getItems();
       foreach ($items as $item) {
           $itemID = $item->itemID;
           $itemName = $item->itemName;
           $listPrice = $item->listPrice;
           $option = $itemID . " - " . $itemName . " - " . $listPrice;
           echo "<option value=\"$itemID\">$option</option>\n";
       }
       ?>
   </select>
   <br>
  <input type="submit" id="displayitem" name="displayitem" value="View Item">
  <input type="submit" id="deleteitem" name="deleteitem" value="Delete Item">
  <input type="submit" id="updateitem" name="updateitem" value="Update Item">
</form>

