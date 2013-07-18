<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.MyLinks" %>
<li><asp:HyperLink Runat="server" NavigateUrl="~/Default.aspx" Text="Home" ID="HomeLink" /></li>
<li><asp:HyperLink AccessKey = "9" Runat="server" Text="Contact" ID="ContactLink" NavigateUrl="javascript:void(0)" /></li>
<li><asp:HyperLink Runat="server" Text="Subscribe" ID="Syndication" NavigateUrl="javascript:void(0)" /></li>
<li><asp:HyperLink Runat="server" Text="Admin" ID="Admin" NavigateUrl="javascript:void(0)" /></li>