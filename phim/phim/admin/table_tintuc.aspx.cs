using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class table_tintuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
                TextBox1.Attributes.Add("onkeypress", "return clickButton(event,'" + btsearch.ClientID + "')");
            }
        }
        public string getimage(int id)
        {
            websiteEntities db = new websiteEntities();
            string a = db.tintuc_phim.FirstOrDefault(x => x.id_tintuc_phim == id).anh_daidien;
            return a;
        }

        protected void Button3_Command(object sender, CommandEventArgs e)
        {
            int s = int.Parse(e.CommandArgument.ToString());
            websiteEntities db = new websiteEntities();
            tintuc_phim p = db.tintuc_phim.FirstOrDefault(x => x.id_tintuc_phim == s);
            db.tintuc_phim.Remove(p);
            db.SaveChanges();
            Response.Redirect("table_tintuc.aspx");
        }

        public void getData()
        {
            websiteEntities db = new websiteEntities();
            List<tintuc_phim> sp = db.tintuc_phim.OrderByDescending(x => x.id_tintuc_phim).ToList();

            gr1.DataSource = sp;
            gr1.DataBind();
        }

        protected void Button4_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("add_tintuc.aspx");
        }

        protected void Button1_Command1(object sender, CommandEventArgs e)
        {

        }

    

        protected void btsearch_Click(object sender, EventArgs e)
        {
            websiteEntities db = new websiteEntities();
            if(TextBox1.Text != ""){
                List<tintuc_phim> sp = db.tintuc_phim.Where(x => x.tieu_de == TextBox1.Text).ToList();
                gr1.DataSource = sp;
                
            }
            else
            {
                List<tintuc_phim> sp = db.tintuc_phim.OrderByDescending(x => x.id_tintuc_phim).ToList();
                gr1.DataSource = sp;
            }
            gr1.DataBind();

        }
    }
}