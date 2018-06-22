<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="Proyecto1.RegistrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar Usuario</title>
    <meta charset="utf-8" />
    <meta name="viewport"  content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1"/>
    <link href="styles/Style-CrearUsuario.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Crear Usuario</h2>
            <p class="parametros">Nombre de la Institución o Persona:</p>
            <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" MaxLength="35"></asp:TextBox>
                  
            <p class="parametros">Correo Electrónico:</p>
            <asp:TextBox ID="txtCorreo" runat="server" placeholder="Ejemplo: user@music.com" TextMode="Email"></asp:TextBox>
            
            <p class="parametros">Nombre de Usuario:</p>
            <asp:TextBox ID="txtUsuario" runat="server" placeholder="Usuario" MaxLength="25"></asp:TextBox>
            
            <p class="parametros">Contraseña:</p>
            <asp:TextBox ID="txtClave" runat="server" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
            
            <p class="parametros">Reescriba su Contraseña:</p>
            <asp:TextBox ID="txtClave2" runat="server" placeholder="Reescriba su Contraseña" TextMode="Password"></asp:TextBox>


            <asp:Button ID="btnIngresar" runat="server" text="Registrar" OnClick="btnIngresar_Click" />
            <asp:Button ID="btnCancelar" runat="server" text="Cancelar" OnClick="btnCancelar_Click"/>
        </div>
    </form>
</body>
</html>
