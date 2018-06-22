<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="RegistrarArtista.aspx.cs" Inherits="Proyecto1.RegistrarArtista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formulario">

        <table border="0">
            
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnVerAlbumes" runat="server" Text="Publicar Album" CssClass="botonAlbum" OnClick="btnVerAlbumes_Click" />
                    <asp:Button ID="btnPublicarAlbumes" runat="server" Text="Ver Albumes" CssClass="botonAlbum" OnClick="btnPublicarAlbumes_Click" />
                </td>
            </tr>


            <tr>
                <td class="titulo" colspan="2">
                    <asp:Label  Text="Registrar Artista" runat="server" ID="formTitle" CssClas="formulario-Titulo"></asp:Label>
                </td>
            </tr>

            <!--  fila 1 -->
            <tr class="fila">
                <td class="columna">Nombre del arista:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="NombreArtista" CssClass="formulario-input"></asp:TextBox></td>
            </tr>

            <!-- fila 2 -->
            <tr class="fila">
                <td class="columna">Año de formacion:</td>
                <td class="columna">
                    <asp:DropDownList runat="server" ID="YearFormacion" CssClass="formulario-input">
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>1998</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
            <asp:ListItem>1992</asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
            <asp:ListItem>1990</asp:ListItem>
            <asp:ListItem>1989</asp:ListItem>
            <asp:ListItem>1988</asp:ListItem>
            <asp:ListItem>1987</asp:ListItem>
            <asp:ListItem>1986</asp:ListItem>
            <asp:ListItem>1985</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>

            <!-- fila 3 -->
            <tr class="fila">
                <td class="columna">Pais de Origen:</td>
                <td class="columna">
                    <asp:DropDownList runat="server" ID="Pais" CssClass="formulario-input">
            <asp:ListItem>Argentina</asp:ListItem>
            <asp:ListItem>Bolivia</asp:ListItem>
            <asp:ListItem>Brasil</asp:ListItem>
            <asp:ListItem>Chile</asp:ListItem>
            <asp:ListItem>Colombia</asp:ListItem>
            <asp:ListItem>Costa Rica</asp:ListItem>
            <asp:ListItem>Cuba</asp:ListItem>
            <asp:ListItem>Ecuador</asp:ListItem>
            <asp:ListItem>El Salvador</asp:ListItem>
            <asp:ListItem>Guatemala</asp:ListItem>
            <asp:ListItem>Honduras</asp:ListItem>
            <asp:ListItem>Jamaica</asp:ListItem>
            <asp:ListItem>México</asp:ListItem>
            <asp:ListItem>Nicaragua</asp:ListItem>
            <asp:ListItem>Panamá</asp:ListItem>
            <asp:ListItem>Paraguay</asp:ListItem>
            <asp:ListItem>Perú</asp:ListItem>
            <asp:ListItem>Puerto Rico</asp:ListItem>
            <asp:ListItem>República Dominicana</asp:ListItem>
            <asp:ListItem>Uruguay</asp:ListItem>
            <asp:ListItem>Venezuela</asp:ListItem>
        </asp:DropDownList>

                </td>
            </tr>

            <!-- fila 4 -->
            <tr class="fila">
                <td class="columna">Descripción del artista:</td>
                <td class="columna"><asp:TextBox runat="server" ID="TextBox1" CssClass="formulario-descripcion" Wrap="false" TextMode="MultiLine" Width="250px" Height="80px"></asp:TextBox></td>
            </tr>

            <!-- fila 5 -->
            <tr class="fila">
                <td class="columna">Género musical:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="Genero" CssClass="formulario-input"></asp:TextBox></td>
            </tr>

            <!-- fila 6 -->
            <tr class="fila">
                <td class="columna">Imagen de portada:</td>
                <td class="columna"><asp:FileUpload runat="server" ID="FileUpload1" CssClass="formulario-input"></asp:FileUpload></td>
            </tr>

            <!-- fila 7 -->
            <tr class="fila">
                <td class="columna">Facebook:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="facebook" CssClass="formulario-input"></asp:TextBox></td>
            </tr>

            <!-- fila 8 -->
            <tr class="fila">
                <td class="columna">Twitter:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="twitter" CssClass="formulario-input"></asp:TextBox></td>
            </tr>

            <!-- fila 9 -->
            <tr class="fila">
                <td class="columna">YouTube:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="youtube" CssClass="formulario-input"></asp:TextBox></td>
            </tr>

            <!-- fila 10 -->
            <tr class="fila">
                <td class="columna">Pagina Web:</td>
                <td class="columna"><asp:TextBox runat="server"  Width="250px" ID="paginaWeb" CssClass="formulario-input"></asp:TextBox></td>
            </tr>

            <!-- botones de aceptar-->
            <tr class="piepagina">
                <td class="titulo" colspan="2">
                    <asp:Button ID="btnRegistrarA" runat="server" Text="Registrar  Artista" OnClick="btnRegistrarA_Click"/>
                    <asp:Button ID="btnActualizar" runat="server" text="Actualizar Información" Visible="False" OnClick="btnActualizar_Click" />
                    <asp:Button ID="btnEliminar" runat="server" text="Eliminar Artista"  Visible="False" OnClick="btnEliminar_Click" />
                </td>
            </tr>

            
        </table>

    </div>
</asp:Content>
