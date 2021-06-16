using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class account : System.Web.UI.Page
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

            List<ctlogin> q = db.ctlogin.OrderByDescending(x => x.id_ctlogin == s).ToList();


            foreach (ctlogin i in q)
            {
                db.ctlogin.Remove(i);
            }

            login p = db.login.FirstOrDefault(x => x.id_login == s);
            db.login.Remove(p);
            db.SaveChanges();
            Response.Redirect("account.aspx");
        }
        public void getData()
        {
            websiteEntities db = new websiteEntities();
            List<login> sp = db.login.OrderByDescending(x => x.taikhoan).Where(x => x.role == 0).ToList();

            gr1.DataSource = sp;
            gr1.DataBind();
        }
        protected void btsearch_Click(object sender, EventArgs e)
        {
            websiteEntities db = new websiteEntities();
            if (TextBox1.Text != "")
            {
                List<login> sp = db.login.Where(x => x.ten == TextBox1.Text).ToList();
                gr1.DataSource = sp;

            }
            else
            {
                List<login> sp = db.login.OrderByDescending(x => x.taikhoan).ToList();
                gr1.DataSource = sp;
            }
            gr1.DataBind();

        }
    }
}