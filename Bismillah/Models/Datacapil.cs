using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Bismillah.Models
{
    public class Datacapil : Gassentities
    {
        public List<Bismillah.m_dukcapil_data> GetAlldata()
        {            
            return m_dukcapil_data.ToList();
        }

        public Bismillah.m_dukcapil_data Getspesfdata(long ID)
        {
            Bismillah.m_dukcapil_data hasil = null;
            List<Bismillah.m_dukcapil_data> cari = m_dukcapil_data.Where(e => e.NIK == ID).ToList();
            hasil = cari.First();            
            return hasil;       
        }

     //   public List<Bismillah.t_dukcapil_check_result> tambah { get; set; } = null;
    //    public tambahdata()
     //   {
     //       tambah = new List<Bismillah.t_dukcapil_check_result>();
      //      t_dukcapil_check_result dt = new Bismillah.t_dukcapil_check_result;
     //       dt.NIK = Getspesfdata(NIK);
      //      dt.check_status = "FOUND";

        //    tambah.Add(dt);
       // }



    }
}