<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msxsl="urn:schemas-microsoft-com:xslt"
exclude-result-prefixes="msxsl">

    <xsl:template match="data">

            <html lang="en">

                <head>
                    <meta charset="UTF-8" />
                    <title>MD</title>
                    <style>
                        @font-face {
                            font-family: 'Caveat';
                            src: url('../fonts/Caveat-Bold.woff') format('woff');
                        }
                        @font-face {
                            font-family: "Exo2";
                            src: url('../fonts/Exo2-ThinItalic.woff') format('woff');
                        }
                        @font-face {
                            font-family: "Comfortaa";
                            src: url('../fonts/Comfortaa-Light.woff')  format('woff');
                        }
                        body {
                            color: whitesmoke;
                        }


                        h1 {
                            font-family: 'Exo2';
                        }


                        h2 {
                            font-family: 'Exo2';
                            margin-bottom: 1.2em;
                            margin-top: 0.2rem;
                            text-indent: 25px;
                            text-align: left;

                        }

                        p {
                            font-family: 'Comfortaa';
                            text-indent: 25px;
                            text-align: center;
                            line-height: 200%;
                            margin-bottom: 0;
                            margin-top: 9px;
                            font-size: 20px;
                        }

                        p::first-letter {
                            font-size: 45px;
                            font-weight: bold;
                            color: rgb(0, 0, 0);
                            background: #E6855F;
                        }

                        ol li {
                            list-style-type: none;
                            counter-increment: item;
                            color: whitesmoke;
                            font-family: 'Comfortaa';
                            font-size: 20px;

                        }

                        ol li:before {
                            content: counter(item, upper-roman) ".";
                            font-size: larger;
                            color:#E6855F;
                        }
                        .lust {
                            margin-bottom: 0;
                        }
                    </style>
                    <link rel="stylesheet" href="../style/style.css" />
                    <link rel="stylesheet" href="../style/navbar.css" />
                    <link rel="stylesheet" media="screen,projection" href="../style/ui.totop.css" />
                    <link rel="stylesheet" href="../style/style3.css"/>
                      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
                    <link rel="icon" href="../img/YG27H4F3_400x400-transformed.ico" />
                </head>

                <body>
               <div id="header">
                 <a href="../index.html"><img src="../img/YG27H4F3_400x400-transformed.png" /></a> 
              </div>
              
        <nav>
            <div class="navbar">
              <div class="container nav-container">
                  <input class="checkbox" type="checkbox" name="" id="" />
                  <div class="hamburger-lines">
                    <span class="line line1"></span>
                    <span class="line line2"></span>
                    <span class="line line3"></span>
                  </div>  
                <div class="logo">
                </div>
                <div class="menu-items">
                  <li><a href="../index.html">Главная</a></li>
                  <li><a href="info.html">Блог</a></li>
                  <li><a href="portfolio.xml">Портфолио</a></li>
                  <li><a href="register.html">Заказы</a></li>
                </div>
              </div>
            </div>
          </nav>

            
        <section class="body">

                    <h1 style="margin-top: 2vh;">Портфолио</h1>
                    <p style="margin-top: 2vh;">Инфографики, кейсы, презентации, мастер-классы — любой обучающий контент можно интересно оформить в технике моушн-дизайн. Информация лучше усваивается, когда она визуально хорошо оформлена. Вместо скучных таблиц и картинок используйте моушн-дизайн. Конечно, все в таком формате не рассказать, но правила, рекомендации, списки лучше сделать в виде анимационного ролика.</p>
                    <p style="margin-top: 2vh;">Моушн-дизайн первоначально появился именно в большом кино. После анимационной работы дизайнера Сола Басса для фильма «Человек с золотой рукой» моушн-дизайн в 1955 году стал «выходить в мир». Сол Басс сделал заставку к фильму, на которой белые линии обратили внимание зрителя на титры, а в конце сложились в изображение руки главного героя.</p>
                    
                    <div class="gif"></div>

                    <p style="margin-top: 2vh;">Основные программы которые программы которые мы изпользуем при реализации заказов и больших проектов в нашей компаннии</p>

                    <div class="sila">
                        <xsl:apply-templates select="images" />
                    </div>
                    </section>

                    <script src="../js/jquery-1.7.2.min.js" type="text/javascript"></script>
                    <script src="../js/easing.js" type="text/javascript"></script>
                    <script src="../js/jquery.ui.totop.js" type="text/javascript"></script>
                    <script type="text/javascript">
                        $(document).ready(function() {
                        $().UItoTop({ easingType: 'easeOutQuart' });

                        });
                    </script>
                </body>
            </html>
    </xsl:template>

     <xsl:template match="images">
        <xsl:apply-templates select="image" />
     </xsl:template>

     <xsl:template match="image">
        <div class="hero">
            <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="url"/>
                </xsl:attribute>
            </img>
        </div>
     </xsl:template>
</xsl:stylesheet>
