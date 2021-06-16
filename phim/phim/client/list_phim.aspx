<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="list_phim.aspx.cs" Inherits="phim.client.list_phim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style>
	 .btadd{
		 background-color:#f0f8ff00;
		 border: 0px;
	 }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="hero hero3" style="height:423px">
	<div class="container">
		<div class="row">
			<div class="col-md-12" style="padding-top:190px">
				 <h1> movie listing - list</h1>
				<ul class="breadcumb">
					<li class="active"><a href="home.aspx">Home</a></li>
					<li> <span class="ion-ios-arrow-right"></span> movie listing</li>
				</ul> 
			</div>
		</div>
	</div>
</div>



	<div class="page-single">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="topbar-filter">
					<p>Found <span>1,608 movies</span> in total</p>
					<label>Sort by:</label>
					<select>
						<option value="popularity">Popularity Descending</option>
						<option value="popularity">Popularity Ascending</option>
						<option value="rating">Rating Descending</option>
						<option value="rating">Rating Ascending</option>
						<option value="date">Release date Descending</option>
						<option value="date">Release date Ascending</option>
					</select>
					<a href="#" class="list"><i class="ion-ios-list-outline "></i></a>
					<a  href="#" class="grid"><i class="ion-grid active"></i></a>
				</div>
				<div class="flex-wrap-movielist">
					<asp:ListView runat="server" ID="movie">
					<ItemTemplate>	
						<div class="movie-item-style-2 movie-item-style-1">
								<asp:Image ID="Image2" runat="server" ImageUrl='<%# "../admin/image/" +  getimage(int.Parse(Eval("id_phim").ToString()),1) %>' width="170" height="261"/>
							
							<div class="hvr-inner" style="margin-top: 90px ; margin-left:38px; background-color: #d3b200 ; width: 90px">
                                <asp:Button ID="add" runat="server" Text="add" CssClass="btadd"  OnCommand="add_Command" CommandArgument='<%# Eval("id_phim") %>'/>
	            				<i class="ion-android-arrow-dropright"></i>
	            			</div>
							<div class="hvr-inner" style="margin-top: 130px; margin-left:38px; width: 90px">
	            				<a  href='<%# "each_movie.aspx?value=" + Eval("id_phim") %>'> more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
							<div class="mv-item-infor">
								<h6><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# "each_movie.aspx?value=" + Eval("id_phim") %>'><%# Eval("ten_phim") %></asp:LinkButton></h6>
								<p class="rate"><i class="ion-android-star"></i><span><%# Eval("imdb") %></span> /10</p>
							</div>
						</div>					
							</ItemTemplate>
				</asp:ListView>
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
						<a href="#" class="btn">See all celebrities<i class="ion-ios-arrow-right"></i></a>
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
