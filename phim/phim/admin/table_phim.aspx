<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="table_phim.aspx.cs" Inherits="phim.admin.table_phim" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
   
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel2" runat="server" CssClass="content-panel panel2">
                      <h4><i class="fa fa-angle-right"></i>Table Movie</h4>

                <asp:Button ID="Button4" runat="server" Text="+ add movie" CssClass="btn btn-round btn-success" OnCommand="Button4_Command"/> 
                <div class="form-inline active-cyan-3 active-cyan-4" style="margin-left: 10px; display: inline-block">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-sm ml-3 w-75 search" placeholder="Search" aria-label="Search"></asp:TextBox>
                    <i class="fa fa-search" aria-hidden="true" style="font-size: 130%; margin: 5px"></i>
                    <asp:Button ID="btsearch" runat="server" Text="Button"  CssClass="fa fa-search btsearch" OnClick="btsearch_Click" />
                </div>
                <hr>    
                    <asp:GridView runat="server" ID="gr1" CssClass="table table-bordered"  AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "add_phim.aspx?id=" + Eval("id_phim").ToString() %>' CssClass="btn btn-success">sửa</asp:HyperLink>
                        <asp:Button ID="Button3" runat="server" Text="xóa" OnCommand="Button3_Command" OnClientClick="return checkValid()" CssClass="btn btn-secondary" CommandArgument='<%# Eval("id_phim").ToString() %>'/>                        
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label runat="server">Ảnh</asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image runat="server"  ImageUrl='<%# "image/" +  getimage(int.Parse(Eval("id_phim").ToString())) %>'></asp:Image>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="IMDb" DataField="imdb" />
                <asp:BoundField HeaderText="ID" DataField="id_phim" />
                <asp:BoundField HeaderText="tenphim" DataField="ten_phim"  />
                <asp:BoundField HeaderText="trailer" DataField="trailer"  />
                <asp:BoundField HeaderText="mô tả" DataField="mota" />
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label runat="server">Diễn Viên</asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbdienvien" runat="server" Text='<%# get_dienvien(int.Parse(Eval("id_phim").ToString())) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label runat="server">Đạo Diễn</asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbdaodien" runat="server" Text='<%# get_daodien(int.Parse(Eval("id_phim").ToString())) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label runat="server">Thể Loại</asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbtheloai" runat="server" Text='<%# get_theloai(int.Parse(Eval("id_phim").ToString())) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                


            </Columns>
        </asp:GridView>
                </asp:Panel>
    

</asp:Content>
