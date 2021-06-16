using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class add_tapphim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_phim();

                // Lấy parameter từ Url: MaSP
                if (Request.QueryString["id"] == null)
                {
                    // Không có mã => thêm mới
                    Button1.Visible = true;
                }
                else
                {
                    // Có mã => sửa
                    int id_tapphim = int.Parse(Request.QueryString["id"].ToString());
                    websiteEntities db = new websiteEntities();
                    tapphim obj = db.tapphim.FirstOrDefault(x => x.id_tapphim == id_tapphim);
                    tapso.Text = obj.tapso.ToString();
                    
                    Button2.Visible = true;
                }


            }
        }

        protected void Button2_Command(object sender, CommandEventArgs e)
        {
            int a = int.Parse(Request.QueryString["id"].ToString());
            websiteEntities db = new websiteEntities();
            tapphim obj = db.tapphim.FirstOrDefault(x => x.id_tapphim == a);
            if (obj != null)
            {

                if (ListBox1.SelectedItem != null)
                {
                    obj.id_phim = int.Parse(ListBox1.SelectedValue);
                }

                obj.tapso = int.Parse(tapso.Text);
                obj.ngay_update = DateTime.Now;
            }

            db.SaveChanges();
            Response.Redirect("table_tapphim.aspx");

        }
        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            websiteEntities db = new websiteEntities();
            tapphim obj = new tapphim();
            
            if (ListBox1.SelectedValue != "") {
                obj.tapso = int.Parse(tapso.Text);
                obj.ngay_update = DateTime.Now;
                obj.id_phim = int.Parse(ListBox1.SelectedValue);
                db.tapphim.Add(obj);
                db.SaveChanges();
                Response.Redirect("table_tapphim.aspx");
            }
            else
            {
                 lbError.Text = " bạn chưa nhập phim";
            }

            
        }
        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("table_tapphim.aspx");

        }
        public void get_phim()
        {
            websiteEntities db = new websiteEntities();
            List<phim> obj = db.phim.OrderByDescending(x => x.id_phim).ToList();
            foreach (phim i in obj)
            {
                ListItem data = new ListItem();
                data.Text = i.ten_phim;
                data.Value = i.id_phim.ToString();
                ListBox1.Items.Add(data);
            }
        }
    }
}