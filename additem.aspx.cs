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


    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        txtpname.Focus();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        if ((string.IsNullOrWhiteSpace(txtpname.Text)) || (string.IsNullOrEmpty(txtpname.Text)) ||
            (string.IsNullOrWhiteSpace(txtptype.Text)) || (string.IsNullOrEmpty(txtptype.Text)) ||
            (string.IsNullOrWhiteSpace(txtpprice.Text)) || (string.IsNullOrEmpty(txtpprice.Text)) ||
            (string.IsNullOrWhiteSpace(txtpdescription.Text)) || (string.IsNullOrEmpty(txtpdescription.Text)))
        {




                ErrorLabel.Visible = true;
                ErrorLabel.Text = "Fill all textboxes";
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
                command.CommandText = "insert into Products values('" + txtpname.Text + "','" + txtptype.Text + "', '" + txtpdescription.Text + "', '" + txtpprice.Text + "')";
                command.ExecuteNonQuery();



                ErrorLabel.Visible = true;
                ErrorLabel.Text = "SUCESS! AD UPLOADED";
                ErrorPhoto.Visible = true;
                txtpname.Text = "";
                txtpdescription.Text = "";
                txtpprice.Text = "";
                txtptype.Text = "";


            }

            catch (Exception)
            {

            }

        }


    }
}