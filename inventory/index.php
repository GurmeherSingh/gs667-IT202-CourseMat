<?php
ob_start();
session_start();
include("config.php");
include("category.php");
include("item.php");
?>
<!DOCTYPE html>
<html>
<head>
    <title>Inventory Helper</title>
    <link rel="stylesheet" type="text/css" href="ih_styles.css">
    <link rel="icon" type="image/png" href="images/logo.png">
    <script src="realtime.js"></script>
</head>
<body>
    <header>
       <?php include("header.inc.php"); ?>
   </header>
   <section style="height: 375px;">
       <nav style="float: left; height: 100%;  min-width: 175px; width: auto;">
           <?php include("nav.inc.php"); ?>
       </nav>
       <main>
           <?php
           if (isset($_REQUEST['content'])) {
               include($_REQUEST['content'] . ".inc.php");
           } else {
               include("main.inc.php");
           }
           ?>
       </main>
       <aside>
           <?php include("aside.inc.php"); ?>
           <script>
               getRealTime();
               setInterval(getRealTime, 5000);
           </script>
       </aside>
   </section>
   <footer>
       <?php include("footer.inc.php"); ?>
   </footer>
</body>
</html>
<?php
ob_end_flush();
?>

