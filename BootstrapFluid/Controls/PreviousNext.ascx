<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.PreviousNext" %>

<ul class="breadcrumb">
	<li><asp:HyperLink id="PrevLink" runat="server" ToolTip="previous post" Format="&lt;&lt; {0}" /> <span class="divider">/</span></li>
	<li><asp:HyperLink id="MainLink" runat="server">Home</asp:HyperLink> <span class="divider">/</span></li>
	<li><asp:HyperLink id="NextLink" runat="server" ToolTip="next post" Format="{0} &gt;&gt;" /></li>
</ul>
	
	
	
