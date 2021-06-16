using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class table_phim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
                TextBox1.Attributes.Add("onkeypress", "return clickButton(event,'" + btsearch.ClientID + "')");
            }
        }

        public string getimage(int maphim)
        {
            websiteEntities db = new websiteEntities();
            string a = db.phim.FirstOrDefault(x => x.id_phim == maphim).anh_daidien;
            return a;
        }

    

        protected void Button3_Command(object sender, CommandEventArgs e)
        {
            int s = int.Parse(e.CommandArgument.ToString());
            websiteEntities db = new websiteEntities();
            

            List<ctDaodien> q1 = db.ctDaodien.Where(x => x.id_phim == s).ToList();
            List<ctDienvien> q2 = db.ctDienvien.Where(x => x.id_phim == s).ToList();
            List<ctTheloai> q3 = db.ctTheloai.Where(x => x.id_phim == s).ToList();
            List<tapphim> q4 = db.tapphim.Where(x => x.id_phim == s).ToList();
            List<comment> q5 = db.comment.Where(x => x.id_phim == s).ToList();

            foreach (ctDaodien i in q1)
            {
                db.ctDaodien.Remove(i);
            }
            foreach (ctDienvien i in q2)
            {
                db.ctDienvien.Remove(i);
            }
            foreach (ctTheloai i in q3)
            {
                db.ctTheloai.Remove(i);
            }
            foreach (tapphim i in q4)
            {
                db.tapphim.Remove(i);
            }
            foreach (comment i in q5)
            {
                db.comment.Remove(i);
            }
            phim p = db.phim.FirstOrDefault(x => x.id_phim == s);
            db.phim.Remove(p);
            db.SaveChanges();
            Response.Redirect("table_phim.aspx");
        }

        public void getData()
        {
            websiteEntities db = new websiteEntities();
            List<phim> p = db.phim.OrderByDescending(x => x.id_phim).ToList();

            gr1.DataSource = p;
            gr1.DataBind();
        }

        protected void Button4_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("add_phim.aspx");
        }

        protected void btsearch_Click(object sender, EventArgs e)
        {
            websiteEntities db = new websiteEntities();
            if (TextBox1.Text != "")
            {
                List<phim> sp = db.phim.Where(x => x.ten_phim == TextBox1.Text).ToList();

                gr1.DataSource = sp;

            }
            else
            {
                List<phim> sp = db.phim.OrderByDescending(x => x.id_phim).ToList();
                gr1.DataSource = sp;
            }
            gr1.DataBind();

        }

        public string get_dienvien(int id_phim)
        {
            websiteEntities db = new websiteEntities();
            List<ctDienvien> q = db.ctDienvien.Where(x => x.id_phim == id_phim ).ToList();
            string s = "";
            foreach (ctDienvien i in q)
            {
                s += db.Dienvien.FirstOrDefault(x => x.id_Dienvien == i.id_dienvien).ten + " , ";
            }
            return s;
        }
        public string get_daodien(int id_phim)
        {
            websiteEntities db = new websiteEntities();
            List<ctDaodien> q = db.ctDaodien.Where(x => x.id_phim == id_phim).ToList();
            string s = "";
            foreach (ctDaodien i in q)
            {
                 s += db.daodien.FirstOrDefault(x => x.id_daodien == i.id_daodien).ten + " , " ;
            }
            return s;
        }
        public string get_theloai(int id_phim)
        {
            websiteEntities db = new websiteEntities();
            List<ctTheloai> q = db.ctTheloai.Where(x => x.id_phim == id_phim).ToList();
            string s = "";
            foreach (ctTheloai i in q)
            {
                 s += db.theloai_phim.FirstOrDefault(x => x.id_theloai == i.id_theLoai).ten_theloai_phim + " , ";
            }
            return s;
        }

    }
}


