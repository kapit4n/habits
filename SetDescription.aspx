﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SetDescription.aspx.cs" Inherits="SetDescription" MasterPageFile="~/Site.Master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>DONE (<% = Habit1.Name %>)</h2>
    <a class="btn btn-default btn-sm" href="HabitShow.aspx?Id=<% Response.Write(Habit1.Id); %>">
        &lt; <% Response.Write(Habit1.Name); %>
    </a>
    <div class="form-group">
        <label for="logDescription">Change description:</label>
        <asp:TextBox runat="server" CssClass="form-control" id="logDescription" placeholder="Updated" Text="" TextMode="multiline" Columns="150" Rows="10"></asp:TextBox>
    </div>
    <asp:Button id="saveHabit" CssClass="btn btn-default" runat="server" Text="Save" OnClick="SaveDescription_Click"/>
    <asp:Button id="cancelHabit" CssClass="btn btn-default" runat="server" Text="Cancel" OnClick="CancelDescription_Click"/>

<div class="doted-border">
    <% for (var index = 0; index < _habitLogs.Count; index++)
           {
        %>
        <div class="direct-chat-text">
            <p style="white-space: pre-line">
                <% Response.Write(_habitLogs[index].ChangeDescription); %>
                    <span class="badge">
                        <% Response.Write(_habitLogs[index].getDoneDateStr()); %>
                    </span>
            </p>

        </div>
        <% } %>

</div>
</asp:Content>