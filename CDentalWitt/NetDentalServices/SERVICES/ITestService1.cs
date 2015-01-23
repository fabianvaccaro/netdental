using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NetDentalServices.SERVICES
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ITestService1" in both code and config file together.
    [ServiceContract]
    public interface ITestService1
    {
        [OperationContract]
        void DoWork();

        [OperationContract]
        Boolean SetDiagType(String Chari);
        [OperationContract]
        Boolean PUTALL(String Chari);
    }
}
