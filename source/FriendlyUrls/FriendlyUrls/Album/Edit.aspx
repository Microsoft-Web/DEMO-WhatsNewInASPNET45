<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="FriendlyUrls.Edit" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:FormView runat="server" ItemType="WebFormsMusicStore.Models.Album"
        DataKeyNames="AlbumId" ID="EditAlbum"
        SelectMethod="EditAlbum_GetItem"
        UpdateMethod="EditAlbum_UpdateItem">
        <EditItemTemplate>
            AlbumId:
            <asp:Label ID="AlbumIdLabel1" runat="server" Text='<%# Item.AlbumId %>' />
            <br />
            Genre:
            <asp:DropDownList runat="server" SelectMethod="GetGenres" DataTextField="Name" 
                DataValueField="GenreId" ID="Genre" SelectedValue="<%# Item.GenreId %>"  />
            <br />
            Artist:
            <asp:DropDownList runat="server" SelectMethod="GetArtists" DataTextField="Name" 
                DataValueField="ArtistId" ID="Artist" SelectedValue="<%# Item.ArtistId %>"  />
            <br />
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Item.Title %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Item.Price %>' />
            <br />
            AlbumArtUrl:
            <asp:TextBox ID="AlbumArtUrlTextBox" runat="server" Text='<%# Item.AlbumArtUrl %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Genre:
            <asp:DropDownList runat="server" SelectMethod="GetGenres" DataTextField="Name" ID="Genre" />
            <br />
            Artist:
            <asp:DropDownList runat="server" SelectMethod="GetArtists" DataTextField="Name" ID="Artist" />
            <br />
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" />
            <br />
            AlbumArtUrl:
            <asp:TextBox ID="AlbumArtUrlTextBox" runat="server" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            AlbumId:
            <asp:Label ID="AlbumIdLabel" runat="server" Text='<%# Item.AlbumId %>' />
            <br />
            Genre:
            <asp:Label ID="GenreIdLabel" runat="server" Text='<%# Item.Genre.Name %>' />
            <br />
            Artist:
            <asp:Label ID="ArtistIdLabel" runat="server" Text='<%# Item.Artist.Name %>' />
            <br />
            Title:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Item.Title %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Item.Price %>' />
            <br />
            AlbumArtUrl:
            <br />
            <asp:Label ID="AlbumArtUrlLabel" runat="server" Text='<%# Item.AlbumArtUrl %>' />
            <br />
            <asp:Image ImageUrl="<%# Item.AlbumArtUrl %>" runat="server" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        </ItemTemplate>
        <EmptyDataTemplate>
            <asp:LinkButton ID="Insert" runat="server" CausesValidation="False" CommandName="New" Text="Create an album" />
        </EmptyDataTemplate>
    </asp:FormView>
</asp:Content>