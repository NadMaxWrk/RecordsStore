<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="HarryStylesAlbumsPage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.Artists.HarryStyles.HarrysAlbumsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../StyleSheets/HSAlbums.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="image-container">
            <a href="HSAlbumsPages/HS.aspx">
                <img src="../../pictures/HarryStyles-albumcover.png" />
            </a>
            <div class="caption">Harry Styles</div>
        </div>
        <div class="image-container">
            <a href="HSAlbumsPages/FineLine.aspx">
                <img src="../../pictures/FineLine.jpg" />
            </a>
            <div class="caption">Fine Line</div>
        </div>
        <div class="image-container">
            <a href="HSAlbumsPages/HarrysHouse.aspx">
                <img src="../../pictures/Harry'sHouse.jpg" />
            </a>
            <div class="caption">Harry's House</div>
        </div>
    </div>


</asp:Content>
