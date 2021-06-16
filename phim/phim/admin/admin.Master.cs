using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace phim.admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["dangnhap"] != null)
            {
                name.Text = Session["dangnhap"].ToString();
            }
            if (!IsPostBack)
            {
                if (Session["dangnhap"] == null)
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            Session["dangnhap"] = null;
            Response.Redirect("login.aspx");
        }
    }
}