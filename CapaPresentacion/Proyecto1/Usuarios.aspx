<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Proyecto1.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="formulario">

        <table border="0">
            
            <tr>
                <td class="titulo" colspan="2">
                    <asp:Label  Text="Registrar Usuario" runat="server" ID="formTitle" CssClass="formulario-Titulo"></asp:Label>
                </td>
            </tr>

            
            <!-- fila 1 -->
            <tr class="fila">
                <td class="columna">Nombre y Apellido:</td>
                <td class="columna"><asp:TextBox runat="server" placeholder="Nombre y Apellido" Width="250px" ID="Nombre" CssClass="formulario-input"></asp:TextBox></td>

            </tr>

            <!-- fila 2 -->
            <tr class="fila">
                <td class="columna">Fecha de Nacimiento:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="fecha" CssClass="formulario-input" TextMode="Date"></asp:TextBox></td>

            </tr>

            <!-- fila 3 -->
            <tr class="fila">
                <td class="columna">Correo Electrónico:</td>
                <td class="columna"><asp:TextBox runat="server" placeholder="Ejemplo: user@music.com" Width="250px" ID="correo" CssClass="formulario-input"></asp:TextBox></td>

            </tr>

            <!-- fila 4 -->
            <tr class="fila">
                <td class="columna">Nombre de Usuario:</td>
                <td class="columna"><asp:TextBox runat="server" placeholder="Usuario" Width="250px" ID="usuario" CssClass="formulario-input"></asp:TextBox></td>

            </tr>

            <!-- fila 5 -->
            <tr class="fila">
                <td class="columna">Contraseña:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="clave1" CssClass="formulario-input" TextMode="Password"></asp:TextBox></td>

            </tr>

            <!-- fila 6 -->
            <tr class="fila">
                <td class="columna">Reescriba su Contraseña:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="clave2" CssClass="formulario-input" TextMode="Password"></asp:TextBox></td>

            </tr>
            <!-- botones de aceptar-->
            <tr class="piepagina">
                <td class="titulo" colspan="2">
                    <asp:Button ID="btnAceptar" runat="server" Text="Registrar" OnClick="btnAceptar_Click" />
                    <asp:Button ID="btnCancelar" runat="server" text="Cancelar" OnClick="btnCancelar_Click"  />
                </td>
            </tr>

        </table>

    </div><br />


    <table border="0" class="tableUsuarios">
            
            <tr>
                <td class="titulo" colspan="2">
                    <asp:Label  Text="Listado de Usuarios" runat="server" ID="Label1" CssClass="formulario-Titulo"></asp:Label>
                </td>

            </tr>

            <tr>
                <td>
                    &nbsp;</td>
             </tr>
      </table>
    
</asp:Content>
