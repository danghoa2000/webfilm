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
    public class commentsController : ApiController
    {
        private websiteEntities db = new websiteEntities();

        // GET: api/comments
        public IQueryable<comment> Getcomment()
        {
            return db.comment;
        }

        // GET: api/comments/5
        [ResponseType(typeof(comment))]
        public IHttpActionResult Getcomment(int id)
        {
            IQueryable<comment> comment = db.comment.Where(x => x.id_phim == id);
            if (comment == null)
            {
                return NotFound();
            }

            return Ok(comment);
        }

        // PUT: api/comments/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putcomment(int id, comment comment)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != comment.id_comment)
            {
                return BadRequest();
            }

            db.Entry(comment).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!commentExists(id))
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

        // POST: api/comments
        [ResponseType(typeof(comment))]
        public IHttpActionResult Postcomment(comment comment)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.comment.Add(comment);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = comment.id_comment }, comment);
        }

        // DELETE: api/comments/5
        [ResponseType(typeof(comment))]
        public IHttpActionResult Deletecomment(int id)
        {
            comment comment = db.comment.Find(id);
            if (comment == null)
            {
                return NotFound();
            }

            db.comment.Remove(comment);
            db.SaveChanges();

            return Ok(comment);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool commentExists(int id)
        {
            return db.comment.Count(e => e.id_comment == id) > 0;
        }
    }
}