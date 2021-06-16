<%@ Page Title="" Language="C#" MasterPageFile="~/client/client.Master" AutoEventWireup="true" CodeBehind="ctdienvien.aspx.cs" Inherits="phim.client.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-3.5.1.min.js""></script>
	<style>
		.img1{
			width:330px;
			height:495px;
		}
		.img2{
			width: 70px;
			height:90px;
		}

	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero hero3">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

			</div>
		</div>
	</div>
</div>
<!-- celebrity single section-->

<div class="page-single movie-single cebleb-single">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-4 col-sm-12 col-xs-12">
						<div class="mv-ceb" id="anh">
                            
						</div>
			</div>
			<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="movie-single-ct">
					<div id="ten">

					</div>
					<p class="ceb-single">Actor</p>
					<div class="social-link cebsingle-socail">
						<a href="#"><i class="ion-social-facebook"></i></a>
						<a href="#"><i class="ion-social-twitter"></i></a>
						<a href="#"><i class="ion-social-googleplus"></i></a>
						<a href="#"><i class="ion-social-linkedin"></i></a>
					</div>
					<div class="movie-tabs">
						<div class="tabs">
							<ul class="tab-links tabs-mv">
								<li class="active"><a href="#overviewceb">Overview</a></li>
								<li><a href="#biography"> biography</a></li>
								
								<li><a href="#filmography">filmography</a></li>                        
							</ul>
						    <div class="tab-content">
						        <div id="overviewceb" class="tab active">
						            <div class="row">
						            	<div class="col-md-8 col-sm-12 col-xs-12">
											<p>Jackman was born in Sydney, New South Wales, to Grace McNeil (Greenwood) and Christopher John Jackman, an
											accountant. He is the youngest of five children. His parents both English, moved to Australia shortly before his birth.
											He also has Greek (from a great-grandfather) and Scottish (from a grandmother) ancestry.</p>
											<p>Hugh Michael Jackman is an Australian actor, singer, multi-instrumentalist, dancer and producer. Jackman has won international recognition for his roles in major films, notably as superhero, period, and romance characters. </p>
											<p class="time"><a href="#">See full bio <i class="ion-ios-arrow-right"></i></a></p>
											<div class="title-hd-sm">
												<h4>filmography</h4>
											</div>
											<!-- movie cast -->
											<div class="mvcast-item" id="phim">
												

											</div>
						            	</div>
						            	<div class="col-md-4 col-xs-12 col-sm-12">
						            		<div class="sb-it">
						            			<h6>Fullname:  </h6>
						            			<p><a href="#">Hugh Jackman</a></p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Date of Birth: </h6>
						            			<p>June 24, 1982</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Country:  </h6>
						            			<p>Australian</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Height:</h6>
						            			<p>186 cm</p>
						            		</div>
						            		<div class="sb-it">
						            			<h6>Keywords:</h6>
						            			<p class="tags">
						            				<span class="time"><a href="#">jackman</a></span>
													<span class="time"><a href="#">wolverine</a></span>
													<span class="time"><a href="#">logan</a></span>
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
						        <div id="biography" class="tab">
						           <div class="row">
						            	<div class="rv-hd">
											<div>
												<h3>Biography of</h3>
						       	 				<h2>Hugh Jackman</h2>
											</div>							            						
						            	</div>
						            	<p>Hugh Michael Jackman is an Australian actor, singer, multi-instrumentalist, dancer and producer. Jackman has won international recognition for his roles in major films, notably as superhero, period, and romance characters. He is best known for his long-running role as Wolverine in the X-Men film series, as well as for his lead roles in the romantic-comedy fantasy Kate & Leopold (2001), the action-horror film Van Helsing (2004), the drama The Prestige and The Fountain (2006), the epic historical romantic drama Australia (2008), the film version of Les Misérables (2012), and the thriller Prisoners (2013). His work in Les Misérables earned him his first Academy Award nomination for Best Actor and his first Golden Globe Award for Best Actor - Motion Picture Musical or Comedy in 2013. In Broadway theatre, Jackman won a Tony Award for his role in The Boy from Oz. A four-time host of the Tony Awards themselves, he won an Emmy Award for one of these appearances. Jackman also hosted the 81st Academy Awards on 22 February 2009.</p>

										<p>Jackman was born in Sydney, New South Wales, to Grace McNeil (Greenwood) and Christopher John Jackman, an accountant. He is the youngest of five children. His parents, both English, moved to Australia shortly before his birth. He also has Greek (from a great-grandfather) and Scottish (from a grandmother) ancestry.</p>
										<p>Jackman has a communications degree with a journalism major from the University of Technology Sydney. After graduating, he pursued drama at the Western Australian Academy of Performing Arts, immediately after which he was offered a starring role in the ABC-TV prison drama Correlli (1995), opposite his future wife Deborra-Lee Furness. Several TV guest roles followed, as an actor and variety compere. An accomplished singer, Jackman has starred as Gaston in the Australian production of "Beauty and the Beast." He appeared as Joe Gillis in the Australian production of "Sunset Boulevard." In 1998, he was cast as Curly in the Royal National Theatre's production of Trevor Nunn's Oklahoma. Jackman has made two feature films, the second of which, Erskineville Kings (1999), garnered him an Australian Film Institute nomination for Best Actor in 1999. Recently, he won the part of Logan/Wolverine in the Bryan Singer- directed comic-book movie X-Men (2000). In his spare time, Jackman plays piano, golf, and guitar, and likes to windsurf.</p>
										<p>On turning down the chance to play Richard Gere's character in the Harvey Weinstein-produced film Chicago (2002): I thought I was too young for the role. You have some 34-year-old guy up against Catherine Zeta-Jones and Renée Zellweger and it becomes a different movie. At one point, Harvey was telling me they were thinking of Kevin Spacey, and Ivtold him, 'That's exactly right. You should hire him.' Then I was in New York when the movie opened and the queue was around the block. I sat down and thought that I had probably made the biggest mistake. But I still honestly think that it was the right thing to do. I still think I was too young for that part.
										</p>
						            </div>
						        </div>
						        
					       	 	<div id="filmography" class="tab">
						        	<div class="row">
						            	<div class="rv-hd">
						            		<div>
						            			<h3>Biography of</h3>
					       	 					<h2>Hugh Jackman</h2>
						            		</div>
										
						            	</div>
						            	<div class="topbar-filter">
											<p>Found <span>14 movies</span> in total</p>
											<label>Filter by:</label>
											<select>
												<option value="popularity">Popularity Descending</option>
												<option value="popularity">Popularity Ascending</option>
												<option value="rating">Rating Descending</option>
												<option value="rating">Rating Ascending</option>
												<option value="date">Release date Descending</option>
												<option value="date">Release date Ascending</option>
											</select>
										</div>
										<!-- movie cast -->
										<div class="mvcast-item" id="phims">											
											
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
	<div style="display: none" id="url">
		<asp:Label runat="server" ID="label" CssClass="label"></asp:Label>
	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
	<script>
        
		$.ajax({
			
			type: 'GET',
			url: 'http://localhost:63639/api/dienviens/' + $('#url').text(),
            dataType: 'json',
            success: function (data) {
                var $blog = $('#anh');
                var $ten = $('#ten');
				var $list = $('#phim');
				console.log($string);
				$('<img class="img1" src="../admin/image/' + data.img + '" >').appendTo($blog)
				$('<h1 class="bd-hd">' + data.ten + '</h1>').appendTo($ten)
				
                $.each(data.ctDienvien, function (index, x) {
                    $(
                        '<div class="cast-it">' +
                        '<div class="cast-left cebleb-film">' +
                        '<img class="img2" src="../admin/image/' + x.phim.anh_daidien + '" alt="">' +
                        '<div>' +
                        '<a href="each_movie.aspx?value='+ x.phim.id_phim +'">' + x.phim.ten_phim + ' </a>' +
                        '</div>' +
                        '</div>' +
                        '<p>...  2016</p>' +
                        '</div>'
                    ).appendTo($list)
                })
            },
            error: function (error) {
                console.error(error)
            }
		})
        
    </script>
</asp:Content>
