using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : Page
{
    SqlConnection con = new SqlConnection("Data Source=HARI;Initial Catalog=testDB;Persist Security Info=True;User ID=sa;Password=manikandan");
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadRecord();
        Reset();
    }
     
    protected void Onclick_Button3(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from CustomerData where CustomerID='" + int.Parse(TextBox1.Text) + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            TextBox2.Text = dr.GetValue(1).ToString();
            DropDownList1.SelectedValue = dr.GetValue(2).ToString();
            TextBox3.Text = dr.GetValue(3).ToString();
            TextBox4.Text = dr.GetValue(4).ToString();
        }
    }
    protected void Onclick_Button5(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("update CustomerData set CustomerName='" + TextBox2.Text + "', Address='" + DropDownList1.SelectedValue + "',Contact='" + TextBox3.Text + "',EmailID='" + TextBox4.Text + "' where CustomerID='"+int.Parse(TextBox1.Text)+"'", con);
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Updated');", true);
        Reset();
        con.Close();
        LoadRecord();
    }
    protected void Onclick_Button4(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("insert into CustomerData values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Saved');", true);
        con.Close();
        LoadRecord();
        Reset();
    }

    public void Reset()
    {
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = DropDownList1.SelectedValue = "";
    }

    public void LoadRecord()
    {
        cmd = new SqlCommand("select * from CustomerData", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void Onclick_Button6(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("delete CustomerData where CustomerID='" + int.Parse(TextBox1.Text) + "'", con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Deleted');", true);
        Response.Redirect("Default.aspx");
        con.Close();
        Reset();
    }
    protected void Onclick_Button7(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("select * from CustomerData where CustomerID='" + int.Parse(TextBox1.Text) + "'", con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            if (dt.Rows.Count==0)
            {
                Response.Write("<script language='javascript'>alert{'Please enter valid CustomerID'}</script>");
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
            catch (FormatException)
        {
            Response.Write("<script language='javascript'>alert{('Please enter valid numeric CustomerID')}</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'>alert{'Error:'}" + ex.Message+"</script>");
        }
        
    }
}