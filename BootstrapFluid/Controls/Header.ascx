<%@ Control Language="C#" EnableTheming="false"  Inherits="Subtext.Web.UI.Controls.Header" %>
<%@ Register TagPrefix="uc1" TagName="MyLinks" Src="MyLinks.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Search" Src="SubtextSearch.ascx" %>
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<asp:HyperLink id="HeaderTitle" runat="server" CssClass="brand" />
			<div class="nav-collapse collapse">
				<uc1:Search ID="search" runat="server" />
				<ul class="nav">
					<uc1:MyLinks id="MyLinks1" runat="server" />
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div>
</div>