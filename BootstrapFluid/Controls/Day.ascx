<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.Day" %>

<div class="well">
	<asp:Literal ID = "DateTitle" Runat = "server" />		  
	<asp:HyperLink Runat="server" Title = "Day Archive" Text = "#" height="15" Width="12" BorderWidth="0" ID="ImageLink" />
</div>

<asp:Repeater runat="Server" Runat="server" ID="DayList" OnItemCreated="PostCreated">
	<ItemTemplate>
		<div class="row-fluid">
			<div class="span12 well">
				<h2><asp:HyperLink Runat="server" ID="editLink" /><asp:HyperLink Runat="server" ID="TitleUrl" /></h2>
				<p><asp:Literal runat="server" ID="PostText" /></p>
				<p><asp:Literal ID="PostDesc" Runat="server" /></p>
			</div>
		</div>
	</ItemTemplate>
</asp:Repeater>
