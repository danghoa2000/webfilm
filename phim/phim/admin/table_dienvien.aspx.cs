using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class table_dienvien : System.Web.UI.Page
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
            string a = db.Dienvien.FirstOrDefault(x => x.id_Dienvien == maphim).img;
            return a;
        }

        protected void Button3_Command(object sender, CommandEventArgs e)
        {
            int s = int.Parse(e.CommandArgument.ToString());
            websiteEntities db = new websiteEntities();
            List<ctDienvien> q = db.ctDienvien.OrderByDescending(x => x.id_dienvien == s).ToList();
            foreach (ctDienvien i in q) 
            {
                db.ctDienvien.Remove(i);
            }


            Dienvien p = db.Dienvien.FirstOrDefault(x => x.id_Dienvien == s);
            db.Dienvien.Remove(p);
            db.SaveChanges();
            Response.Redirect("table_dienvien.aspx");
        }
        public void getData()
        {
            websiteEntities db = new websiteEntities();
            List<Dienvien> sp = db.Dienvien.OrderByDescending(x => x.id_Dienvien).ToList();

            gr1.DataSource = sp;
            gr1.DataBind();
        }
        protected void Button4_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("add_dienvien.aspx");
        }

        protected void btsearch_Click(object sender, EventArgs e)
        {
            websiteEntities db = new websiteEntities();
            if (TextBox1.Text != "")
            {
                List<Dienvien> sp = db.Dienvien.Where(x => x.ten == TextBox1.Text).ToList();
                gr1.DataSource = sp;

            }
            else
            {
                List<Dienvien> sp = db.Dienvien.OrderByDescending(x => x.id_Dienvien).ToList();
                gr1.DataSource = sp;
            }
            gr1.DataBind();

        }
    }
}