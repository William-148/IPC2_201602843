<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="RegistrarTarjeta.aspx.cs" Inherits="Proyecto1.RegistrarTarjeta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .formulario-input {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table border="0">
            
          
            <tr>
                <td class="titulo" colspan="2">
                    <asp:Label  Text="Registrar Tarjeta" runat="server" ID="formTitle" CssClas="formulario-Titulo"></asp:Label>
                </td>
            </tr>

            <!--  fila 1 -->
            <tr class="fila">
                <td class="columna">Nombre:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="NombreArtista" CssClass="formulario-input"></asp:TextBox></td>
            </tr>

        <!--  fila 1 -->
            <tr class="fila">
                <td class="columna">Numero de tarjeta:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="TextBox2" CssClass="formulario-input"></asp:TextBox></td>
            </tr>
            
            <tr class="fila">
                <td class="columna">CVV:</td>
                <td class="columna">
                    <asp:TextBox runat="server"  Width="50px" ID="TextBox3" CssClass="formulario-input"></asp:TextBox></td>                   

                </td>
            </tr>


            <!-- fila 2 -->
            <tr class="fila">
                <td class="columna">Fecha de Vencimiento:</td>
                <td class="columna">

                    <asp:DropDownList runat="server" ID="DropDownList1" CssClass="formulario-input">
                        <asp:ListItem>Mes</asp:ListItem>
                        <asp:ListItem>Enero</asp:ListItem>
                        <asp:ListItem>Febrero</asp:ListItem>
                        <asp:ListItem>Marzo</asp:ListItem>
                        <asp:ListItem>Abril</asp:ListItem>
                        <asp:ListItem>Mayo</asp:ListItem>
                        <asp:ListItem>Junio</asp:ListItem>
                        <asp:ListItem>Julio</asp:ListItem>
                        <asp:ListItem>Agosto</asp:ListItem>
                        <asp:ListItem>Septiembre</asp:ListItem>
                        <asp:ListItem>Octubre</asp:ListItem>
                        <asp:ListItem>Noviembre</asp:ListItem>
                        <asp:ListItem>Diciembre</asp:ListItem>
                    </asp:DropDownList>




                    <asp:DropDownList runat="server" ID="YearFormacion" CssClass="formulario-input">
                        <asp:ListItem>Año</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                        <asp:ListItem>2028</asp:ListItem>
                        <asp:ListItem>2029</asp:ListItem>
                        <asp:ListItem>2030</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            

            <!-- botones de aceptar-->
            <tr class="piepagina">
                <td class="titulo" colspan="2">
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" />
                    <asp:Button ID="btnCancelar" runat="server" text="Cancelar"  />
                    
                </td>
            </tr>

            
        </table>

    </div>
















</asp:Content>
