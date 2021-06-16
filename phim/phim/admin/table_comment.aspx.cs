using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class table_comment : System.Web.UI.Page
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

            comment p = db.comment.FirstOrDefault(x => x.id_comment == s);
            db.comment.Remove(p);
            db.SaveChanges();
            Response.Redirect("table_comment.aspx");
        }

        public void getData()
        {
            websiteEntities db = new websiteEntities();
            List<comment> p = db.comment.OrderByDescending(x => x.id_comment).ToList();
            gr1.DataSource = p;
            gr1.DataBind();
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
        public string get_phim(int id_comment)
        {
            websiteEntities db = new websiteEntities();
            //string q = db.phim.Where(x => x.comment.Where(y => y.id_comment == id_comment).FirstOrDefault().id_phim);
            string q = db.phim.FirstOrDefault(x => x.id_phim == id_comment).ten_phim;
            return q;
        }
    }
}