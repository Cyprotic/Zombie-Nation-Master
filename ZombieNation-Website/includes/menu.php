<section class="sidebar">
	<ul class="sidebar-menu">
        <li class="header" style="color: White;">
            <i><b>Menu</b></i>
        </li>
		<li class="<?=($_GET['page'] == 'content' ? 'active':'')?>">
            <a href="index.php?page=content"><i class="fa fa-home"></i> <span>Home</span></a>
        </li>
		<li class="<?=($_GET['page'] == 'about' ? 'active':'')?>">
            <a href="index.php?page=about"><i class="fa fa-comment-o"></i> <span>About Me</span></a>
        </li>
		<li class="<?=($_GET['page'] == 'leaderboard' ? 'active':'')?>">
            <a href="index.php?page=leaderboard"><i class="fa fa-list"></i> <span>Leaderboard</span></a>
        </li>
		<li class="<?=($_GET['page'] == 'download' ? 'active':'')?>">
            <a href="index.php?page=download"><i class="fa fa-file"></i> <span>Download</span></a>
        </li>
	</ul>
</section>