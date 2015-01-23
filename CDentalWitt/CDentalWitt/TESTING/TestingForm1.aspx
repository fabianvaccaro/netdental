<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TestingForm1.aspx.cs" Inherits="CDentalWitt.TESTING.TestingForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="PULSA" />
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
