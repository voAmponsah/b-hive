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
  

        if ((string.IsNullOrWhiteSpace(txtname.Text))|| (string.IsNullOrEmpty(txtname.Text)) ||
            (string.IsNullOrWhiteSpace(txtuname.Text)) || (string.IsNullOrEmpty(txtuname.Text)) ||
            (string.IsNullOrWhiteSpace(txtpass.Text)) || (string.IsNullOrEmpty(txtpass.Text)) ||
            (string.IsNullOrWhiteSpace(txtcpass.Text)) || (string.IsNullOrEmpty(txtcpass.Text)) ||
            (string.IsNullOrWhiteSpace(txtphone.Text)) || (string.IsNullOrEmpty(txtphone.Text)) ||
            (string.IsNullOrWhiteSpace(secanswer.Text)) || (string.IsNullOrEmpty(secanswer.Text)))
        {



            
                    Label11.Visible = true;
                    Label11.Text = "Select a security question!";
           ErrorLabel.Visible = true;
            ErrorPhoto.Visible = true;

            
        }


        else
        {
            try
            {
                SqlConnection connection = new SqlConnection(ConnectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.Text;
                command.CommandText = "insert into UserInfo values('"+txtname.Text+ "','"+txtuname.Text+"', '"+txtphone.Text+"', '"+txtpass.Text+ "','" + secquestion.SelectedValue+"','" +secanswer.Text+"')";
                command.ExecuteNonQuery();

                if (txtpass.Text.Equals(txtcpass.Text))
                {
                    
                    Response.Redirect("index.html");
                }
 

                else {
                    ErrorLabel.Visible = true;
                    ErrorPhoto.Visible = true;
                    ErrorLabel.Text = "Account Creation FAILED! Passwords do not match";
                }
               
            }

            catch (Exception)
            {
              
            }

        }
        

    }

    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        txtname.Focus();
    }
}