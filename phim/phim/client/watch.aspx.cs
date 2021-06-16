using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim
{
    public partial class watch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getmovie();
                gettapphim();
                if (Request.QueryString["id"] != null)
                {
                    label.Text = Request.QueryString["id"].ToString();
                }
            }
               if(Request.QueryString["id"] != null) { 
            label.Text = Request.QueryString["id"].ToString();
            }
        }
        public void getmovie()
        {
            websiteEntities db = new websiteEntities();
            List<tapphim> p = null;
            if (Request.QueryString["id"] != null & Request.QueryString["value"] != null)
            {
                int a = int.Parse(Request.QueryString["id"].ToString());
                int b = int.Parse(Request.QueryString["value"].ToString());
                 p = db.tapphim.Where(x => x.id_phim == a && x.tapso == b).ToList();
            }
            movie.DataSource = p;
            movie.DataBind();
        }
        public void gettapphim()
        {
            websiteEntities db = new websiteEntities();
            List<tapphim> p = null;
            if (Request.QueryString["id"] != null)
            {
                int a = int.Parse(Request.QueryString["id"].ToString());
                 p = db.tapphim.Where(x => x.id_phim == a).ToList();
            }
            
            tapphim.DataSource = p;
            tapphim.DataBind();
        }
        protected void add_Command(object sender, CommandEventArgs e)
        {
            if (Session["id"] != null)
            {
                int a = int.Parse(Session["id"].ToString());
                int b = int.Parse(e.CommandArgument.ToString());
                websiteEntities db = new websiteEntities();
                ctlogin p = db.ctlogin.FirstOrDefault(x => x.id_login == a && x.id_phim == b);
                if (p == null)
                {
                    ctlogin obj = new ctlogin();
                    obj.id_login = a;
                    obj.id_phim = b;
                    db.ctlogin.Add(obj);
                    db.SaveChanges();
                }
            }
        }

    }
}