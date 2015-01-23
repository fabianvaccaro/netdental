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

            Characteristic = String.Empty;
        }

        public Boolean Save()
        {
            if(!Read(Id)&&!Existe(Characteristic))
            {
                DiagType diag = new DiagType();
                diag.Id = Id;
                diag.Characteristic = Characteristic;
                try
                {
                    Model1Container Cont = new Model1Container();
                    Cont.DiagTypeSet.Add(diag);
                    Cont.SaveChanges();
                    return true;
                }
                catch (Exception e)
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
            
        }

        public Boolean Read(Int32 nID)
        {
            using (Model1Container Contendor = new Model1Container())
            {
                var xdf = (from arecord in Contendor.DiagTypeSet
                           where arecord.Id == nID
                           select new
                           {
                               arecord
                           }).FirstOrDefault();
                try
                {
                    if (xdf.arecord != null)
                    {
                        Id = xdf.arecord.Id;
                        Characteristic = xdf.arecord.Characteristic;
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch (Exception e)
                {
                    return false;
                }
            }

        }

        Boolean Existe(String busqueda)
        {
            using (Model1Container Contendor = new Model1Container())
            {
                var xdf = (from arecord in Contendor.DiagTypeSet
                           where arecord.Characteristic == busqueda
                           select new
                           {
                               arecord
                           }).FirstOrDefault();
                try
                {
                    if (xdf.arecord != null)
                    {
                        Id = xdf.arecord.Id;
                        Characteristic = xdf.arecord.Characteristic;
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch (Exception e)
                {
                    return false;
                }
            }
        }
    }
}
