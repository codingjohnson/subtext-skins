<%@ Control Language="C#" EnableTheming="false"  AutoEventWireup="false" Inherits="Subtext.Web.UI.Controls.Contact" %>
<div class="well form-horizontal">
	<fieldset>
		<legend>Please use the form below if you have any comments, questions, or suggestions.</legend>

		<div class="control-group">
			<label class="control-label">Name</label>
			<div class="controls">
				<asp:TextBox id="tbName" Size = "50" runat="server" Width="400px" />
				<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your name" ControlToValidate="tbName" Display="Dynamic" CssClass="help-block">*</asp:RequiredFieldValidator>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">Email:</label>
			<div class="controls">
				<asp:TextBox id="tbEmail" runat="server" Size = "50" Width="400px"></asp:TextBox>
				<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your email address" ControlToValidate="tbEmail" Display="Dynamic" CssClass="help-block">*</asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator CssClass="help-block" id="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email address format" ControlToValidate="tbEmail" Display="Dynamic" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">*</asp:RegularExpressionValidator></td>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">Subject:</label>
			<div class="controls">
				<asp:TextBox id="tbSubject" runat="server" Size = "50" Width="400px"></asp:TextBox></td>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">Message</label>
			<div class="controls">
				<asp:TextBox id="tbMessage" runat="server" Rows = "10" Columns = "40" Width="400px" TextMode="MultiLine" Height="131px"></asp:TextBox>
				<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="Please tell me something" ControlToValidate="tbMessage" Display="Dynamic">*</asp:RequiredFieldValidator></td>
			</div>
		</div>

		<div class="form-actions">
			<asp:Button id="btnSend" runat="server" Text="Send" CssClass="btn btn-success btn-large"></asp:Button>
			<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
			<asp:ValidationSummary id="ValidationSummary1" runat="server" HeaderText="There is an error:"></asp:ValidationSummary>
		</div>
	</fieldset>
</div>