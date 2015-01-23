using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DB_LIB
{
    /// <summary>
    /// This class only purpose is to override an Entity Framework 6 loading problem
    /// DO NOT ERASE FOR THE LOVE OF GOD
    /// </summary>
    public class Class1
    {
        public void FixEfProviderServicesProblem()
        {
            //The Entity Framework provider type 'System.Data.Entity.SqlServer.SqlProviderServices, EntityFramework.SqlServer'
            //for the 'System.Data.SqlClient' ADO.NET provider could not be loaded. 
            //Make sure the provider assembly is available to the running application. 
            //See http://go.microsoft.com/fwlink/?LinkId=260882 for more information.

            var instance = System.Data.Entity.SqlServer.SqlProviderServices.Instance;
        }
    }
    
}
