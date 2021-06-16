<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="phim.admin.account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" CssClass="content-panel">

                <h4><i class="fa fa-angle-right"></i>Account</h4>

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
                        <asp:Button ID="Button3" runat="server" Text="xóa" OnCommand="Button3_Command" OnClientClick="return checkValid()" CssClass="btn btn-secondary" CommandArgument='<%# Eval("id_login").ToString() %>'/>                        
                    </ItemTemplate>
                </asp:TemplateField>
                

                <asp:BoundField HeaderText="Tài Khoản" DataField="taikhoan" />
                <asp:BoundField HeaderText="Tên" DataField="ten"  />

            </Columns>
        </asp:GridView>
       </asp:Panel>
</asp:Content>
