using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class table_theloai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
                TextBox1.Attributes.Add("onkeypress", "return clickButton(event,'" + btsearch.ClientID + "')");
            }
        }
        protected void Button3_Command(object sender, CommandEventArgs e)
        {
            int s = int.Parse(e.CommandArgument.ToString());
            websiteEntities db = new websiteEntities();
            List<ctTheloai> q = db.ctTheloai.OrderByDescending(x => x.id_theLoai == s).ToList();


            foreach (ctTheloai i in q)
            {
                db.ctTheloai.Remove(i);
            }


            theloai_phim p = db.theloai_phim.FirstOrDefault(x => x.id_theloai == s);
            db.theloai_phim.Remove(p);
            db.SaveChanges();
            Response.Redirect("table_theloai.aspx");
        }
        public void getData()
        {
            websiteEntities db = new websiteEntities();
            List<theloai_phim> sp = db.theloai_phim.OrderByDescending(x => x.id_theloai).ToList();

            gr1.DataSource = sp;
            gr1.DataBind();
        }
        protected void Button4_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("add_theloai.aspx");
        }

        protected void btsearch_Click(object sender, EventArgs e)
        {
            websiteEntities db = new websiteEntities();
            if (TextBox1.Text != "")
            {
                List<theloai_phim> sp = db.theloai_phim.Where(x => x.ten_theloai_phim == TextBox1.Text).ToList();
                gr1.DataSource = sp;

            }
            else
            {
                List<theloai_phim> sp = db.theloai_phim.OrderByDescending(x => x.id_theloai).ToList();
                gr1.DataSource = sp;
            }
            gr1.DataBind();

        }
    }
}