using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.client
{
    public partial class gio_phim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
            }
        }
        public string getimage(int maphim, int i)
        {
            websiteEntities db = new websiteEntities();
            string a = "";
            if (i == 1)
            {
                a = db.phim.FirstOrDefault(x => x.id_phim == maphim).anh_daidien;
            }
            else
            {
                a = db.Dienvien.FirstOrDefault(x => x.id_Dienvien == maphim).img;

            }
            return a;
        }

        public void getdata()
        {
            websiteEntities db = new websiteEntities();
            List<phim> p = null;
            

                if (Request.QueryString["id"] != null)
                {
                   
                        int a = int.Parse(Request.QueryString["id"].ToString());
                        p = db.phim.Where(x => x.ctlogin.Count() > 0).Where(x => x.ctlogin.Where(y => y.id_login == a).FirstOrDefault().id_login == a).ToList();

                    
                }
            
            movie.DataSource = p;
            movie.DataBind();

            List<Dienvien> p3 = db.Dienvien.OrderByDescending(x => x.id_Dienvien).OrderBy(t => Guid.NewGuid()).Take(5).ToList();
            Celebrities.DataSource = p3;
            Celebrities.DataBind();
        }
        protected void add_Command(object sender, CommandEventArgs e)
        {
            if (Session["id"] != null)
            {
                int a = int.Parse(Session["id"].ToString());
                int b = int.Parse(e.CommandArgument.ToString());
                websiteEntities db = new websiteEntities();
                ctlogin p = db.ctlogin.FirstOrDefault(x => x.id_login == a & x.id_phim == b);
                if (p != null)
                {
                    db.ctlogin.Remove(p);
                    db.SaveChanges();
                    Response.Redirect("gio_phim.aspx?id=" + a);
                }

            }
        }
    }
}