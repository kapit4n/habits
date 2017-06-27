<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewHabit.aspx.cs" Inherits="NewHabit" MasterPageFile="~/Site.Master"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>New Habit</h2>
  <div class="form-group">
    <label for="habitName">Name:</label>
    <input type="text" class="form-control" id="habitName" placeholder="Habit Name"/>
  </div>
  <div class="form-group">
    <label for="description">Description:</label>
    <textarea class="form-control" placeholder="Habit description"></textarea>
  </div>
  <asp:Button id="saveHabit" CssClass="btn btn-default" runat="server" Text="Save" OnClick="saveHabit_Click" />
</asp:Content>