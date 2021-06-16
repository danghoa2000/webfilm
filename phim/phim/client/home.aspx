<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="phim.client.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style>
	 .btadd{
		 background-color:#f0f8ff00;
		 border: 0px;
	 }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="slider movie-items">
	<div class="container">
		<div class="row">
			<div class="social-link">
				<p>Follow us: </p>
				<a href="#"><i class="ion-social-facebook"></i></a>
				<a href="#"><i class="ion-social-twitter"></i></a>
				<a href="#"><i class="ion-social-googleplus"></i></a>
				<a href="#"><i class="ion-social-youtube"></i></a>
			</div>
	    	<div  class="slick-multiItemSlider">
	    		
				<asp:ListView ID="itemSlider" runat="server">
					<ItemTemplate>
						<div class="movie-item">
	    					<div class="mv-img">
	    						<a href="#"><asp:Image ID="Image1" runat="server"  ImageUrl='<%# "../admin/image/" +  getimage(int.Parse(Eval("id_phim").ToString()),1) %>' width="285" height="437" /></a>
	    					</div>
	    				<div class="title-in">
	    					<h6><a href='<%# "each_movie.aspx?value=" + Eval("id_phim") %>'><%# Eval("ten_phim") %></a></h6>
	    					<p><i class="ion-android-star"></i><span><%# Eval("imdb") %></span> /10</p>
	    			</div>
	    		</div>
					</ItemTemplate>
				</asp:ListView>
	    	</div>
	    </div>
	</div>
</div>

<div class="movie-items">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-8">
				<div class="title-hd">
					<h2>newly uploaded</h2>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="viewall" NavigateUrl="~/client/list_phim.aspx?value=new">View all <i class="ion-ios-arrow-right"></i></asp:HyperLink>
				</div>
				<div class="tabs">
					<ul class="tab-links">
						<li class="active"><a href="#tab1">#Popular</a></li>
						<li><a href="#tab2"> #Coming soon</a></li>
						<li><a href="#tab3">  #Top rated  </a></li>
						<li><a href="#tab4"> #Most reviewed</a></li>                        
					</ul>
				    <div class="tab-content">
				        <div id="tab1" class="tab active">
				            <div class="row">
				            	<div class="slick-multiItem">
				            		<asp:ListView runat="server" ID="newmovie">
										<ItemTemplate>				            		
											<div class="slide-it">
				            				<div class="movie-item">
					            				<div class="mv-img">
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# "../admin/image/" +  getimage(int.Parse(Eval("id_phim").ToString()),1) %>' width="185" height="284"/>
					            				</div>
												<div class="hvr-inner" style="margin-top: 90px ; margin-left:38px; background-color: #d3b200; width: 90px">
													<asp:Button ID="add" runat="server" Text="add" CssClass="btadd"  OnCommand="add_Command" CommandArgument='<%# Eval("id_phim") %>'/>
	            									<i class="ion-android-arrow-dropright"></i>
	            								</div>
					            				<div class="hvr-inner" style="margin-top: 130px; margin-left:38px; width: 90px">
					            					<a  href='<%# "each_movie.aspx?value=" + Eval("id_phim") %>'> more <i class="ion-android-arrow-dropright"></i> </a>
					            				</div>
					            				<div class="title-in">
                                                    
					            					<h6><asp:LinkButton ID="LinkButton1" runat="server"><%# Eval("ten_phim") %></asp:LinkButton></h6>
					            					<p><i class="ion-android-star"></i><span><%# Eval("imdb") %></span> /10</p>
					            				</div>
					            				</div>
				            				</div>
										</ItemTemplate>
									</asp:ListView>
									
				            	</div>
				            </div>
				        </div>
				        
				    </div>
				</div>
				<div class="title-hd">
					<h2>High IMDb score</h2>
					<a href="list_phim.aspx?value=imdb" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
				</div>
				<div class="tabs">
					<ul class="tab-links-2">
						<li class="active"><a href="#tab21">#Popular</a></li>
						<li ><a href="#tab22"> #Coming soon</a></li>
						<li><a href="#tab23">  #Top rated  </a></li>
						<li><a href="#tab24"> #Most reviewed</a></li>                        
					</ul>
				    <div class="tab-content">
				        <div id="tab22" class="tab active">
				            <div class="row">
				            	<div class="slick-multiItem">
									<asp:ListView runat="server" ID="highimdb">
										<ItemTemplate>				            		
											<div class="slide-it">
				            				<div class="movie-item">
					            				<div class="mv-img">
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# "../admin/image/" +  getimage(int.Parse(Eval("id_phim").ToString()),1) %>' width="185" height="284"/>
					            				</div>
												<div class="hvr-inner" style="margin-top: 90px ; margin-left:38px; background-color: #d3b200; width:90px">
													<asp:Button ID="add" runat="server" Text="add" CssClass="btadd"  OnCommand="add_Command" CommandArgument='<%# Eval("id_phim") %>'/>
	            									<i class="ion-android-arrow-dropright"></i>
	            								</div>
					            				<div class="hvr-inner" style="margin-top: 130px; margin-left:38px; width:90px">
					            					<a  href='<%# "each_movie.aspx?value=" + Eval("id_phim") %>'> more <i class="ion-android-arrow-dropright"></i> </a>
					            				</div>
					            				<div class="title-in">
                                                    
					            					<h6><asp:LinkButton ID="LinkButton1" runat="server"><%# Eval("ten_phim") %></asp:LinkButton></h6>
					            					<p><i class="ion-android-star"></i><span><%# Eval("imdb") %></span> /10</p>
					            				</div>
					            				</div>
				            				</div>
										</ItemTemplate>
									</asp:ListView>
				            	</div>
				            </div>
				        </div>
				        
				    </div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="sidebar">
					<div class="ads">
						<img src="images/uploads/ads1.png" alt="" width="336" height="296">
					</div>
					<div class="celebrities">
						<h4 class="sb-title">Spotlight Celebrities</h4>
						<asp:ListView runat="server" ID="Celebrities">
							<ItemTemplate>
								<div class="celeb-item">
                                    <asp:Image ID="Image3" runat="server" width="70" height="70"  ImageUrl='<%# "../admin/image/" +  getimage(int.Parse(Eval("id_dienvien").ToString()),0) %>'/>
									<div class="celeb-author">
										<h6><a href="#"><%# Eval("ten") %></a></h6>
										<span>Actor</span>
									</div>
								</div>
							</ItemTemplate>
						</asp:ListView>
						<a href="dienvien.aspx" class="btn">See all celebrities<i class="ion-ios-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


</asp:Content>
