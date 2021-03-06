﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Core;
using Word = Microsoft.Office.Interop.Word;

public partial class showmessage : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"]!=null)
        {
            delete.Visible = true;
        }

            objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();
        //word转html
        String Sq1 = "Select path From announcement Where title = '" + (String)Session["name"] + "'";
        SqlCommand cmd = new SqlCommand(Sq1, objConnection);
        String mm = (String)cmd.ExecuteScalar();
        Button btn = sender as Button;
        Office2HtmlHelper.Word2Html(mm, MapPath("/announcement/"), "max");
  

        String Sq = "Select title From announcement Where title = '" + (String)Session["name"] + "'";
        SqlCommand cmd1 = new SqlCommand(Sq, objConnection);
        String ming = (String)cmd1.ExecuteScalar();

        Label4.Text = ming;
        objConnection.Close();
    }

    //下载雷
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
    //删除类
    public void DeleteFile(string FullFileName)
    {
        // 保存文件的虚拟路径
        string Url = "announcement\\" + FullFileName;
        // 保存文件的物理路径
        string FullPath = HttpContext.Current.Server.MapPath(Url);
        // 去除文件的只读属性
        //File.SetAttributes(FullPath, FileAttributes.Normal);
        // 初始化FileInfo类的实例，作为文件路径的包装
        FileInfo FI = new FileInfo(FullPath);
        // 判断文件是否存在
        if (FI.Exists)
        {
            FI.Delete();
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

    protected void btnWord_Click(object sender, EventArgs e)
    {
        /*
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();

        String Sq = "Select path From announcement Where title = '" + (String)Session["name"] + "'";
        SqlCommand cmd1 = new SqlCommand(Sq, objConnection);
        String mm = (String)cmd1.ExecuteScalar();


        objConnection.Close();

        Button btn = sender as Button;
        switch (btn.CommandArgument)
        {
            case "docx":
                Office2HtmlHelper.Word2Html(mm, MapPath("/announcement/"), "max");
                break;
            default:
                break;
        }
        */
        Response.Redirect("announcement/max.html");
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();
        String SqlStr = "Select documentname From announcement Where title = '" + (String)Session["name"] + "'";
        SqlCommand cmd = new SqlCommand(SqlStr, objConnection);
        String FullFileName = (String)cmd.ExecuteScalar();
        objConnection.Close();
        DeleteFile(FullFileName);
        //Response.Redirect(Request.Url.PathAndQuery.ToString());
        Response.Write("<script>alert('文件成功删除')</script>");
        //删除数据库
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();
        String SqlStr2 = "delete  from announcement where title='" + (String)Session["name"] + "'" ;
        SqlCommand cmd2 = new SqlCommand(SqlStr2, objConnection);
        cmd2.CommandText = SqlStr2;
        cmd2.ExecuteScalar();
        objConnection.Close();
        Session["name"] = null;
        Response.Redirect("home.aspx");
    }
}