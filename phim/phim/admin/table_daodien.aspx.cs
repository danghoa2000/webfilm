using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim
{
    public partial class table_daodien : System.Web.UI.Page
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
            string a = db.daodien.FirstOrDefault(x => x.id_daodien == maphim).img;
            return a;
        }
        protected void Button3_Command(object sender, CommandEventArgs e)
        {
            int s = int.Parse(e.CommandArgument.ToString());
            websiteEntities db = new websiteEntities();
            List<ctDaodien> q = db.ctDaodien.OrderByDescending(x => x.id_daodien == s).ToList();

            foreach (ctDaodien i in q)
            {
                db.ctDaodien.Remove(i);
            }


            daodien p = db.daodien.FirstOrDefault(x => x.id_daodien == s);
            db.daodien.Remove(p);
            db.SaveChanges();
            Response.Redirect("table_daodien.aspx");
        }
        public void getData()
        {
            websiteEntities db = new websiteEntities();
            List<daodien> sp = db.daodien.OrderByDescending(x => x.id_daodien).ToList();

            gr1.DataSource = sp;
            gr1.DataBind();
        }
        protected void Button4_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("add_daodien.aspx");
        }

        protected void btsearch_Click(object sender, EventArgs e)
        {
            websiteEntities db = new websiteEntities();
            if (TextBox1.Text != "")
            {
                List<daodien> sp = db.daodien.Where(x => x.ten == TextBox1.Text).ToList();
                gr1.DataSource = sp;

            }
            else
            {
                List<daodien> sp = db.daodien.OrderByDescending(x => x.id_daodien).ToList();
                gr1.DataSource = sp;
            }
            gr1.DataBind();

        }
    }
}