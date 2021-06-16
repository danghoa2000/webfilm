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
    public class phimsController : ApiController
    {
        private websiteEntities db = new websiteEntities();

        // GET: api/phims
        public IQueryable<phim> Getphim()
        {
            return db.phim;
        }

        // GET: api/phims/5
        [ResponseType(typeof(phim))]
        public IHttpActionResult Getphim(int id)
        {
            phim phim = db.phim.Find(id);
            if (phim == null)
            {
                return NotFound();
            }

            return Ok(phim);
        }

        // PUT: api/phims/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putphim(int id, phim phim)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != phim.id_phim)
            {
                return BadRequest();
            }

            db.Entry(phim).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!phimExists(id))
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

        // POST: api/phims
        [ResponseType(typeof(phim))]
        public IHttpActionResult Postphim(phim phim)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.phim.Add(phim);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = phim.id_phim }, phim);
        }

        // DELETE: api/phims/5
        [ResponseType(typeof(phim))]
        public IHttpActionResult Deletephim(int id)
        {
            phim phim = db.phim.Find(id);
            if (phim == null)
            {
                return NotFound();
            }

            db.phim.Remove(phim);
            db.SaveChanges();

            return Ok(phim);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool phimExists(int id)
        {
            return db.phim.Count(e => e.id_phim == id) > 0;
        }
    }
}