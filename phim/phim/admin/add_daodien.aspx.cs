using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class add_daodien : System.Web.UI.Page
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
                    daodien obj = db.daodien.FirstOrDefault(x => x.id_daodien == id_phim);
                    ten.Text = obj.ten;

                    Button2.Visible = true;
                }


            }
        }
            protected void Button2_Command(object sender, CommandEventArgs e)
            {
                int a = int.Parse(Request.QueryString["id"].ToString());
                websiteEntities db = new websiteEntities();
                daodien obj = db.daodien.FirstOrDefault(x => x.id_daodien == a);
                if (obj != null)
                {
                    obj.ten = ten.Text;
                if (image.HasFiles)
                {
                    string filename = "";
                    string ext = Path.GetFileName(image.FileName);
                    ext = ext.Split('.')[ext.Split('.').Length - 1];
                    filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
                    image.SaveAs(Server.MapPath("../admin/image/") + filename);
                    obj.img = filename;

                }
            }
                db.SaveChanges();
                Response.Redirect("table_daodien.aspx");

            }
        
            protected void Button1_Command(object sender, CommandEventArgs e)
            {
                string filename = "";
                // Lưu file ảnh về server trước
                if (image.HasFile)
                {
                    string ext = Path.GetFileName(image.FileName);
                    ext = ext.Split('.')[ext.Split('.').Length - 1];
                    // Tự sinh tên file đảm bảo tính duy nhất => Dùng thời gian upload file để sinh tên file
                    filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
                    image.SaveAs(Server.MapPath("../admin/image/") + filename);
                }
                websiteEntities db = new websiteEntities();
                daodien obj = new daodien();
                obj.ten = ten.Text;
                obj.img = filename;
                db.daodien.Add(obj);
                db.SaveChanges();

                Response.Redirect("table_daodien.aspx");
            }

            protected void LinkButton1_Command(object sender, CommandEventArgs e)
            {
                Response.Redirect("table_daodien.aspx");

            }
        }
    }
