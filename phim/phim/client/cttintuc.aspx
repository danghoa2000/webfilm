<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="cttintuc.aspx.cs" Inherits="phim.client.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-3.5.1.min.js""></script>
	<style>
		.img{
			width:100%;
			height:500px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1> blog detail</h1>
					<ul class="breadcumb">
						<li class="active"><a href="home.aspx">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span> blog listing</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
    <div class="page-single">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="blog-detail-ct">
					<div id="blogsingle">
						
					</div>
					
					<!-- comment items -->
					<div class="comments">
						<h4>04 Comments</h4>
						<div class="cmt-item flex-it">
							<img src="images/uploads/author.png" alt="">
							<div class="author-infor">
								<div class="flex-it2">
									<h6><a href="#">Steve Perry</a></h6> <span class="time"> - 27 Mar 2017</span>
								</div>
								<p>Even though Journey's classic vocalist Steve Perry didn’t reunite with the band during their Rock Hall performance (to the dismay of hopeful fans), he did offer up a touching speech.</p>
								<p><a class="rep-btn" href="#">+ Reply</a></p>
							</div>
						</div>
						<div class="cmt-item flex-it reply">
							<img src="images/uploads/author2.png" alt="">
							<div class="author-infor">
								<div class="flex-it2">
									<h6><a href="#">Joss Whedon</a></h6> <span class="time"> - 27 Mar 2017</span>
								</div>
								<p>Prince died not long after the 2016 Rock Hall ceremony, so this year's edition featured Lenny Kravitz and a full gospel choir performing a swamp-funk take on When Doves Cry.</p>
							</div>
						</div>
						<div class="cmt-item flex-it reply">
							<img src="images/uploads/author3.png" alt="">
							<div class="author-infor">
								<div class="flex-it2">
									<h6><a href="#">Dave McNary</a></h6> <span class="time"> - 27 Mar 2017</span>
								</div>
								<p>Blue Sky Studios is one of the world’s leading digital animation movie studios and we are proud of their commitment to stay and grow in Connecticut.</p>
							</div>
						</div>
						<div class="cmt-item flex-it">
							<img src="images/uploads/author4.png" alt="">
							<div class="author-infor">
								<div class="flex-it2">
									<h6><a href="#">Margot Robbie</a></h6> <span class="time"> - 27 Mar 2017</span>
								</div>
								<p>Joan Baez was the sharpest of the Rock Hall inductees, singing about deportees and talking social activism as well as joking about her age and the likelihood that a good portion of the Barclays. </p>
								<p><a class="rep-btn" href="#">+ Reply</a></p>
							</div>
						</div>
					</div>
					
					<!-- comment form -->
				</div>
			</div>
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="sidebar">
					<div class="sb-search sb-it">
						<h4 class="sb-title">Search</h4>
						<input type="text" placeholder="Enter keywords">
					</div>
					<div class="sb-cate sb-it">
						<h4 class="sb-title">Categories</h4>
						<ul>
							<li><a href="#">Awards (50)</a></li>
							<li><a href="#">Box office (38)</a></li>
							<li><a href="#">Film reviews (72)</a></li>
							<li><a href="#">News (45)</a></li>
							<li><a href="#">Global (06)</a></li>
						</ul>
					</div>
					<div class="sb-recentpost sb-it">
						<h4 class="sb-title">most popular</h4>
						<div class="recent-item">
							<span>01</span><h6><a href="#">Korea Box Office: Beauty and the Beast Wins Fourth</a></h6>
						</div>
						<div class="recent-item">
							<span>02</span><h6><a href="#">Homeland Finale Includes Shocking Death </a></h6>
						</div>
						<div class="recent-item">
							<span>03</span><h6><a href="#">Fate of the Furious Reviews What the Critics Saying</a></h6>
						</div>
					</div>
					<div class="sb-tags sb-it">
						<h4 class="sb-title">tags</h4>
						<ul class="tag-items">
							<li><a href="#">Batman</a></li>
							<li><a href="#">film</a></li>
							<li><a href="#">homeland</a></li>
							<li><a href="#">Fast & Furious</a></li>
							<li><a href="#">Dead Walker</a></li>
							<li><a href="#">King</a></li>
							<li><a href="#">Beauty</a></li>
						</ul>
					</div>
					<div class="ads">
						<img src="images/uploads/ads1.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
	<div style="display: none" id="url">
		<asp:Label runat="server" ID="label" CssClass="label"></asp:Label>
	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
	<script>
		$.ajax({
			type:'GET',
            url: 'http://localhost:63639/api/tintuc_phim/' + $('#url').text(),
            dataType: 'json',
			success: function (data) {
				console.log(data);
                var $blog = $('#blogsingle');
                $(	'<h2 class="bd-hd">' + data.tieu_de + '</h2>'+
					'<img class="img" src="../admin/image/' + data.anh_daidien + '" alt="">' +
					'<p>' + data.noidung + '</p>'
				).appendTo($blog)
            },
            error: function (error) {
				console.error(error)
            }
        })
    </script>
</asp:Content>
