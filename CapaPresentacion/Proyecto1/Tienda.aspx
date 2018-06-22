<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="CrearGeneroM.aspx.cs" Inherits="Proyecto1.CrearGeneroM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formulario">
        

        <table border="0">
            
            <tr>
                <td class="titulo" colspan="6">
                    <asp:Label  Text="Aplicaciones Disponibles" runat="server" ID="formTitle" CssClass="formulario-Titulo"></asp:Label>
                </td>
            </tr>

            
            <!-- fila 1 -->
            <tr class="fila">

                 <!-- Columa 1 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="Inventario" runat="server" ID="inventario" BackColor="#1A224D" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="inventarioPM"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="inventarioPA"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna" > <asp:CheckBox ID="ckInventario" runat="server" Width="80" /> </td>

                 <!-- Columna 2 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="Ventas" runat="server" ID="ventas" BackColor="#1a224d" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="ventasPM"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="ventasPA"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna"> <asp:CheckBox ID="ckVentas" runat="server" Width="80"/> </td>

                <!-- Columna 3 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="Compras" runat="server" ID="compras" BackColor="#1a224d" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="comprasPM"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="comprasPA"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna"> <asp:CheckBox ID="ckCompras" runat="server" /> </td>
            </tr>

             <!-- fila 2 -->
            <tr class="fila">

                 <!-- Columa 1 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="Facturación" runat="server" ID="factura" BackColor="#1a224d" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="facturaPM"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="facturaPA"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna" > <asp:CheckBox ID="ckFactura" runat="server" Width="80" /> </td>

                 <!-- Columna 2 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="Reclutamiento" runat="server" ID="recluta" BackColor="#1a224d" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="reclutaPM"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="reclutaPA"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna"> <asp:CheckBox ID="ckReclutamiento" runat="server" Width="80"/> </td>

                <!-- Columna 3 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="Flotas" runat="server" ID="flota" BackColor="#1a224d" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="flotaPM"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="flotaPA"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna"> <asp:CheckBox ID="ckFlotas" runat="server" Width="50"/> </td>

                <!-- Columna 4 -->
                <td class="columna" rowspan="4">

                    <table border="0">
                        <tr>
                            <td class="columna" colspan="2">
                                <asp:Button ID="btnMensual" runat="server" Text="Mensual" Width="80px" />
                                <asp:Button ID="btnAnual" runat="server" Text="Anual" Width="80px"/>
                            </td>
                        </tr>

                        <tr>
                            <td class="columna" >
                                <asp:Label  Text="Usuarios" runat="server" ID="userTitulo" CssClass="formulario-Titulo" BackColor="#cccccc" Width="170px"></asp:Label>
                            </td>

                            <td class="columna" >
                                <asp:Label  Text="Q.100.00" runat="server" ID="usuarioTotal" CssClass="formulario-Titulo"  Width="100px"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="columna">
                                <asp:Label  Text="Aplicaciones" runat="server" ID="appTitulo" CssClass="formulario-Titulo" BackColor="#cccccc" Width="170px"></asp:Label>
                            </td>

                            <td class="columna" >
                                <asp:Label  Text="Q.100.00" runat="server" ID="appTotal" CssClass="formulario-Titulo"  Width="100px"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="columna" >
                                <asp:Label  Text="Total /anual" runat="server" ID="totalTitulo" CssClass="formulario-Titulo" BackColor="#cccccc" Width="170px"></asp:Label>
                            </td>

                            <td class="columna" >
                                <asp:Label  Text="Q.100.00" runat="server" ID="Total" CssClass="formulario-Titulo"  Width="100px"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="columna" colspan="2">
                                <asp:Button ID="aceptarCompra" runat="server" Text="Comprar" Width="80px" />
                            </td>
                        </tr>
                         

                    </table>


                   
                </td>
            </tr>
            
            <!-- fila 3 -->
            <tr class="fila">

                 <!-- Columa 1 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="Blog" runat="server" ID="blog" BackColor="#1a224d" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="blogPM"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="blogPA"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna" > <asp:CheckBox ID="ckBlog" runat="server" Width="80" /> </td>

                 <!-- Columna 2 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="Eventos" runat="server" ID="evento" BackColor="#1a224d" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="eventoPM"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="eventoPA"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna"> <asp:CheckBox ID="ckEvento" runat="server" Width="80"/> </td>

                <!-- Columna 3 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="CRM" runat="server" ID="crm" BackColor="#1a224d" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="crmPA"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="crmPM"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna"> <asp:CheckBox ID="ckCrm" runat="server"/> </td>
            </tr>

            <!-- fila 3 -->
            <tr class="fila">

                 <!-- Columa 1 -->
                <td class="columna">
                    <asp:Label CssClass="artistR" text="Usuarios" runat="server" ID="usuario" BackColor="#1a224d" ForeColor="White" Font-Size="Large" Font-Bold="False" Width="150px"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.15.00 /mes " runat="server" ID="usuarioPM"  ForeColor="Black" Font-Size="Small"></asp:Label><br/>
                    <asp:Label CssClass="artistR" text="Q.150.00 /anual " runat="server" ID="usuarioPA"  ForeColor="Black" Font-Size="Small"></asp:Label>

                </td>
                <td class="columna" > <asp:CheckBox ID="usuarioA" runat="server" Width="80" /> </td>

                
            </tr>
            

            <!-- botones de aceptar-->
            <tr class="piepagina">
                <td class="titulo" colspan="6">
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar Servicio" OnClick="btnAceptar_Click"/>
                    <asp:Button ID="btmQuitar" runat="server" text="Quitar Servicio" OnClick="btnCancelar_Click" />
                </td>
            </tr>

        </table>

    </div>
    

    

</asp:Content>
