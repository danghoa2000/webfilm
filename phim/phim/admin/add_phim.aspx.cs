using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class add_phim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            get_dienvien();
            get_daodien();
            get_theloai();
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
                        phim obj = db.phim.FirstOrDefault(x => x.id_phim == id_phim);
                        imdb.Text = obj.imdb.ToString();
                        tenphim.Text = obj.ten_phim;
                        trailer.Text = obj.trailer;
                        mota.Text = obj.mota;
                        Button2.Visible = true;
                    }
                
               
            }
        }

        protected void Button2_Command(object sender, CommandEventArgs e)
        {
            int id_phim = int.Parse(Request.QueryString["id"].ToString());
            int a = int.Parse(Request.QueryString["id"].ToString());
            websiteEntities db = new websiteEntities();
            phim obj = db.phim.FirstOrDefault(x => x.id_phim == a);
            if (obj != null)
            {
                obj.ten_phim = tenphim.Text;
                obj.mota = mota.Text;
                obj.trailer = trailer.Text;
                if(imdb.Text != "")
                {
                    obj.imdb = int.Parse(imdb.Text);
                }
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
            if (ListBox1.GetSelectedIndices() != null)
            {
                List<ctDienvien> q = db.ctDienvien.Where(x => x.id_phim == id_phim).ToList();
                foreach (ctDienvien i in q)
                {
                    db.ctDienvien.Remove(i);
                }
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    ctDienvien obj2 = new ctDienvien();
                    obj2.id_dienvien = int.Parse(ListBox1.Items[i].Value);
                    obj2.id_phim = obj.id_phim;
                    db.ctDienvien.Add(obj2);
                }
            }
            if (ListBox2.GetSelectedIndices() != null)
            {
                List<ctDaodien> q = db.ctDaodien.Where(x => x.id_phim == id_phim).ToList();
                foreach (ctDaodien i in q)
                {
                    db.ctDaodien.Remove(i);
                }
                foreach (int i in ListBox2.GetSelectedIndices())
                {
                    ctDaodien obj2 = new ctDaodien();
                    obj2.id_daodien = int.Parse(ListBox2.Items[i].Value);
                    obj2.id_phim = obj.id_phim;
                    db.ctDaodien.Add(obj2);
                }
            }
            if (ListBox3.GetSelectedIndices() != null)
            {
                List<ctTheloai> q = db.ctTheloai.Where(x => x.id_phim == id_phim).ToList();
                foreach (ctTheloai i in q)
                {
                    db.ctTheloai.Remove(i);
                }
                foreach (int i in ListBox3.GetSelectedIndices())
                {
                    ctTheloai obj2 = new ctTheloai();
                    obj2.id_theLoai = int.Parse(ListBox3.Items[i].Value);
                    obj2.id_phim = obj.id_phim;
                    db.ctTheloai.Add(obj2);
                }
            }

            db.SaveChanges();
            Response.Redirect("table_phim.aspx");

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
                phim obj = new phim();
                obj.ten_phim = tenphim.Text;
                obj.trailer = trailer.Text;
                obj.mota = mota.Text;
                obj.imdb = int.Parse(imdb.Text);
                obj.anh_daidien = filename;
                
            db.phim.Add(obj);
            
            db.SaveChanges();
            foreach (int i in ListBox1.GetSelectedIndices())
            {
                ctDienvien obj2 = new ctDienvien();
                obj2.id_dienvien = int.Parse(ListBox1.Items[i].Value);
                obj2.id_phim = obj.id_phim;
                db.ctDienvien.Add(obj2);

            }
            foreach (int i in ListBox2.GetSelectedIndices())
            {
                ctDaodien obj2 = new ctDaodien();
                obj2.id_daodien = int.Parse(ListBox2.Items[i].Value);
                obj2.id_phim = obj.id_phim;
                db.ctDaodien.Add(obj2);
            }
            foreach (int i in ListBox3.GetSelectedIndices())
            {
                ctTheloai obj2 = new ctTheloai();
                obj2.id_theLoai = int.Parse(ListBox3.Items[i].Value);
                obj2.id_phim = obj.id_phim;
                db.ctTheloai.Add(obj2);
            }
            db.SaveChanges();
            Response.Redirect("table_phim.aspx");
            }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("table_phim.aspx");
        }

        public void get_dienvien()
        {
            websiteEntities db = new websiteEntities();
            List<Dienvien> obj = db.Dienvien.OrderByDescending(x => x.id_Dienvien).ToList();
            foreach (Dienvien i in obj)
            {
                ListItem data = new ListItem();
                data.Text = i.ten;
                data.Value = i.id_Dienvien.ToString();
                ListBox1.Items.Add(data);
            }
        }
        public void get_daodien()
        {
            websiteEntities db = new websiteEntities();
            List<daodien> obj = db.daodien.OrderByDescending(x => x.id_daodien).ToList();
            foreach (daodien i in obj)
            {
                ListItem data = new ListItem();
                data.Text = i.ten;
                data.Value = i.id_daodien.ToString();
                ListBox2.Items.Add(data);
            }
        }
        public void get_theloai()
        {
            websiteEntities db = new websiteEntities();
            List<theloai_phim> obj = db.theloai_phim.OrderByDescending(x => x.id_theloai).ToList();
            foreach (theloai_phim i in obj)
            {
                ListItem data = new ListItem();
                data.Text = i.ten_theloai_phim;
                data.Value = i.id_theloai.ToString();
                ListBox3.Items.Add(data);
            }
        }
    }
    }
