using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class home : System.Web.UI.Page
{
    String ConnectionString = "Data Source=KOBBY-LAPTOP;Initial Catalog=BestMart;Persist Security Info=True;User ID=sa;Password=!@#$%&*";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
  

        if ((string.IsNullOrWhiteSpace(secanswer.Text))|| (string.IsNullOrEmpty(secanswer.Text)) ||
            (string.IsNullOrWhiteSpace(txtuname.Text)) || (string.IsNullOrEmpty(txtuname.Text)))
            {

            ErrorLabel.Visible = true;
            ErrorPhoto.Visible = true;
            ErrorLabel.Text = "Fill all textboxes";
        }
        else 
        {
            try
            {
                SqlConnection connection = new SqlConnection(ConnectionString);
               
                string RetrieveText = "select count (*) from UserInfo where Username = '" + txtuname.Text + "' and SecurityAnswer = '"+secanswer.Text+"'";
                DataTable dt = new DataTable();
                SqlDataAdapter dataadapter = new SqlDataAdapter(RetrieveText, connection);
                dataadapter.Fill(dt);

                if (dt.Rows[0][0].ToString()=="1")
                {
                    Session["Username"] = txtuname.Text;
                    Session["SecurityAnswer"] = secanswer.Text;

                    Response.Redirect("index.html");

                }
 

                else {
                    ErrorLabel.Visible = true;
                    ErrorPhoto.Visible = true;
                    ErrorLabel.Text = "Login FAILED! Credentials not found";
                }
               
            }

            catch (Exception)
            {
              
            }

        }
    }
  

    protected void txtname_TextChanged(object sender, EventArgs e)
    {
     
    }
}