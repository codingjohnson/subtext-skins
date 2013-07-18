<%@ Control Language="c#" Inherits="Subtext.Web.UI.Controls.TagCloud" %>

<li class="nav-header">Tag Cloud</li>
<asp:Repeater Runat="server" ID="Tags" OnItemDataBound="Tags_ItemDataBound">
	<HeaderTemplate></HeaderTemplate>
	<ItemTemplate>
		<li>
			<asp:HyperLink  Runat="server" ID="TagUrl" Text='<%# UrlDecode(Eval("TagName")) %>' ToolTip='<%# UrlDecode(Eval("TagName")) + " (" + Eval("Count") + ")" %>'/>
		</li>
	</ItemTemplate>
	<FooterTemplate></FooterTemplate>
</asp:Repeater>
<li><asp:HyperLink runat="server" id="DefaultTagLink">more tags...</asp:HyperLink></li>