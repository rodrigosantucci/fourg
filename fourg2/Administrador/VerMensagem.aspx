<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Site2.Master" AutoEventWireup="true" CodeBehind="VerMensagem.aspx.cs" Inherits="fourg2.Administrador.VerMensagem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div CssClass="table table-hover" runat="server">
        <div>
            From:
            <asp:Label ID="lblFrom" runat="server" Text="" />
            <br />
            Subject:
            <asp:Label ID="lblSubject" runat="server" Text="" />
            <br />
            Body:
            <asp:Label ID="lblBody" runat="server" Text="" />
        </div>
    </div>

</asp:Content>
