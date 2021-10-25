using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Bismillah.Models
{
    public class DCapil : DukcapilEntities
    {
        //private List<t_dukcapil_check_result> cekdata;

        public List<DataPendudukCapil> Getsemuadataduk()
        {
            return m_dukcapil_data.ToList();
        }

        public DataPendudukCapil GetNIK(long NIK)
        {
            DataPendudukCapil hasil = null;
            List<DataPendudukCapil> dapat = m_dukcapil_data.Where(e => e.NIK == NIK)
                .ToList();
            hasil = dapat.First();

          //  if(hasil != null)
           // {
           //     cekdata = new List<t_dukcapil_check_result>();
           //     t_dukcapil_check_result asd = new t_dukcapil_check_result();
          //      asd.NIK = NIK;
          //      //asd.check_dtm = ;
         //       asd.check_status = "FOUND";
         //       cekdata.Add(asd);
                

                // Status Found, add data to database

         //   }
         //   else
         //   {
          //      cekdata = new List<t_dukcapil_check_result>();
          //      t_dukcapil_check_result asd = new t_dukcapil_check_result();
          //      asd.NIK = NIK;
///asd.check_dtm = ;
           //     asd.check_status = "NOT FOUND";
            //    cekdata.Add(asd);
                //Status Not Found, ad data to databsae
           // }

            return hasil;
        }
    }
}