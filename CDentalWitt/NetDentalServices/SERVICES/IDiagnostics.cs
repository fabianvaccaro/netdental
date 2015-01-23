using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NetDentalServices.SERVICES
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IDiagnostics" in both code and config file together.
    [ServiceContract]
    public interface IDiagnostics
    {
        [OperationContract]
        void DoWork();
        [OperationContract]
        Boolean SetDiagType(String Chari);
        [OperationContract]
        Boolean SetDiagUbication(String Bdpar, String Codification);
        [OperationContract]
        Boolean SetExtentionDent(String Siz);
        [OperationContract]
        Boolean SetDiagpiece(String Defi, String Type, String Ubi, String Ext);
    }
}
