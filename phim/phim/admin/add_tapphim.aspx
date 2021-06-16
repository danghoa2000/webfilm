﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add_tapphim.aspx.cs" Inherits="phim.admin.add_tapphim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <h4 class="mb"><i class="fa fa-angle-right"></i>  </h4>


                
               <div class="form-horizontal style-form" >
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label" >tập số</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="tapso" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>
                  </div>
                <div class="form-group">
                    <label for="ccomment" class="control-label col-lg-2"> phim </label>
                    <div class="col-lg-offset-2 col-lg-10">
                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Single" CssClass="form-control" >
                        </asp:ListBox>
                    </div>
                </div>

                  
                   
       
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <asp:Label runat="server" ID="lbError" CssClass="text-danger"></asp:Label>
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