using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace DB_LIB.CLASSES
{
    [DataContract]
    [Serializable]
    public class ExtentionClass
    {
        [DataMember]
        Int32 Id { get; set; }


        public ExtentionClass()
        {

        }

        public Boolean Save()
        {
            ExtentionDent ext = new ExtentionDent();
            return true;
        }
    }
}
