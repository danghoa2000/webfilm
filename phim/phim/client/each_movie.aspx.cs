using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.client
{
    public partial class each_movie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
            }
        }

        
        public void getdata()
        {

            websiteEntities db = new websiteEntities();
            List<phim> p = null;
            List<Dienvien> p1 = null;
            if (Request.QueryString["value"] != null)
            {
                int a = int.Parse(Request.QueryString["value"].ToString());
                p = db.phim.Where(x => x.id_phim == a).ToList();

                p1 = db.Dienvien.Where(x => x.ctDienvien.Count() > 0).Where(x => x.ctDienvien.Where( y => y.id_phim == a).FirstOrDefault().id_phim == a ).ToList();
            }
            cast.DataSource = p1;
            cast.DataBind();
            phim.DataSource = p;
            phim.DataBind();
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