using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class add_theloai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Lấy parameter từ Url: MaSP
                if (Request.QueryString["id"] == null)
                {
                    // Không có mã => thêm mới
                    Button1.Visible = true;
                }
                else
                {
                    // Có mã => sửa
                    int id_phim = int.Parse(Request.QueryString["id"].ToString());
                    websiteEntities db = new websiteEntities();
                    theloai_phim obj = db.theloai_phim.FirstOrDefault(x => x.id_theloai == id_phim);
                    ten.Text = obj.ten_theloai_phim;

                    Button2.Visible = true;
                }


            }
        }
            protected void Button2_Command(object sender, CommandEventArgs e)
            {
                int a = int.Parse(Request.QueryString["id"].ToString());
                websiteEntities db = new websiteEntities();
                theloai_phim obj = db.theloai_phim.FirstOrDefault(x => x.id_theloai == a);
                if (obj != null)
                {
                    obj.ten_theloai_phim = ten.Text;

                }
                db.SaveChanges();
                Response.Redirect("table_theloai.aspx");

            }

            protected void Button1_Command(object sender, CommandEventArgs e)
            {
                websiteEntities db = new websiteEntities();
                theloai_phim obj = new theloai_phim();
                obj.ten_theloai_phim = ten.Text;
                db.theloai_phim.Add(obj);
                db.SaveChanges();

                Response.Redirect("table_theloai.aspx");
            }

            protected void LinkButton1_Command(object sender, CommandEventArgs e)
            {
                Response.Redirect("table_theloai.aspx");

            }
        }
    }
