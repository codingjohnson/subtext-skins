<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.ViewPost" %>
<%@ Register TagPrefix="uc1" TagName="PreviousNext" Src="PreviousNext.ascx" %>

<uc1:PreviousNext id="PreviousNext" runat="server" />

<div class="row-fluid">
	<div class="well span12">
		<h1><asp:HyperLink Runat="server" ID="editLink" /><asp:HyperLink Runat="server" ID="TitleUrl" /></h1>
		<p><asp:Literal id="Body"  runat="server" /></p>

		<p class="muted"><small><a href="javascript:window.print();" class="muted">Print</a> | posted on <asp:Literal id="PostDescription"  runat="server" /></small></p>
	</div>
</div>
<asp:Literal ID="TrackBack" Runat="server" />	