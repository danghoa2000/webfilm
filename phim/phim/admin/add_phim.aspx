﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add_phim.aspx.cs" Inherits="phim.admin.add_phim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i>  </h4>


                <div class="form-group last">
                  <label class="control-label col-md-3">Image </label>
                  <div class="col-md-9">
                    <div class="fileupload fileupload-new" data-provides="fileupload">
                      <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                          <asp:Image ID="Image1" runat="server" />
                      </div>
                      <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                      <div>
                        <span class="btn btn-theme02 btn-file">
                           <i class="fa fa-paperclip"></i> Select image
                          <asp:FileUpload ID="image" runat="server" />
                        </span>
                        
                      </div>
                    </div>
                    
                  </div>
                </div>


               <div class="form-horizontal style-form" >
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" >Tên phim</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="tenphim" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" >Trailer</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="trailer" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                  </div>
                   <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" >Điểm IMDb</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="imdb" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="ccomment" class="control-label col-lg-2">mô tả</label>
                    <div class="col-lg-10">
                        <asp:TextBox ID="mota" runat="server" class="form-control" TextMode="multiline" required ></asp:TextBox>
                    </div>
                  </div>
                   <div class="form-group">
                    <label for="ccomment" class="control-label col-lg-2">Thể Loại</label>
                    <div class="col-lg-offset-2 col-lg-10">
                        <asp:ListBox ID="ListBox3" runat="server" SelectionMode="Multiple" CssClass="form-control" >
                        </asp:ListBox>
                        <span class="help-block">Giữ nút ctrl <i class="fa fa-keyboard-o"></i> để chọn nhiều mục</span>
                        </div>
                   </div>
                   <div class="form-group">
                    <label for="ccomment" class="control-label col-lg-2">Diễn viên</label>
                    <div class="col-lg-offset-2 col-lg-10">
                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" CssClass="form-control" >
                        </asp:ListBox>
                        </div>
                   </div>
                   <div class="form-group">
                    <label for="ccomment" class="control-label col-lg-2">Đạo Diễn</label>
                    <div class="col-lg-offset-2 col-lg-10">
                        <asp:ListBox ID="ListBox2" runat="server" SelectionMode="Multiple" CssClass="form-control" >
                        </asp:ListBox>
                        </div>
                   </div>
                   
                   

                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-theme" OnCommand="Button2_Command" Visible="false"/>
                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-theme" OnCommand="Button1_Command" Visible="false"/>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CssClass="btn btn-theme04">Cancel</asp:LinkButton>
                    </div>
                  </div>
               </div>
            </div>
          </div>
          <!-- col-lg-12-->
    </div>


    <script src="lib/jquery/jquery.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script type="text/javascript" src="lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
</asp:Content>
