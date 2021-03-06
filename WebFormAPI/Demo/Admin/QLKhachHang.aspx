﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="QLKhachHang.aspx.cs" Inherits="Demo.Admin.QLKhachHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row wrapper border-bottom white-bg page-heading" style="width:123%;">
        <div class="col-lg-10">
            <h2>Danh sách Khách Hàng</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="TrangChu.aspx">Trang chủ</a>
                </li>
                <strong style="margin-left:5px; margin-right:5px;"> / </strong>
                <li class="active">
                    <span href="#">Danh sách khách hàng</span>
                </li>
            </ol>
        </div>
        <div class="col-lg-2">
        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content" runat="server">
                        <div class="ibox-title" style="width:100%; height: 60px;">
                        </div>
                        <asp:GridView runat="server"
                            AutoGenerateColumns="false"
                            ID="dgvKhachHang" 
                            class="table table-bordered" width="100%" cellspacing="0">
                            <Columns>
                                <asp:BoundField DataField="id_kh" HeaderText="Mã khách hàng" />
                                <asp:BoundField DataField="username_kh" HeaderText="Tên tài khoản" />
                                <asp:BoundField DataField="ten_kh" HeaderText="Tên khách hàng" />
                                <asp:BoundField DataField="sdt_kh" HeaderText="Số điện thoại" />
                                <asp:BoundField DataField="email_kh" HeaderText="Email khách hàng" />
                                <asp:BoundField DataField="dia_chi_kh" HeaderText="Địa chỉ khách hàng" />
                                <asp:TemplateField>
                                    <HeaderTemplate>Chức năng</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ID="btnXoa" 
                                            CssClass="text-danger"
                                            OnClientClick="return check();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_kh") %>'
                                        ><i class="fa fa-trash"></i></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
    <script>
        function check() {
            if (confirm("Bạn thực sự muốn xóa? Thao tác này sẽ không khôi phục lại được!") == true){
                return true;
            }
            return false;
        }
    </script>
</asp:Content>
