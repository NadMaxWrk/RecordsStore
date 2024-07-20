<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.HomePage" %>

<asp:Content ID="HomePage" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Pages/StyleSheetHomePage.css" rel="stylesheet" />
    <script src="../JavaScriptFiles/ImageCarousel.js" defer></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header>
        <h1>ברוכים הבאים לחנות התקליטים!</h1>
        <p>היעד המוזיקלי האולטימטיבי שלך!</p>
        <p class="subtext">גלו את התקליטים והאמנים הטובים ביותר בז'אנרים שונים. חקרו אלבומים, שירים וקליפים .</p>
    </header>

    <main runat="server">

        <!-- Featured Artists Section -->
        <section aria-label="Newest photos">
            <h2>אמנים</h2>
            <div class="carousel-container">
                <div class="carousel" data-carousel="true">
                    <button class="carousel-button prev" data-carousel-button="prev" type="button">&#8656;</button>
                    <button class="carousel-button next" data-carousel-button="next" type="button">&#8658;</button>
                    <ul data-slides="true">
                        <li class="slide" data-active="true">
                            <a href="../Artists/TaylorSwift/TaylorSwiftAlbumsPage.aspx">
                                <img src="../pictures/Artists%20Carousel%20Pictures/TaylorFinal.jpg" />
                            </a>
                        </li>
                        <li class="slide">
                            <a href="../Artists/LanaDelRey/LanaDelReyAlbumsPage.aspx">
                                <img src="../pictures/Artists%20Carousel%20Pictures/LanaFinal.jpg" />
                            </a>
                        </li>
                        <li class="slide">
                            <a href="../Artists/HarryStyles/HarryStylesAlbumsPage.aspx">
                                <img src="../pictures/Artists%20Carousel%20Pictures/HarryFinal.jpg" />
                            </a>    
                        </li>
                        <li class="slide">
                            <a href="../Artists/BillieEilish/BillieEilishAlbumsPage.aspx">
                                 <img src="../pictures/Artists%20Carousel%20Pictures/BillieFinal.jpg" />
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
    </main>



</asp:Content>
