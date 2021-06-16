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
    public class DienviensController : ApiController
    {
        private websiteEntities db = new websiteEntities();

        // GET: api/Dienviens
        public IQueryable<Dienvien> GetDienvien()
        {
            return db.Dienvien;
        }

        // GET: api/Dienviens/5
        [ResponseType(typeof(Dienvien))]
        public IHttpActionResult GetDienvien(int id)
        {
            Dienvien dienvien = db.Dienvien.Find(id);
            if (dienvien == null)
            {
                return NotFound();
            }

            return Ok(dienvien);
        }

        // PUT: api/Dienviens/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutDienvien(int id, Dienvien dienvien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != dienvien.id_Dienvien)
            {
                return BadRequest();
            }

            db.Entry(dienvien).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DienvienExists(id))
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

        // POST: api/Dienviens
        [ResponseType(typeof(Dienvien))]
        public IHttpActionResult PostDienvien(Dienvien dienvien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Dienvien.Add(dienvien);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = dienvien.id_Dienvien }, dienvien);
        }

        // DELETE: api/Dienviens/5
        [ResponseType(typeof(Dienvien))]
        public IHttpActionResult DeleteDienvien(int id)
        {
            Dienvien dienvien = db.Dienvien.Find(id);
            if (dienvien == null)
            {
                return NotFound();
            }

            db.Dienvien.Remove(dienvien);
            db.SaveChanges();

            return Ok(dienvien);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool DienvienExists(int id)
        {
            return db.Dienvien.Count(e => e.id_Dienvien == id) > 0;
        }
    }
}