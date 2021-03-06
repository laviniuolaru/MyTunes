﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="MyTunes_ChristianHapgood.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
    <hr />
    <h3>Add Track:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelAddGenre" runat="server">Genre:</asp:Label></td>
            <td>
                <asp:DropDownList ID="DropDownAddGenre" runat="server" 
                    ItemType="MyTunes_ChristianHapgood.Models.Genre" 
                    SelectMethod="GetGenres" DataTextField="GenreName" 
                    DataValueField="GenreId" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddName" runat="server">Name:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddTrackName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Track name required." ControlToValidate="AddTrackName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddPrice" runat="server">Price:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddTrackPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="* Price required." ControlToValidate="AddTrackPrice" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* Must be a valid price without $." ControlToValidate="AddTrackPrice" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
    </table>
    <p></p>
    <p></p>
    <asp:Button ID="AddTrackButton" runat="server" Text="Add Track" OnClick="AddTrackButton_Click"  CausesValidation="true"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    <h3>Remove Track:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelRemoveTrack" runat="server">Track:</asp:Label></td>
            <td><asp:DropDownList ID="DropDownRemoveTrack" runat="server" ItemType="MyTunes_ChristianHapgood.Models.Track" 
                    SelectMethod="GetTracks" AppendDataBoundItems="true" 
                    DataTextField="Name" DataValueField="TrackId" >
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="RemoveTrackButton" runat="server" Text="Remove Track" OnClick="RemoveTrackButton_Click" CausesValidation="false"/>
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
</asp:Content>