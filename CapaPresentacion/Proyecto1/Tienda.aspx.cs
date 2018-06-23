using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto1
{
    public partial class Tienda1 : System.Web.UI.Page
    {
        #region ID DE SERVICIOS
        private int idInventario = 1;
        private int idVentas = 2;
        private int idcompras = 3;
        private int idfactura = 4;
        private int idrecluta = 5;
        private int idflota = 6;
        private int idblog = 7;
        private int ideventos = 8;
        private int idCrm = 9;
        private int idusers = 10;
        #endregion

        #region COSTOS DE SERVICIOS
        
        private const int Mensual = 0;
        private const int Anual = 1;

        private double inventarioMes = 14.99;
        private double inventarioAnual = 149.99;

        private double ventasMes = 14.99;
        private double ventasAnual = 149.99;

        private double comprasMes = 14;
        private double comprasAnual = 150;

        private double facturaMes = 14;
        private double facturaAnual = 150;

        private double reclutamientoMes = 14;
        private double reclutamientoAnual = 150;

        private double flotasMes = 14;
        private double flotasAnual = 150;

        private double blogMes = 14;
        private double blogAnual = 150;

        private double eventosMes = 14;
        private double eventosAnual = 150;

        private double crmMes = 14;
        private double crmAnual = 150;

        private double usuarioMes = 14;
        private double usuarioAnual = 150;

        private double total = 0;
        private double subTotUsuario = 0;
        private double subTotApps = 0;
        private int totalApps = 0;
        private int totalUser = 0;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            importarInformacion();
            mostrarPrecios(); 
            
        }

        public void importarInformacion()
        {
            JSPservice.GestionAplicacionClient servicio = new JSPservice.GestionAplicacionClient();
            JSPservice.servicio[] lista = servicio.getDatosServicios();
            for (int i = 0; i < lista.Length; i++)
            {
                JSPservice.servicio dato = lista[i];
                if (dato.idservicio == idInventario)
                {
                    inventarioMes = dato.precioMensual;
                    inventarioAnual = dato.precioAnual;
                }
                else if (dato.idservicio == idVentas)
                {
                    ventasMes = dato.precioMensual;
                    ventasAnual = dato.precioAnual;
                }
                else if (dato.idservicio == idcompras)
                {
                    comprasMes = dato.precioMensual;
                    comprasAnual = dato.precioAnual;

                }
                else if (dato.idservicio == idfactura)
                {
                    facturaMes = dato.precioMensual;
                    facturaAnual = dato.precioAnual;

                }
                else if (dato.idservicio == idrecluta)
                {
                    reclutamientoMes = dato.precioMensual;
                    reclutamientoAnual = dato.precioAnual;

                }
                else if (dato.idservicio == idflota)
                {
                    flotasMes = dato.precioMensual;
                    flotasAnual = dato.precioAnual;

                }
                else if (dato.idservicio == idblog)
                {
                    blogMes = dato.precioMensual;
                    blogAnual = dato.precioAnual;
                }
                else if (dato.idservicio == ideventos)
                {
                    eventosMes = dato.precioMensual;
                    eventosAnual = dato.precioAnual;
                }
                else if (dato.idservicio == idCrm)
                {
                    crmMes = dato.precioMensual;
                    crmAnual = dato.precioAnual;

                }
                else if (dato.idservicio == idusers)
                {
                    usuarioMes = dato.precioMensual;
                    usuarioAnual = dato.precioAnual;
                }
            }
        }

        private void ocultarInventario()
        {

        }



        public void mostrarPrecios()
        {
            usuarioPM.Text = "Q." + usuarioMes + " /Mensual";
            usuarioPA.Text = "Q." + usuarioAnual + " /Anual";

            inventarioPM.Text = "Q."+ inventarioMes +" /Mensual";
            inventarioPA.Text = "Q." + inventarioAnual + " /Anual";

            ventasPM.Text = "Q." + ventasMes + " /Mensual";
            ventasPA.Text = "Q." + ventasAnual + " /Anual";

            comprasPM.Text = "Q." + comprasMes + " /Mensual";
            comprasPA.Text = "Q." + comprasAnual + " /Anual";

            facturaPM.Text = "Q." + facturaMes + " /Mensual";
            facturaPA.Text = "Q." + facturaAnual + " /Anual";

            reclutaPM.Text = "Q." + reclutamientoMes + " /Mensual";
            reclutaPA.Text = "Q." + reclutamientoAnual + " /Anual";

            flotaPM.Text = "Q." + flotasMes + " /Mensual";
            flotaPA.Text = "Q." + flotasAnual + " /Anual";

            blogPM.Text = "Q." + blogMes + " /Mensual";
            blogPA.Text = "Q." + blogAnual + " /Anual";

            eventoPM.Text = "Q." + eventosMes + " /Mensual";
            eventoPA.Text = "Q." + eventosAnual + " /Anual";

            crmPM.Text = "Q." + crmMes + " /Mensual";
            crmPA.Text = "Q." + crmAnual + " /Anual";

        }

        private void calcularValorAnual()
        {
            agregarUsuario(Anual);
            agregarInventario(Anual);
            agregarVentas(Anual);
            agregarCompras(Anual);
            agregarFactura(Anual);
            agregarReclutamiento(Anual);
            agregarFlotas(Anual);
            agregarBlog(Anual);
            agregarEventos(Anual);
            agregarCrm(Anual);
            total = subTotApps + subTotUsuario;
        }

        private void calcularValorMensual()
        {
            agregarUsuario(Mensual);
            agregarInventario(Mensual);
            agregarVentas(Mensual);
            agregarCompras(Mensual);
            agregarFactura(Mensual);
            agregarReclutamiento(Mensual);
            agregarFlotas(Mensual);
            agregarBlog(Mensual);
            agregarEventos(Mensual);
            agregarCrm(Mensual);
            total = subTotApps + subTotUsuario;
        }

        private void agregarUsuario(int pago)
        {
            int aux = Convert.ToInt32(numeroUsuarios.Text);
            if (pago == Anual)
            {
                if (aux < 0)
                {
                    subTotUsuario = 0;
                    totalUser = 0;
                    numeroUsuarios.Text = ""+0;
                }
                else
                {
                    subTotUsuario += aux * usuarioAnual;
                    totalUser = aux;
                }
                
            }
            else
            {
                
                if (aux < 0)
                {
                    subTotUsuario = 0;
                    totalUser = 0;
                    numeroUsuarios.Text = "" + 0;
                }
                else
                {
                    subTotUsuario += aux * usuarioMes;
                    totalUser = aux;
                }
            }
        }

        public void agregarInventario(int pago)
        {
            if (ckInventario.Checked == true)
            {
                if (pago == Anual)
                {
                    subTotApps += inventarioAnual;
                }
                else
                {
                    subTotApps += inventarioMes;
                }
                totalApps++;
            }
        }

        public void agregarVentas(int pago)
        {
            if (ckVentas.Checked == true)
            {
                if (pago == Anual)
                {
                    subTotApps += ventasAnual;
                }
                else
                {
                    subTotApps += ventasMes;
                }
                totalApps++;
            }
            

        }

        public void agregarCompras(int pago)
        {
            if (ckCompras.Checked == true)
            {
                if (pago == Anual)
                {
                    subTotApps += comprasAnual;
                }
                else
                {
                    subTotApps += comprasMes;
                }
                totalApps++;
            }
            
        }

        public void agregarFactura(int pago)
        {
            if (ckFactura.Checked == true)
            {
                if (pago == Anual)
                {
                    subTotApps += facturaAnual;
                }
                else
                {
                    subTotApps += facturaMes;
                }
                totalApps++;
            }
        }

        public void agregarReclutamiento(int pago)
        {
            if (ckReclutamiento.Checked == true)
            {
                if (pago == Anual)
                {
                    subTotApps += reclutamientoAnual;
                }
                else
                {
                    subTotApps += reclutamientoMes;
                }
                totalApps++;
            }
        }

        public void agregarFlotas(int pago)
        {
            if (ckFlotas.Checked == true)
            {
                if (pago == Anual)
                {
                    subTotApps += flotasAnual;
                }
                else
                {
                    subTotApps += flotasMes;
                }
                totalApps++;
            }
            
        }

        public void agregarBlog(int pago)
        {
            if (ckBlog.Checked == true)
            {
                if (pago == Anual)
                {
                    subTotApps += blogAnual;
                }
                else
                {
                    subTotApps += blogMes;
                }
                totalApps++;
            }
            

        }

        public void agregarEventos(int pago)
        {
            if (ckEvento.Checked == true)
            {
                if (pago == Anual)
                {
                    subTotApps += eventosAnual;
                }
                else
                {
                    subTotApps += eventosMes;
                }
                totalApps++;
            }
        }

        public void agregarCrm(int pago)
        {
            if (ckCrm.Checked == true)
            {
                if (pago == Anual)
                {
                    subTotApps += crmAnual;
                }
                else
                {
                    subTotApps += crmMes;
                }

                totalApps++;
            }
            
        }

        public void inicializarTotales()
        {
            total = 0;
            subTotUsuario = 0;
            subTotApps = 0;
            totalApps = 0;
            totalUser = 0;
        }

        protected void btnMensual_Click(object sender, EventArgs e)
        {
            inicializarTotales();
            calcularValorMensual();
            userTitulo.Text = totalUser+" Usuarios";
            usuarioTotal.Text = "Q."+subTotUsuario;

            appTitulo.Text = totalApps + " Aplicaciones";
            appTotal.Text = "Q."+subTotApps;

            totalTitulo.Text = "Total /Mensual";
            TotalNeto.Text = "Q." + total;

        }

        protected void btnAnual_Click(object sender, EventArgs e)
        {
            inicializarTotales();
            calcularValorAnual();
            userTitulo.Text = totalUser + " Usuarios";
            usuarioTotal.Text = "Q." + subTotUsuario;

            appTitulo.Text = totalApps + " Aplicaciones";
            appTotal.Text = "Q." + subTotApps;

            totalTitulo.Text = "Total /Anual";
            TotalNeto.Text = "Q." + total;
        }

        protected void aceptarCompra_Click(object sender, EventArgs e)
        {
            if (total > 0)
            {
                Response.Redirect("RegistrarTarjeta.aspx");

            }
            else
            {
                Response.Write("<script>alert('No Ha Contratado Ningún Servicio')</script>");
            }
            
        }
    }
}