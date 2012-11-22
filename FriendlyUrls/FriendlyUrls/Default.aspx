<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FriendlyUrls._Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:ListView runat="server" ItemType="WebFormsMusicStore.Models.Album" DataKeyNames="AlbumID" ID="AlbumList" SelectMethod="AlbumList_GetData">
        <LayoutTemplate>
            <ul>
                <asp:PlaceHolder ID="itemPlaceHolder" runat="server" />
            </ul>
        </LayoutTemplate>
        <ItemTemplate>
            <li>
                <a href="Album/Edit/<%# Item.AlbumId %>"><%# Item.Title %></a>
            </li>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
