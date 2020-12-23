﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/SiteAdmin.Master" AutoEventWireup="true" CodeBehind="CTBlog.aspx.cs" Inherits="Demo.Admin.CTBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row" runat="server" >
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title" style="margin-left:10px; margin-top:2%; margin-bottom:2%">
                    <h3>Cập nhật chi tiết Blog</h3>
                </div>
                <div class="ibox-content" runat="server" style ="margin-left:2%">
                    <asp:Panel runat="server" ID="pnError" Visible="false">
                        <div class="alert alert-danger">
                            <asp:Label runat="server" ID="lbError"></asp:Label><asp:HyperLink runat="server" ID="hpError" class="alert-link"></asp:HyperLink>.
                        </div>
                    </asp:Panel>
                    
                    <div class="form-horizontal">
                        <div class="form-group"><label class="col-sm-2 control-label">ID Blog <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtIdBlog" type="text" CssClass="form-control" Enabled="false"/> 
                                <span class="help-block m-b-none" style="font-size:65%"></span>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Tiêu đề <span class="text-danger">*</span></label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtTitle" type="text" class="form-control" /> 
                                <span class="help-block m-b-none" style="font-size:65%">Ví dụ: Hot Boy.</span>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Imager<span class="text-danger">*</span></label>
                            <label class="col-lg-3 control-label"></label>
                            <div class="col-lg-9">
                                <asp:FileUpload runat="server" ID="fuImg" CssClass="form-control" /> 
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group"><label class="col-sm-2 control-label">Nội dung</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtNoiDung" TextMode="MultiLine" type="text" class="form-control" /> 
                                <span class="help-block m-b-none" style="font-size:65%">Ví dụ: http://casio.com</span>
                            </div>
                        </div>


                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">

                                <asp:Button runat="server" ID="btnQuayLai" 
                                    CssClass="btn btn-white" Text="Quay lại"
                                    OnClick="btnQuayLai_Click"
                                />
                                <asp:Button runat="server" ID="btnSua" 
                                    CssClass="btn btn-primary" Text="Lưu lại"
                                    OnClientClick="return validEdit();"
                                    OnClick="btnSua_Click"
                                />
                                <asp:Button runat="server" ID="btnThemMoi" 
                                    CssClass="btn btn-primary" Text="Thêm mới"
                                    OnClientClick="return validAdd();"
                                    OnClick="btnThemMoi_Click"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
        function validEdit() {
            if (confirm("Bạn muốn sửa thông tin?")) {
                return true;
            }
            return false;
        }
        function validAdd() {
            if (confirm("Bạn muốn thêm?")) {
                return true;
            }
            return false;
        }
    </script>
</asp:Content>
