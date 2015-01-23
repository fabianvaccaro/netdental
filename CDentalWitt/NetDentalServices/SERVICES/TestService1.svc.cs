using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DB_LIB.CLASSES;
namespace NetDentalServices.SERVICES
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "TestService1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select TestService1.svc or TestService1.svc.cs at the Solution Explorer and start debugging.
    public class TestService1 : ITestService1
    {
        public void DoWork()
        {
        }

        public Boolean SetDiagType(String Chari)
        {
            DiagTypeClass diag = new DiagTypeClass();
            diag.Characteristic = Chari;
            return (diag.Save());
        }
        
        public Boolean PUTALL(String Chari)
        {

            return true;
        }


    }
}
