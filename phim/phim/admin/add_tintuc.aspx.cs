using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class add_tintuc : System.Web.UI.Page
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
                    int id = int.Parse(Request.QueryString["id"].ToString());
                    websiteEntities db = new websiteEntities();
                    tintuc_phim obj = db.tintuc_phim.FirstOrDefault(x => x.id_tintuc_phim == id);
                    tieude.Text = obj.tieu_de;
                    tomtat.Text = obj.tom_tat_tin;
                    noidung.Text = obj.noidung;
                    Button2.Visible = true;
                }
            }
        }
        protected void Button2_Command(object sender, CommandEventArgs e)
        {
                int a = int.Parse(Request.QueryString["id"].ToString());
                websiteEntities db = new websiteEntities();
                tintuc_phim obj = db.tintuc_phim.FirstOrDefault(x => x.id_tintuc_phim == a);
                if (obj != null)
                {
                    obj.tieu_de = tieude.Text;
                    obj.tom_tat_tin = tomtat.Text;
                    obj.noidung = noidung.Text;
                    if (image.HasFiles)
                    {
                        string filename = "";
                        string ext = Path.GetFileName(image.FileName);
                        ext = ext.Split('.')[ext.Split('.').Length - 1];
                        filename = DateTime.Now.ToString("yyyyMMddhhmmssffff") + "." + ext;
                        image.SaveAs(Server.MapPath("image/") + filename);
                        obj.anh_daidien = filename;

                    }
                }
                db.SaveChanges();
                Response.Redirect("table_tintuc.aspx");

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
                    image.SaveAs(Server.MapPath("image/") + filename);
                }

                websiteEntities db = new websiteEntities();
                tintuc_phim obj = new tintuc_phim();
                obj.tieu_de = tieude.Text;
                obj.tom_tat_tin = tomtat.Text;
                obj.noidung = noidung.Text;
                obj.anh_daidien = filename;
                db.tintuc_phim.Add(obj);
                db.SaveChanges();

                Response.Redirect("table_tintuc.aspx");
        }

            protected void LinkButton1_Command(object sender, CommandEventArgs e)
            {
                Response.Redirect("table_tintuc.aspx");

            }
        }
    }
