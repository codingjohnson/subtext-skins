<%@ Control Language="c#" AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.PostComment" %>

<div class="row-fluid">
	<div class="well span12">
		<h3 class="muted">Your comment:</h3>
		<div class="form-horizontal">

			<div class="control-group">
				<label for="PostComment_ascx_tbTitle" class="control-label">Title:</label>
				<div class="controls">
					<asp:TextBox id="tbTitle" runat="server" size="40"></asp:TextBox>
					<asp:RequiredFieldValidator id="vldTitleRequired" runat="server" ErrorMessage="*So what is this about?" ControlToValidate="tbTitle" Display="Dynamic" CssClass="help-block"/>
				</div>
			</div>

			<div class="control-group">
				<label for="PostComment_ascx_tbName" class="control-label">Name:</label>
				<div class="controls">
					<asp:TextBox id="tbName" runat="server" size="40"></asp:TextBox>
					<asp:RequiredFieldValidator id="vldNameRequired" runat="server" ErrorMessage="*And who are you?" ControlToValidate="tbName" Display="Dynamic" CssClass="help-block" />
				</div>
			</div>

			<div class="control-group">
				<label for="PostComment_ascx_tbEmail" class="control-label">Email: (never displayed)</label>
				<div class="controls">
					<asp:TextBox id="tbEmail" runat="server" CssClass="fixed" size="35"></asp:TextBox>
					<asp:RegularExpressionValidator id="vldEmailRegex" runat="server" ErrorMessage="*Email is optional, but if you enter one at least make sure it is valid." ControlToValidate="tbEmail" Display="Dynamic" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" CssClass="help-block" />
				</div>
			</div>

			<div class="control-group">
				<label for="PostComment_ascx_tbUrl" class="control-label">Website:</label>
				<div class="controls">
					<asp:TextBox id="tbUrl" runat="server" size="40"></asp:TextBox>
				</div>
			</div>

			<div class="control-group">
				<label for="PostComment_ascx_tbComment" class="control-label">Comment: <em class="smallnote">Allowed tags: blockquote, a, strong, em, p, u, strike, super, sub, code</em></label>
				<div class="controls">
					<asp:TextBox id="tbComment" runat="server" Rows="10" Columns="40" TextMode="MultiLine" Width="400px" class="livepreview"></asp:TextBox>
					<asp:RequiredFieldValidator id="vldCommentRequired" runat="server" Display="Dynamic" ErrorMessage="*I do want to hear your thoughts. Please enter a comment." ControlToValidate="tbComment" CssClass="help-block" />
				</div>
			</div>

			<div class="form-actions">
				<st:CompliantButton id="btnCompliantSubmit" runat="server" CssClass="btn btn-success btn-large" Text="Leave Your Mark" /> 
				<asp:Label id="Message" runat="server" ForeColor="Red" />
			</div>
		</div>
	</div>
</div>