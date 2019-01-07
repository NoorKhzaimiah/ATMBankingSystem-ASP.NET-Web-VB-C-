using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ATMSYSTEM
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Password"] != null) { Response.Redirect("Manager.aspx"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrationn.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                DataView view1 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                if (view1.Count == 1)
                {
                    DataRowView row1 = view1[0];
                    Session["Password"] = row1["Password"];
                    Response.Redirect("Manager.aspx");

                }
                else
                    Label1.Text = " Error in pass/name";
            }
            catch (Exception ess) { Label1.Text = ess.Message; }

        }
    }
}
