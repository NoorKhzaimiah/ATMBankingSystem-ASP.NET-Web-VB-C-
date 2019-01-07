using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATMSYSTEM
{
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("withdraw.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("deposit.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbalance.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Account Statement.aspx");
        }
    }
}

