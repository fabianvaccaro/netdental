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
    public class DiagUbicationClass
    {
        [DataMember]
        public Int32 Id { get; set; }

        [DataMember]
        public String Bodypart { get; set; }

        [DataMember]
        public String Codification { get; set; }

        public DiagUbicationClass()
        {
            Bodypart = String.Empty;
            Codification = String.Empty;
        }

        public Boolean Save()
        {
            DiagUbication Diag = new DiagUbication();
            Diag.Bodypart = Bodypart;
            Diag.Codification = Codification;
            try
            {
                Model1Container contenedor = new Model1Container();
                contenedor.DiagUbicationSet.Add(Diag);
                contenedor.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }

        public Boolean Read(Int32 nID)
        {
            using (Model1Container Contendor = new Model1Container())
            {
                var xdf = (from arecord in Contendor.DiagUbicationSet
                           where arecord.Id == nID
                           select new
                           {
                               arecord
                           }).FirstOrDefault();
                try
                {
                    if(xdf.arecord!=null)
                    {
                        Id = xdf.arecord.Id;
                        Bodypart = xdf.arecord.Bodypart;
                        Codification = xdf.arecord.Codification;
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
