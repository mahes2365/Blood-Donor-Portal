using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using searchprogram;
public partial class registration : System.Web.UI.Page
{
    Class1 obj = new Class1();
    string name;
    string age;
    string sex;
    string bloodgroup;
    string mobile_1;
    string mobile_2;
    string mail;
    string area;
    string pincode;
    string proof;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void rbtmale_CheckedChanged(object sender, EventArgs e)
    {
        sex = rbtmale.Text;
    }
    protected void rbtfemale_CheckedChanged(object sender, EventArgs e)
    {
        sex = rbtfemale.Text;
    }

    protected void rbtothers_CheckedChanged(object sender, EventArgs e)
    {
        sex = rbtothers.Text;
    }
    protected void btregister_Click(object sender, EventArgs e)
    {
         name = txtname.Text;
         age = txtage.Text;
         bloodgroup = ddlbloodgroup.SelectedItem.Text;
         mobile_1 = txtmobileno1.Text;
         mobile_2 = txtmobileno2.Text;
         mail = txtmail.Text;
         area = txtarea.Text;
         pincode = txtpincode.Text;
         proof = fileuploadproof.FileName.ToString();
        if (fileuploadproof.HasFile)
        {
            fileuploadproof.PostedFile.SaveAs(Server.MapPath("~/proof/") + proof);
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            //SqlConnection con = new SqlConnection(constr);
            //SqlCommand cmd = new SqlCommand("insert into Donors_WaitingList values('" + name + "'," + age + ",'" + sex + "','" + bloodgroup + "','" + mobile_1 + "','" + mobile_2 + "','" + mail + "','" + area + "'," + pincode + ",'" + proof + "')", con);
            //con.Open();
            //cmd.ExecuteNonQuery();
            obj.getDonorData("insert into Donors_WaitingList values('" + name + "'," + age + ",'" + sex + "','" + bloodgroup + "','" + mobile_1 + "','" + mobile_2 + "','" + mail + "','" + area + "'," + pincode + ",'" + proof + "')");
            Response.Write("You are A Donor Now");
        }
        else
        {
            Response.Write("file not provide");
        }
    }
}
