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
    public class ctDienviensController : ApiController
    {
        private websiteEntities db = new websiteEntities();

        // GET: api/ctDienviens
        public IQueryable<ctDienvien> GetctDienvien()
        {
            return db.ctDienvien;
        }

        // GET: api/ctDienviens/5
        [ResponseType(typeof(ctDienvien))]
        public IHttpActionResult GetctDienvien(int id)
        {
            ctDienvien ctDienvien = db.ctDienvien.Find(id);
            if (ctDienvien == null)
            {
                return NotFound();
            }

            return Ok(ctDienvien);
        }

        // PUT: api/ctDienviens/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutctDienvien(int id, ctDienvien ctDienvien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != ctDienvien.id_ctDienvien)
            {
                return BadRequest();
            }

            db.Entry(ctDienvien).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ctDienvienExists(id))
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

        // POST: api/ctDienviens
        [ResponseType(typeof(ctDienvien))]
        public IHttpActionResult PostctDienvien(ctDienvien ctDienvien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ctDienvien.Add(ctDienvien);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = ctDienvien.id_ctDienvien }, ctDienvien);
        }

        // DELETE: api/ctDienviens/5
        [ResponseType(typeof(ctDienvien))]
        public IHttpActionResult DeletectDienvien(int id)
        {
            ctDienvien ctDienvien = db.ctDienvien.Find(id);
            if (ctDienvien == null)
            {
                return NotFound();
            }

            db.ctDienvien.Remove(ctDienvien);
            db.SaveChanges();

            return Ok(ctDienvien);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ctDienvienExists(int id)
        {
            return db.ctDienvien.Count(e => e.id_ctDienvien == id) > 0;
        }
    }
}