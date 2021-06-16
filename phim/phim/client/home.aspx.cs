using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace phim.client
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getdata();
            }

        }

        public string getimage(int maphim,int i)
        {
            websiteEntities db = new websiteEntities();
            string a = "";
            if(i == 1)
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
            List<phim> p = db.phim.OrderByDescending(x => x.id_phim ).OrderBy(t => Guid.NewGuid()).Take(8).ToList();
            itemSlider.DataSource = p;
            itemSlider.DataBind();

            List<phim> p1 = db.phim.Where(x => x.tapphim.Count() > 0).OrderByDescending(x => x.tapphim.OrderByDescending(y => y.ngay_update).FirstOrDefault().ngay_update).Take(8).ToList();
            newmovie.DataSource = p1;
            newmovie.DataBind();

            List<phim> p2 = db.phim.OrderByDescending(x => x.imdb).Take(8).ToList();
            highimdb.DataSource = p2;
            highimdb.DataBind();

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