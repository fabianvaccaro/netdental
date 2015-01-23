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
    public class DiagTypeClass
    {
        [DataMember]
        public Int32 Id { get; set; }

        [DataMember]
        public String Characteristic { get; set; }

        public DiagTypeClass()
        {
            Id = 0;
            Characteristic = String.Empty;
        }

        public Boolean Save()
        {

            return true;
        }
    }
}
