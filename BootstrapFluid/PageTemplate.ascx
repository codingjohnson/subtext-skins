<%@ Control %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Controls/Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src="Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ArchiveLinks" Src="Controls/ArchiveLinks.ascx" %>
<%@ Register TagPrefix="uc1" TagName="News" Src="Controls/News.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryDisplay" Src="Controls/CategoryDisplay.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BlogStats" Src="Controls/BlogStats.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TagCloud" Src="Controls/TagCloud.ascx" %>
<%@ Register TagPrefix="DT" Namespace="Subtext.Web.UI.WebControls" Assembly="Subtext.Web" %>

<uc1:Header id="Header1" runat="server"></uc1:Header>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span3">
			<div class="well sidebar-nav">
				<ul class="nav nav-list">
					<DT:ContentRegion id="MPRightColumn" runat="server">
						<uc1:ArchiveLinks id="ArchiveLinks1" runat="server" />
						<uc1:CategoryDisplay id="CategoryDisplay1" runat="server" />
						<uc1:News id="News1" runat="server" />
						<uc1:TagCloud id="tagCloud" runat="server" ItemCount="20" />
						<uc1:BlogStats id="BlogStats1" runat="server" />
						<uc1:Footer id="Footer1" runat="server" />
					</DT:ContentRegion>
				</ul>
			</div><!--/.well -->
		</div><!--/span-->
        <div class="span9">
			<DT:ContentRegion id="MPMain" runat="server"></DT:ContentRegion>
		</div>
	</div>
</div>
