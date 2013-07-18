<%@ Control Language="c#" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.Comments" %>
<div class="well">
	<div class="row-fluid">
		<h3 class="span12 muted">Comments on this post</h3>
	</div>
	<div class="row-fluid">
		<asp:Literal ID="NoCommentMessage" Runat="server" />
		<asp:Repeater id="CommentList" runat="server" OnItemCreated="CommentsCreated">
			<ItemTemplate>
				<div class="row-fluid comment">
					<strong class="indent">
						<asp:HyperLink Runat="server" ID="EditCommentImgLink" /><a name="<%# Comment.Id %>" href="<%# Comment.DisplayUrl %>" title="permalink">#</a> <asp:Literal Runat="server" ID="title" Text="<%# Comment.Title %>" />
					</strong>
					<br />
					<div class="pull-left">
						<asp:Image runat="server" id="GravatarImg" visible="False" CssClass="gravatar" Width="40" Height="40" AlternateText="Requesting Gravatar..." />
					</div>
					<div class="indent">
						<p><asp:Literal id="PostText" Runat="server" /></p>
						<p>
							<small>
							Left by <asp:HyperLink Target="_blank" Runat="server" ID="NameLink" /> 
							on 
							<asp:Literal id="commentDate" Runat="server" Text='<%# Comment.DateCreated.ToString("MMM dd, yyyy h:mm tt") %>' />
							</small>
						</p>
					</div>
				</div>
					<span class="admin-only">
						<% if(Request.IsAuthenticated && SecurityHelper.IsAdmin) {%>
							<strong class="undoable"><a href="#<%#Comment.Id %>" class="Deleted">Remove Comment</a></strong>
							| <strong class="undoable"><a href="#<%#Comment.Id %>" class="FlaggedAsSpam">Flag as Spam</a></strong>
						<% } %>
					</span>
				</div>
			</ItemTemplate>
		</asp:Repeater>
	</div>
</div>