<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Iniciar Sesión</title>
    <meta charset="utf-8" />
    <meta name="viewport"  content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1"/>
    <link href="styles/Style-login.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Inicio de Sesión</h2>
            <asp:TextBox ID="txtUser" runat="server" placeholder="Usuario"></asp:TextBox>
            <asp:TextBox ID="txtClave"  textMode="password" runat="server" placeholder="Contraseña"></asp:TextBox>
            <asp:Button ID="btnIngresar" runat="server" text="Ingresar" OnClick="btnIngresar_Click"/> <br />
            <!-- <input type="password" placeholder="Contraseña" name="clave"/> 
                 <input type="submit" value="Ingresar"/><br />
                
             -->
            <a id="forgotKey" href="#">¿Olvidó su contraseña?</a><br /> <br /> 
            <a id="newUser" href="CrearUsuario.aspx">Crear una cuenta</a>
        </div>
    </form>
</body>
</html>
