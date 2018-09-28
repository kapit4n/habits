<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HabitEdit.aspx.cs" Inherits="HabitEdit" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="container">
    <div class="row">
        <a class="btn btn-default btn-sm" href="HabitShow.aspx?Id=<% Response.Write(Habit1.Id); %>">
            &lt; <% Response.Write(Habit1.Name); %>
        </a>
      <h2>Edit Habit</h2>
      <div class="form-group">
        <label for="habitName">Name:</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="habitName" placeholder="Habit Name" Text=""></asp:TextBox>
      </div>
      <div class="form-group">
        <label for="habitTime">Habit Time:</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="habitTime" placeholder="HH:MM" Text=""></asp:TextBox>
      </div>
      <div class="form-group">
        <label for="habitImage">Image:</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="habitImage" placeholder="Habit Image Url" Text=""></asp:TextBox>
      </div>
      <div class="form-group">
        <label for="description">Description:</label>
        <asp:TextBox TextMode="multiline" Columns="100" Rows="5" runat="server" CssClass="form-control" ID="description" placeholder="Habit description" Text=""></asp:TextBox>
      </div>
      <asp:Button id="saveHabit" CssClass="btn btn-default" runat="server" Text="Save" OnClick="saveHabit_Click"/>
      <asp:Button id="cancelHabit" CssClass="btn btn-default" runat="server" Text="Cancel" OnClick="cancelHabit_Click"/>          
    </div>
  </div>  
</asp:Content>