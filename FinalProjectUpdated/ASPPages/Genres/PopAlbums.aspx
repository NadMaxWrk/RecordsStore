<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="PopAlbums.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.Genres.PopAlbums" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Genres/PopStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="image-container">
        <div>
            <a  href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/1989.aspx") %>">
                <img src="../pictures/1989.jpg" />
            </a>
            <div style="text-align:center; font-family: Calibri;">1989 (Taylor's Version) </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/Midnights.aspx") %>">
                <img src="../pictures/Midnights3am.jpg" />
            </a>
            <div style="text-align:center; font-family: Calibri;">Midnights (3am Edition) </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/Lover.aspx") %>">
                <img src="../pictures/Lover.jpg" />
            </a>
            <div style="text-align:center; font-family: Calibri;">Lover </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/Reputation.aspx") %>">
                <img src="../pictures/Reputation.jpg" />
            </a>
            <div style="text-align:center; font-family: Calibri;">Reputation </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/TTPD.aspx") %>">
                <img src="../pictures/TTPD.jpg" />
            </a>
            <div style="text-align:center; font-family: Calibri;">THE TORTURED POETS DEPARTMENT </div>
        </div>

    </div>
    <div class="image-container">
        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/TaylorSwift/TaylorAlbums/RED.aspx") %>">
                <img src="../pictures/RED.jpg" />
            </a>
            <div style="text-align:center; font-family: Calibri;">Red (Taylor's Version)</div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/BillieEilish/BillieAlbums/HTE.aspx") %>">
                <img src="../pictures/HappierThanEver.jpg" />
            </a>
            <div style="text-align:center; font-family: Calibri;">Happier Than Ever </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/BillieEilish/BillieAlbums/WWAFAWDWG.aspx") %>">
                <img src="../pictures/whenweallfallasleepwheredowego.jpg" />
            </a>
            <div style="text-align:center; font-family: Calibri;">WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?</div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/HarryStyles/HSAlbumsPages/FineLine.aspx") %>">
                <img src="../pictures/FineLine.jpg" />
            </a>
            <div style="text-align:center; font-family: Calibri;">Fine Line </div>
        </div>

        <div>
            <a href="<%= ResolveUrl("~/ASPPages/Artists/HarryStyles/HSAlbumsPages/HS.aspx") %>">
                <img src="../pictures/HarryStyles-albumcover.png" />
            </a>
            <div style="text-align:center; font-family: Calibri;">Harry Styles </div>
        </div>

    </div>
    <div class="image-container">
    <div>
        <a href="<%= ResolveUrl("~/ASPPages/Artists/HarryStyles/HSAlbumsPages/HarrysHouse.aspx") %>">
            <img src="../pictures/Harry'sHouse.jpg" />
        </a>
        <div style="text-align:center; font-family: Calibri;">Harry's House</div>
    </div>

    <div>
        <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/DYKTTATUOB.aspx") %>">
            <img src="../pictures/didyouknowtheresatunnel.jpg" />
        </a>
        <div style="text-align:center; font-family: Calibri;">Did you know that there's a tunnel under ocean blvd </div>
    </div>

    <div>
        <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/Honeymoon.aspx") %>">
            <img src="../pictures/honeymoon.jpg" />
        </a>
        <div style="text-align:center; font-family: Calibri;">Honeymoon</div>
    </div>

    <div>
        <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/Ultraviolence.aspx") %>">
            <img src="../pictures/Ultraviolence.jpg" />
        </a>
        <div style="text-align:center; font-family: Calibri;">Ultraviolence </div>
    </div>

    <div>
        <a href="<%= ResolveUrl("~/ASPPages/Artists/LanaDelRey/LDRalbums/BornToDie.aspx") %>">
            <img src="../pictures/BornToDIe.jpg" />
        </a>
        <div style="text-align:center; font-family: Calibri;">Born To Die </div>
    </div>

</div>
    
</div>
</asp:Content>
