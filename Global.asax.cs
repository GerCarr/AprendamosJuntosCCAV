using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Aprendamos_Juntos_CCAV
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            // Variable de servidor con datos del alumno de ejemplo
            Application["AlumnoServidor_Nombre"] = "Ana Maria";
            Application["AlumnoServidor_Curso"] = "Octavo";
            Application["AlumnoServidor_Password"] = "amor";
        }
    }
}