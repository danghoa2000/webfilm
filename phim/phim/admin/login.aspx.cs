using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
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
            var us = db.login.FirstOrDefault(x => x.taikhoan == username && x.matkhau == password && x.role == 1);


            if (us != null)
            {
                //lbError.Text = "Đăng nhập thành công!";
                Session["dangnhap"] = us.ten.ToString();
                
                Response.Redirect("table_phim.aspx");
            }
            else
            {
                lbError.Text = "Tài khoản hoặc mật khẩu không đúng!";
            }
        }

        protected void Button2_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("table_phim.aspx");

        }
    }
}