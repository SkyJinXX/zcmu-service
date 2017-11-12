using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showmessage : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();

        String Sq = "Select documentname From announcement Where title = '" + (String)Session["name"] + "'";
        SqlCommand cmd1 = new SqlCommand(Sq, objConnection);
        String mm = (String)cmd1.ExecuteScalar();

        String SqlStr = "Select article From announcement Where title = '" +(String)Session["name"] + "' and documentname='"+mm+"'";
        SqlCommand cmd = new SqlCommand(SqlStr, objConnection);
        Label1.Text = (String)cmd.ExecuteScalar();
        Label4.Text = (String)Session["name"];

        
        objConnection.Close();
    }


    public void DownLoadFile(string FullFileName)
    {
        // 保存文件的虚拟路径
        string Url = "announcement\\" + FullFileName;
        // 保存文件的物理路径
        string FullPath = HttpContext.Current.Server.MapPath(Url);
        // 初始化FileInfo类的实例，作为文件路径的包装
        FileInfo FI = new FileInfo(FullPath);
        // 判断文件是否存在
        if (FI.Exists)
        {
            // 将文件保存到本机
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment;filename=" + Server.UrlEncode(FI.Name));
            Response.AddHeader("Content-Length", FI.Length.ToString());
            Response.ContentType = "application/octet-stream";
            Response.Filter.Close();
            Response.WriteFile(FI.FullName);
            Response.End();
        }
    }
    protected void homePage_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void message_announcement_Click(object sender, EventArgs e)
    {
        Response.Redirect("messageAnnouncementPage.aspx");
    }

    protected void policies_and_regulations_Click(object sender, EventArgs e)
    {
        Response.Redirect("policiesAndRegulationsPage.aspx");
    }

    protected void charges_publicity_Click(object sender, EventArgs e)
    {
        Response.Redirect("chargesPublicityPage.aspx");
    }

    protected void credit_system_rules_and_publicity_Click(object sender, EventArgs e)
    {
        Response.Redirect("creditSystemRulesAndPublicityPage.aspx");
    }

    protected void backstage_management_Click(object sender, EventArgs e)
    {
        Response.Redirect("backstageManagementPage.aspx");
    }


    protected void download_Click(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();
        String SqlStr = "Select documentname From announcement Where title = '" + (String)Session["name"] + "'";
        SqlCommand cmd = new SqlCommand(SqlStr, objConnection);
        String FullFileName = (String)cmd.ExecuteScalar();
        objConnection.Close();
        DownLoadFile(FullFileName);
    }
}