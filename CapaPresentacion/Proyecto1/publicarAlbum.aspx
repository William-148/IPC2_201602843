<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="publicarAlbum.aspx.cs" Inherits="Proyecto1.Albumes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="formulario">
        <table border="0">
            
            <tr>
                <td class="titulo" colspan="2">
                    <asp:Label  Text="Registro de Álbum" runat="server" ID="formTitle" CssClas="formulario-Titulo"></asp:Label>
                </td>
            </tr>

            <!--  fila 1 -->
            <tr class="fila">
                <td class="columna">Titulo:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="NombreArtista" CssClass="formulario-input"></asp:TextBox></td>
            </tr>

            <!-- fila 2 -->
            <tr class="fila">
                <td class="columna">Fecha:</td>
                <td class="columna">
                    <asp:TextBox Width="250px" runat="server" ID="fechaCreacion" CssClass="formulario-input" TextMode="Date">
                    </asp:TextBox>
                </td>
            </tr>

            <!-- fila 3 -->
            <tr class="fila">
                <td class="columna">Reseña:</td>
                <td class="columna"><asp:TextBox runat="server" ID="resena" CssClass="formulario-descripcion" Wrap="false" TextMode="MultiLine" Width="250px" Height="80px"></asp:TextBox></td>
            </tr>

            <!-- fila 4 -->
            <tr class="fila">
                <td class="columna">Foto de portada:</td>
                <td class="columna"><asp:FileUpload runat="server" ID="cargarCaratula" CssClass="formulario-input"></asp:FileUpload></td>
            </tr>

            <!-- fila 5 -->
            <tr class="fila">
                <td class="columna">Canción:</td>
                <td class="columna"><asp:FileUpload runat="server" ID="cargarCancion" CssClass="formulario-input"></asp:FileUpload></td>
            </tr>
            
            <!-- botones de aceptar-->
            <tr class="piepagina">
                <td class="titulo" colspan="2">
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar"/>
                    <asp:Button ID="btnFinalizar" runat="server" text="Finalizar"  />
                    
                </td>
            </tr>
        </table>

    </div>

</asp:Content>
