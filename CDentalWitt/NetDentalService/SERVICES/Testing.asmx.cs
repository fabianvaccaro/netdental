using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using DB_LIB;

namespace NetDentalService.SERVICES
{
    /// <summary>
    /// Summary description for Testing
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Testing : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public Boolean SetNewDiagType(String chari)
        {
            DB_LIB.CLASSES.DiagTypeClass diag = new DB_LIB.CLASSES.DiagTypeClass();
            diag.Characteristic = chari;
            Boolean resultado = diag.Save();
            return resultado;
        }
    }
}
