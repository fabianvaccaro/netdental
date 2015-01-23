using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CDentalWitt.TESTING
{
    public partial class TestingForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NetDentServices.TestService1Client Refi = new NetDentServices.TestService1Client();
            if (Refi.SetDiagType("CAGADA"))
            {
                Button1.Text = "EXITO";
            }
            else
            {
                Button1.Text = "Puta Mierda";
            }
            
        }
    }
}