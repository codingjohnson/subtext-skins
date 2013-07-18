<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.CategoryList" %>

<asp:Repeater ID="CatList" Runat="server" OnItemCreated="CategoryCreated">
	<ItemTemplate>
		<li class="nav-header"><asp:Literal runat="server" ID="Title" /></li>
		<asp:Repeater id="LinkList" runat="server" OnItemCreated="LinkCreated">
			<HeaderTemplate></HeaderTemplate>
			<ItemTemplate>
				<li><asp:HyperLink Runat="server" ID="Link" /></li>
			</ItemTemplate>
			<FooterTemplate></FooterTemplate>
		</asp:Repeater>
	</ItemTemplate>
</asp:Repeater>