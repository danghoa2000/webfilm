using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using phim;

namespace phim.Controllers
{
    public class daodiensController : ApiController
    {
        private websiteEntities db = new websiteEntities();

        // GET: api/daodiens
        public IQueryable<daodien> Getdaodien()
        {
            return db.daodien;
        }

        // GET: api/daodiens/5
        [ResponseType(typeof(daodien))]
        public IHttpActionResult Getdaodien(int id)
        {
            daodien daodien = db.daodien.Find(id);
            if (daodien == null)
            {
                return NotFound();
            }

            return Ok(daodien);
        }

        // PUT: api/daodiens/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putdaodien(int id, daodien daodien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != daodien.id_daodien)
            {
                return BadRequest();
            }

            db.Entry(daodien).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!daodienExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/daodiens
        [ResponseType(typeof(daodien))]
        public IHttpActionResult Postdaodien(daodien daodien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.daodien.Add(daodien);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = daodien.id_daodien }, daodien);
        }

        // DELETE: api/daodiens/5
        [ResponseType(typeof(daodien))]
        public IHttpActionResult Deletedaodien(int id)
        {
            daodien daodien = db.daodien.Find(id);
            if (daodien == null)
            {
                return NotFound();
            }

            db.daodien.Remove(daodien);
            db.SaveChanges();

            return Ok(daodien);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool daodienExists(int id)
        {
            return db.daodien.Count(e => e.id_daodien == id) > 0;
        }
    }
}