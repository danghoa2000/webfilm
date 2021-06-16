using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.client
{
    public partial class client : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                search.Attributes.Add("onkeypress", "return clickButton(event,'" + btsearch.ClientID + "')");
                getdata();
                if (Session["dangnhap"] !=  null)
                {
                    with_login();
                }
                else
                {
                    log_out.Visible = false;
                    div_account.Visible = false;
                    tuphim.Visible = false;
                }
            }
        }

        public int getid()
        {
            return int.Parse(Session["id"].ToString());
        }

        public void getdata()
        {
            websiteEntities db = new websiteEntities();
            List<theloai_phim> p1 = db.theloai_phim.OrderByDescending(x => x.id_theloai).ToList();
   

            ListView1.DataSource = p1;
            ListView1.DataBind();
            
        }

        protected void login_Command(object sender, CommandEventArgs e)
        {
            //Tạo MD5 
            MD5 mh = MD5.Create();
            //Chuyển kiểu chuổi thành kiểu byte
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(matkhau.Text);
            //mã hóa chuỗi đã chuyển
            byte[] hash = mh.ComputeHash(inputBytes);
            //tạo đối tượng StringBuilder (làm việc với kiểu dữ liệu lớn)
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }


            string username = taikhoan.Text;
            string password = sb.ToString();

            websiteEntities db = new websiteEntities();
            var us = db.login.FirstOrDefault(x => x.taikhoan == username && x.matkhau == password && x.role == 0);


            if (us != null)
            {
                //lbError.Text = "Đăng nhập thành công!";
                Session["dangnhap"] = us.ten.ToString();
                Session["id"] = us.id_login.ToString();
                Response.Redirect("home.aspx");
            }
            else
            {
                lbError.Text = "Tài khoản hoặc mật khẩu không đúng!";
            }
        }

        protected void signup_Command(object sender, CommandEventArgs e)
        {
            if (matkhau2.Text != matkhau3.Text)
            {
                lbError2.Text = "Mật khẩu không khớp";
            }
            else
            {
                //Tạo MD5 
                MD5 mh = MD5.Create();
                //Chuyển kiểu chuổi thành kiểu byte
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(matkhau2.Text);
                //mã hóa chuỗi đã chuyển
                byte[] hash = mh.ComputeHash(inputBytes);
                //tạo đối tượng StringBuilder (làm việc với kiểu dữ liệu lớn)
                StringBuilder sb = new StringBuilder();

                for (int i = 0; i < hash.Length; i++)
                {
                    sb.Append(hash[i].ToString("X2"));
                }
                string username = taikhoan2.Text;
                string password = sb.ToString();

                websiteEntities db = new websiteEntities();
                var us = db.login.FirstOrDefault(x => x.taikhoan == username);


                if (us != null)
                {
                    lbError2.Text = "Tên tài Khoản đã tồn tại";
                }
                else
                {
                    login login1 = new login();
                    login1.taikhoan = username;
                    login1.matkhau = password;
                    login1.role = 0;
                    login1.ten = name.Text;
                    db.login.Add(login1);
                    db.SaveChanges();
                    Session["dangnhap"] = login1.ten;
                    var id = db.login.FirstOrDefault(x => x.taikhoan == username && x.matkhau == password && x.role == 0);
                    Session["id"] = id.id_login.ToString();
                    Response.Redirect("home.aspx");
                }
            }
        }

        public void with_login()
        {
            btlogin.Visible = false;
            btsignup.Visible = false;
            account.Text = Session["dangnhap"].ToString();
            tuphim.Visible = true;
            div_account.Visible = true;
            log_out.Visible = true;
            if(Session["id"] != null) { 
            tuphim.NavigateUrl = "gio_phim.aspx?id=" + Session["id"].ToString();
            }
        }

        protected void log_out_Command(object sender, CommandEventArgs e)
        {
            Session["dangnhap"] = null;
            Response.Redirect("home.aspx");
        }

        protected void btsearch_Command(object sender, CommandEventArgs e)
        {
            if (search.Text != null)
            {
                Response.Redirect("list_phim.aspx?value=" + search.Text);

            }
        }
    }
}