<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.SubtextSearch" %>
<div class="navbar-form pull-right">
	<div class="input-append">
		<asp:TextBox id="txtSearch" runat="server" cssclass="span2" />
		<asp:Button id="btnSearch" runat="server" cssclass="btn" Text="Search" CausesValidation="False" OnClick="btnSearch_Click" />
	</div>
</div>