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
    public class tintuc_phimController : ApiController
    {
        private websiteEntities db = new websiteEntities();

        // GET: api/tintuc_phim
        public IQueryable<tintuc_phim> Gettintuc_phim()
        {
            return db.tintuc_phim;
        }

        // GET: api/tintuc_phim/5
        [ResponseType(typeof(tintuc_phim))]
        public IHttpActionResult Gettintuc_phim(int id)
        {
            tintuc_phim tintuc_phim = db.tintuc_phim.Find(id);
            if (tintuc_phim == null)
            {
                return NotFound();
            }

            return Ok(tintuc_phim);
        }

        // PUT: api/tintuc_phim/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Puttintuc_phim(int id, tintuc_phim tintuc_phim)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != tintuc_phim.id_tintuc_phim)
            {
                return BadRequest();
            }

            db.Entry(tintuc_phim).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!tintuc_phimExists(id))
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

        // POST: api/tintuc_phim
        [ResponseType(typeof(tintuc_phim))]
        public IHttpActionResult Posttintuc_phim(tintuc_phim tintuc_phim)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.tintuc_phim.Add(tintuc_phim);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = tintuc_phim.id_tintuc_phim }, tintuc_phim);
        }

        // DELETE: api/tintuc_phim/5
        [ResponseType(typeof(tintuc_phim))]
        public IHttpActionResult Deletetintuc_phim(int id)
        {
            tintuc_phim tintuc_phim = db.tintuc_phim.Find(id);
            if (tintuc_phim == null)
            {
                return NotFound();
            }

            db.tintuc_phim.Remove(tintuc_phim);
            db.SaveChanges();

            return Ok(tintuc_phim);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool tintuc_phimExists(int id)
        {
            return db.tintuc_phim.Count(e => e.id_tintuc_phim == id) > 0;
        }
    }
}