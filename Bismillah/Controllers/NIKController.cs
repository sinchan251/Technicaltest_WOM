using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Bismillah.Models;

namespace Bismillah.Controllers
{
    public class NikController : ApiController
    {
        // GET: api/Nik
        public List<m_dukcapil_data> Get()
        {
            Datacapil data = new Datacapil();
            return data.GetAlldata();      
        }

        // GET: api/Nik/5
        public Bismillah.m_dukcapil_data Get(int ID)
        {
            Datacapil data = new Datacapil();
            return data.Getspesfdata(ID);
        }

        // POST: api/Nik
        public void Post([FromBody] Bismillah.m_dukcapil_data value)
        {
            Datacapil data = new Datacapil();

        }

        // PUT: api/Nik/5
        public void Put(int id, [FromBody]string value)
        {
            //update record (edit)
        }

        // DELETE: api/Nik/5
        public void Delete(int id)
        {
        }
    }
}
