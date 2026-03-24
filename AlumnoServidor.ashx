<%@ WebHandler Language="C#" Class="Aprendamos_Juntos_CCAV.AlumnoServidor" %>

using System;
using System.Web;

namespace Aprendamos_Juntos_CCAV
{
    public class AlumnoServidor : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            string nombre = (context.Application["AlumnoServidor_Nombre"] ?? "").ToString();
            string curso = (context.Application["AlumnoServidor_Curso"] ?? "").ToString();
            string password = (context.Application["AlumnoServidor_Password"] ?? "").ToString();

            context.Response.ContentType = "application/json";
            context.Response.Write("{\"nombre\":\"" + HttpUtility.JavaScriptStringEncode(nombre) +
                                  "\",\"curso\":\"" + HttpUtility.JavaScriptStringEncode(curso) +
                                  "\",\"password\":\"" + HttpUtility.JavaScriptStringEncode(password) + "\"}");
        }

        public bool IsReusable
        {
            get { return false; }
        }
    }
}