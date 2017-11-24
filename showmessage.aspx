<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showmessage.aspx.cs" Inherits="showmessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/showmessage.css" type="text/css" rel="stylesheet" />
    <link href="css/userpage_header_footer.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="top"></div>
		<div id="nav">
			<ul>
				<li>
                    <a>
                        <asp:Button ID="homePage" CssClass="nav_button" runat="server" Text="首页" OnClick="homePage_Click"/>
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="message_announcement" CssClass="nav_button" runat="server" Text="信息公告" OnClick="message_announcement_Click"/>
					</a>
				</li>
				<li>
                    <a>
                        <asp:Button ID="policies_and_regulations" CssClass="nav_button" runat="server" Text="政策法规" OnClick="policies_and_regulations_Click" />
                    </a>
				</li>
				<li>
					<a>
                        <asp:Button ID="charges_publicity" CssClass="nav_button" runat="server" Text="收费项目公示" OnClick="charges_publicity_Click" />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="credit_system_rules_and_publicity" CssClass="nav_button" runat="server" Text="学分制规定和公示" OnClick="credit_system_rules_and_publicity_Click" />
					</a>
				</li>
				<li>
					<a>
                        <asp:Button ID="backstage_management" CssClass="nav_button" runat="server" Text="后台管理" OnClick="backstage_management_Click" />
					</a>
				</li>
			</ul>
		</div>
		<div id="container">
			<div id="side_left">
				<div class="side_left_box">
					<div class="columnTitle">
                        <asp:Label ID="Label2" runat="server" Text="组织机构" CssClass="labelTitle"></asp:Label>
					</div>
                    <div class="organization_item">
                        <a href="lingdao.aspx">学校收费领导小组</a>
                    </div>
                    <div class="organization_item">
                        <a href="jiandu.aspx">学校收费监督小组</a>
                    </div>
				</div>
				<div class="side_left_box">
					<div class="columnTitle">
                        <asp:Label ID="Label3" runat="server" Text="监督-维权-咨询" CssClass="labelTitle"></asp:Label>
					</div>
                    <div class="side_left_box_content">
                        <p class="pTitle">举报电话 </p>
					    <p>校纪委: </p>
					    <p>0571-86613530 </p>
					    <p>校计财处: </p>
					    <p>0571-86613578</p>
					    <p>省物价局: </p>
					    <p>12358</p>
                    </div>
                    <div class="side_left_box_content">
                        <p class="pTitle">网络举报网址 </p>
                        <p>校纪委: </p>
                        <p>jw@zjtcm.net </p>
                        <p>校财务处: </p>
                        <p>cwc@zjtcm.net </p>
                    </div>
                    <div class="side_left_box_content">
                        <p class="pTitle">收费咨询 </p>
                        <p>学校收费咨询室: </p>
                        <p>0571-86613525 </p>
                        <p>教育主管部门: </p>
                        <p>0571—88008918 </p>
                    </div>
				</div>
			</div>
			<div id="main">
                <div style="text-align: center; margin-top: 20px">
                    <asp:Label ID="Label4" runat="server" Text="Label" Style="font-size: x-large"></asp:Label>
                </div>
                <div class="content">
                    <asp:Label ID="Label1" runat="server" Text="Label" style="font-size:large"></asp:Label>
                </div>
                <div class="text_buttom">
                    <asp:Button ID="download" runat="server" Text="文档下载" OnClick="download_Click" />
                </div>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer">
            <div id="footer_content1">
                <p>
                    Copyright © 2017 浙江中医药大学 
                </p>
            </div>
            <div id="footer_content2">
                <p>
                    地址：浙江省杭州市滨江区滨文路548号（310053）校办电话：0571-86633077 0571-86633177 传真：0571-86613500 
                </p>
            </div>
		</div>
    </form>
</body>
</html>
