<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="table_tintuc.aspx.cs" Inherits="phim.admin.table_tintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel2" runat="server" CssClass="content-panel">

                <h4><i class="fa fa-angle-right"></i>Table Tin Tức</h4>

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
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "add_tintuc.aspx?id=" + Eval("id_tintuc_phim").ToString() %>' CssClass="btn btn-success">sửa</asp:HyperLink>
                        <asp:Button ID="Button3" runat="server" Text="xóa" OnCommand="Button3_Command" OnClientClick="return checkValid()" CssClass="btn btn-secondary" CommandArgument='<%# Eval("id_tintuc_phim").ToString() %>'/>                        
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label runat="server">Ảnh</asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image runat="server"  ImageUrl='<%# "image/" +  getimage(int.Parse(Eval("id_tintuc_phim").ToString())) %>'></asp:Image>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField HeaderText="ID" DataField="id_tintuc_phim" />
                <asp:BoundField HeaderText="tiêu đề" DataField="tieu_de"  />
                <asp:BoundField HeaderText="tóm tắt tin" DataField="tom_tat_tin"  />
                <asp:BoundField HeaderText="nội dung" DataField="noidung"  />

            </Columns>
        </asp:GridView>
       </asp:Panel>

 
</asp:Content>
