<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="diagnostics_settings.aspx.cs" Inherits="CDentalWitt.web.panel.diagnostics_settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        En esta página se puede agregar nuevos tipos de diagnóstico, ubicaciones y extensiones.</p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Table ID="Table1" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell ColumnSpan="2">
                        Nuevo tipo de diagnóstico:
                    </asp:TableHeaderCell>
                    <asp:TableCell RowSpan="2">
                        Los tipos de diagnóstico ya disponibles son: Patología, Elemento Preexistente, Iatrogénia, y Nuevo Elemento.<br />
                        Tenga esto en cuenta si desea agregar un nuevo tipo de patología, evite hacerlo en todos los casos.<br />
                        <asp:Button ID="btn_setDiagType" runat="server" Text="Agregar" OnClick="btn_setDiagType_Click"/>   <asp:Label ID="lbl_info1" runat="server" Text=""></asp:Label>
                    </asp:TableCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Tipo:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txt_DiagTypeCharacteristic" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
