<%@ Page Title="" Language="C#" MasterPageFile="~/ASPPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FinalProjectUpdated.ASPPages.HomePage" %>

<asp:Content ID="HomePage" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/Pages/StyleSheetHomePage.css" rel="stylesheet" />
    <script src="../JavaScriptFiles/ImageCarousel.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header>
        <h1>ברוכים הבאים לחנות התקליטים!</h1>
        <p>היעד המוזיקלי האולטימטיבי שלך!</p>
    </header>

    <main runat="server">
        <!-- Introduction Section -->
        <section id="intro">
            <h2>קצת על האתר</h2>
            <p>גלו את התקליטים והאמנים הטובים ביותר בז'אנרים שונים. חקור אלבומים, שירים וסרטוני מוזיקה.</p>
        </section>

        <!-- Featured Artists Section -->
        <section aria-label="Newest photos">
            <div class="carousel-container">
                <div class="carousel" data-carousel="true">
                    <button class="carousel-button prev" data-carousel-button="prev" type="button">&#8656;</button>
                    <button class="carousel-button next" data-carousel-button="next" type="button">&#8658;</button>
                    <ul data-slides="true">
                        <li class="slide" data-active="true">
                            <img src="../pictures/AlbumsPictures/Reputation.jpg" />
                        </li>
                        <li class="slide">
                            <img src="../pictures/AlbumsPictures/Midnights3am.jpg" />
                        </li>
                        <li class="slide">
                            <img src="../pictures/AlbumsPictures/Harry'sHouse.jpg" />
                        </li>
                        <li class="slide">
                            <img src="../pictures/AlbumsPictures/NFR.jpg" />
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <%--<!-- Genres Section -->
        <section id="genres">
            <h2>Genres</h2>
            <ul>
                <li><a href="genres/pop.html">Pop</a></li>
                <li><a href="genres/rock.html">Rock</a></li>
                <li><a href="genres/indie_folk.html">Indie Folk</a></li>
            </ul>
        </section>

        <!-- Call to Action Section -->
        <section id="cta">
            <h2>Join Our Community</h2>
            <p>Sign up to stay updated with the latest records and more!</p>
            <a href="signup.html" class="btn">Sign Up</a>
            <a href="login.html" class="btn">Log In</a>
        </section>--%>
    </main>



</asp:Content>
