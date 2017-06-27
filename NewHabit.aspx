<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewHabit.aspx.cs" Inherits="NewHabit" MasterPageFile="~/Site.Master"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>New Habit</h2>
  <div class="form-group">
    <label for="habitName">Name:</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="habitName" placeholder="Habit Name" Text='<%#this.newHabit.name%>'></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="description">Description:</label>
    <asp:TextBox Rows="5" runat="server" CssClass="form-control" ID="description" placeholder="Habit description" Text='<%#this.newHabit.description%>'></asp:TextBox>
  </div>
  <asp:Button id="saveHabit" CssClass="btn btn-default" runat="server" Text="Save" OnClick="saveHabit_Click" />
  <asp:Button id="cancelHabit" CssClass="btn btn-default" runat="server" Text="Cancel" OnClick="cancelHabit_Click" />
</asp:Content>
