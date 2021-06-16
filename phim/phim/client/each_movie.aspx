<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="each_movie.aspx.cs" Inherits="phim.client.each_movie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style>
	 .name_movie{
		font-family: 'Dosis', sans-serif;
		font-size: 36px;
		color: #ffffff;
		font-weight: 700;
		text-transform: none;
		margin-bottom: 25px;
	 }
	 .mota{
		color: #bab9b9;
	 }
	 .image_cast{
		     width: 65px;
			height: 65px;
	 }
	 .btadd{
		 font-family: 'Dosis', sans-serif;
		font-size: 14px;
		color: #dd003f;
		font-weight: bold;
		text-transform: uppercase;
		margin-right: 35px;
		background-color: #f0f8ff00;
		border: 0px;
	 }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="hero mv-single-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			</div>
		</div>
	</div>
</div>
<asp:ListView runat="server" ID="phim">
	<ItemTemplate>
<div class="page-single movie-single movie_single">
	<div class="container">
		<div class="row ipad-width2">
			<div class="col-md-4 col-sm-12 col-xs-12">
				<div class="movie-img sticky-sb">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../admin/image/" +  getimage(int.Parse(Eval("id_phim").ToString()),1) %>'/>
					<div class="movie-btn">	
						<div class="btn-transform transform-vertical red">
							<div><asp:HyperLink ID="watch" runat="server" CssClass="item item-2 yellowbtn " NavigateUrl='<%# "watch.aspx?id=" + Eval("id_phim") +"&value=1" %>'> <i class="ion-play"></i>  </asp:HyperLink></div>
							<div><a class="item item-1 yellowbtn"><i class="ion-play"></i> Watch </a></div>
						</div>
						<div class="btn-transform transform-vertical">
							<div><asp:HyperLink ID="watch_trailer" NavigateUrl='<%# Eval("trailer") %>' runat="server" CssClass="item item-2 redbtn fancybox-media hvr-grow"> <i class="ion-play"></i> </asp:HyperLink></div>
							<div> 
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="item item-1 redbtn"><i class="ion-play"></i> Watch Trailer</asp:HyperLink>
							</div>	
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="movie-single-ct main-content">
					
                        <asp:Label ID="name_movie" CssClass="name_movie" runat="server" Text='<%# Eval("ten_phim") %>'></asp:Label>
						<span>2015</span>
					<div class="social-btn">
						<a class="parent-btn" style="margin-right: 0px"><i class="ion-heart"></i></a><asp:Button ID="add" runat="server" Text="Add to Favorite" CssClass="btadd"  OnCommand="add_Command" CommandArgument='<%# Eval("id_phim") %>'/>
						<div class="hover-bnt">
							<a href="#" class="parent-btn"><i class="ion-android-share-alt"></i>share</a>
							<div class="hvr-item">
								<a href="#" class="hvr-grow"><i class="ion-social-facebook"></i></a>
								<a href="#" class="hvr-grow"><i class="ion-social-twitter"></i></a>
								<a href="#" class="hvr-grow"><i class="ion-social-googleplus"></i></a>
								<a href="#" class="hvr-grow"><i class="ion-social-youtube"></i></a>
							</div>
						</div>		
					</div>
					<div class="movie-rate">
						<div class="rate">
							<i class="ion-android-star"></i>
							<p>
                                <asp:Label ID="imdb" runat="server" Text='<%# Eval("imdb") %>'></asp:Label> /10<br>
								<span class="rv">56 Reviews</span>
							</p>
						</div>
						<div class="rate-star">
							<p>Rate This Movie:  </p>
							<i class="ion-ios-star" id="imdb10"></i>
							<i class="ion-ios-star" id="imdb9"></i>
							<i class="ion-ios-star" id="imdb8"></i>
							<i class="ion-ios-star" id="imdb7"></i>
							<i class="ion-ios-star" id="imdb6"></i>
							<i class="ion-ios-star" id="imdb5"></i>
							<i class="ion-ios-star" id="imdb4"></i>
							<i class="ion-ios-star" id="imdb3"></i>
							<i class="ion-ios-star" id="imdb2"></i>
							<i class="ion-ios-star" id="imdb1"></i>
						</div>
					</div>
					<div class="movie-tabs">
						<div class="tabs">
							<ul class="tab-links tabs-mv">
								<li class="active"><a href="#overview">Overview</a></li>
							</ul>
						    <div class="tab-content">
						        <div id="overview" class="tab active">
						            <div class="row">
						            	<div class="col-md-8 col-sm-12 col-xs-12">
                                            <asp:Label ID="mota" CssClass="mota" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
											<div class="title-hd-sm">
												<h4>cast</h4>
												<a href="#" class="time">Full Cast & Crew  <i class="ion-ios-arrow-right"></i></a>
											</div>
	</ItemTemplate>
</asp:ListView>
											<!-- movie cast -->
											<asp:ListView runat="server" ID="cast">
												<ItemTemplate>
												<div class="mvcast-item">											
													<div class="cast-it">
														<div class="cast-left">
                                                            <asp:Image ID="Image2" CssClass="image_cast" runat="server" ImageUrl='<%# "../admin/image/" +  getimage(int.Parse(Eval("id_dienvien").ToString()),0) %>'/>
															<asp:HyperLink ID="HyperLink1" runat="server"><%# Eval("ten")%></asp:HyperLink>
														</div>
													</div>
												</div>
												</ItemTemplate>
											</asp:ListView>
						            	</div>
						            	<div class="col-md-4 col-xs-12 col-sm-12">
						            		<div class="sb-it">
						            			<h6>Director: </h6>
						            			<p><a href="#">Joss Whedon</a></p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Writer: </h6>
						            			<p><a href="#">Joss Whedon,</a> <a href="#">Stan Lee</a></p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Stars: </h6>
						            			<p><a href="#">Robert Downey Jr,</a> <a href="#">Chris Evans,</a> <a href="#">Mark Ruffalo,</a><a href="#"> Scarlett Johansson</a></p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Genres:</h6>
						            			<p><a href="#">Action, </a> <a href="#"> Sci-Fi,</a> <a href="#">Adventure</a></p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Release Date:</h6>
						            			<p>May 1, 2015 (U.S.A)</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Run Time:</h6>
						            			<p>141 min</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>MMPA Rating:</h6>
						            			<p>PG-13</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Plot Keywords:</h6>
						            			<p class="tags">
						            				<span class="time"><a href="#">superhero</a></span>
													<span class="time"><a href="#">marvel universe</a></span>
													<span class="time"><a href="#">comic</a></span>
													<span class="time"><a href="#">blockbuster</a></span>
													<span class="time"><a href="#">final battle</a></span>
						            			</p>
						            		</div>
						            		<div class="ads">
												<img src="images/uploads/ads1.png" alt="">
											</div>
						            	</div>
									</div>
						        </div>
						
						    </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
</asp:Content>
