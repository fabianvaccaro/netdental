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
        public Int32 Id { get; set; }
        [DataMember]
        public String Size { get; set; }

        public ExtentionClass()
        {
            Size = String.Empty;
        }

        public Boolean Save()
        {
            if(!Read(Id))
            {
                ExtentionDent ext = new ExtentionDent();
                ext.Size = Size;
                try
                {
                    Model1Container Contenedor = new Model1Container();
                    Contenedor.ExtentionDentSet.Add(ext);
                    Contenedor.SaveChanges();
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
                var xdf = (from arecord in Contendor.ExtentionDentSet
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
                        Size = xdf.arecord.Size;
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
