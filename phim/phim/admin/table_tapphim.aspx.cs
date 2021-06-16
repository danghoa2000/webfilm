using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim
{
    public partial class table_tapphim1 : System.Web.UI.Page
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

            tapphim p = db.tapphim.FirstOrDefault(x => x.id_tapphim == s);
            db.tapphim.Remove(p);
            db.SaveChanges();
            Response.Redirect("table_tapphim.aspx");
        }
        public void getData()
        {
            websiteEntities db = new websiteEntities();
            List<tapphim> p = db.tapphim.OrderByDescending(x => x.id_tapphim).ToList();

            gr1.DataSource = p;
            gr1.DataBind();
        }
        protected void btsearch_Click(object sender, EventArgs e)
        {
            websiteEntities db = new websiteEntities();
            int p = 0;
            if (TextBox1.Text != "")
            {
                if(db.phim.FirstOrDefault(x => x.ten_phim == TextBox1.Text) != null)
                {
                    p = db.phim.FirstOrDefault(x => x.ten_phim == TextBox1.Text).id_phim;
                }
                 
                List<tapphim> sp = db.tapphim.Where(x => x.id_phim == p).ToList();
                gr1.DataSource = sp;

            }
            else
            {
                List<tapphim> sp = db.tapphim.OrderByDescending(x => x.id_tapphim).ToList();
                gr1.DataSource = sp;
            }
            gr1.DataBind();

        }
      
        protected void Button4_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("add_tapphim.aspx");
        }
        public string get_phim(int id_phim)
        {
            websiteEntities db = new websiteEntities();
            List<phim> q = db.phim.Where(x => x.id_phim == id_phim).ToList();
            string s = "";
            foreach (phim i in q)
            {
                s += db.phim.FirstOrDefault(x => x.id_phim == i.id_phim).ten_phim;
            }
            return s;
        }
    }
}