<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="watch.aspx.cs" Inherits="phim.watch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style>
	 .mv-single-hero {
		 background-image:none;
	 }
	 .hero:before {
		 background-color:#ffffff00;
	 }
	 .btphim{
		display: inline-block;
		background-color: aliceblue;
		border-radius: 5px;
		padding: 3px 15px;

	 }
	 .btadd{
		ont-family: 'Dosis', sans-serif;
		font-size: 14px;
		color: #dd003f;
		font-weight: bold;
		text-transform: uppercase;
		margin-right: 35px;
		background-color: #f0f8ff00;
		border: 0px;
	 }
        .form-panel{
            background-color: #dededf;
            padding: 10px;
            text-align: left;
        }

        .ten{
            color: #006cc2;
            font-family: cursive;
        }
        .btcomment{
                background-color: #3d9ce3;
                border: 0px;
                border-radius: 5px;
                height: 34px;
                width: 100px;
        }
        .divcomment{
            margin: 10px;
            border-top: 1px solid #9d9c9c59;
			display: flex;
        }
		.divcomment1{
			display: inline-block;
			margin: 3px 10px 0px 3px;
			width: 45px;
		}
        .comment{
            color: black;
            font-family: inherit;
        }
		.imgcomment{
			height: 55px;
			width: 45px;
		}
		.divcomment2{
			display: inline-block;
			width: 1055px;
		}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView runat="server" ID="movie">
		<ItemTemplate>
			<div class="hero mv-single-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				
			</div>
		</div>
	</div>
</div>
	<div class="page-single movie-single movie_single">
	<div class="container">
		<div class="row ipad-width2">
			
			<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="movie-single-ct main-content">
					<h1 class="bd-hd">Skyfall: Quantum of Spectre <span>2015</span></h1>
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
					
				</div>
			</div>
		</div>
		<div class="row ipad-width2">
			<iframe width="1170" height="658" src='<%# Eval("link") %>' frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
		</ItemTemplate>
    </asp:ListView>
		<div>
			<br /><h3 style="color: #f0f8ff9c; font-family: system-ui;">Tập Phim:</h3><br />
			<asp:ListView runat="server" ID="tapphim">
				<ItemTemplate>
					<asp:HyperLink ID="HyperLink1" runat="server" CssClass="btphim" NavigateUrl='<%# "~/client/watch.aspx?id=" + Eval("id_phim") + "&value=" + Eval("tapso") %>'>Tập <%# Eval("tapso") %></asp:HyperLink>
				</ItemTemplate>
			</asp:ListView>
		</div>
	</div>
</div>     

<div style="padding: 0px 178px;
    background-color: #020D18;">
	<div class="form-panel">
		<div>
			<input type="text" id="txtTen" style="width: 40%;border-radius: 5px;display: inline-block;text-align: left;" placeholder="name" />
			<input type="button" class="btcomment" value="Bình luận" id="btn"/>
			<input type="text" id="txtNd" style="border-radius: 5px;height: 65px;margin-top: 5px;"  />
		</div>
		<div id="show">
		</div>
	</div>
</div>
<div style="display: none" id="url">
	<asp:Label runat="server" ID="label" CssClass="label"></asp:Label>
</div>

		<script>
        $.ajax({
            type: 'GET',
            url: 'http://localhost:63639/api/phims/'+ $('#url').text(),
            dataType: 'json',
			success: function (data) {
                console.log(data);
                var $bloglist = $('#show');
                $.each(data.comment, function (index, x) {
                    $(
						'<div class="divcomment">' +
							'<div class="divcomment1">'+
								'<img class="imgcomment" src="../admin/image/anonymous.png" />' +
							'</div>' +
							'<div class="divcomment2">'+
								'<p class="ten">' + x.ten + '</p >' +
								'<p class="comment">' + x.nd + '</p>' +
							'</div>'+
                        '</div>'
                    ).prependTo($bloglist)
                })
            },
            error: function (error) {
                console.error(error)
            }
		})

        $(document).ready(function () {
			$("#btn").click(function () {
				
				var person = new Object();
				person.ten = $('#txtTen').val();
				person.nd = $('#txtNd').val();
				person.id_phim = $('#url').text();

				$.ajax({
					url: 'http://localhost:63639/api/comments',
					type: 'POST',
					dataType: 'json',
					data: person,
					success: function (data, textStatus, xhr) {
						var $list = $('#show');
						$(
							'<div class="divcomment">' +
							'<div class="divcomment1">' +
							'<img class="imgcomment" src="../admin/image/anonymous.png" />' +
							'</div>' +
							'<div class="divcomment2">' +
							'<p class="ten">' + data.ten + '</p >' +
							'<p class="comment">' + data.nd + '</p>' +
							'</div>' +
							'</div>'
						).prependTo($list)
					},
					error: function (xhr, textStatus, errorThrown) {
						console.log('Error in Operation');
					}
				})
            });
		})
        </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
	
</asp:Content>
