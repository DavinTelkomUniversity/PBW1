<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Telu Hub</title>
    <style>
        * {
            box-sizing: border-box;
        }
        .row::after {
            content: "";
            clear: both;
            display: block;
        }
        [class*="col-"] {
            float: left;
            padding: 15px;
        }
        html {
            font-family: "Lucida Sans", sans-serif;
        }
        .header {
            background-color: #50A3A4;
            color: #ffffff;
            padding: 15px;
        }
        .menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
        .menu li {
            padding: 8px;
            margin-bottom: 7px;
            background-color: #FCAF38;
            color: #ffffff;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
        }
        .menu li:hover {
            background-color: #f9a72b;
        }
        .aside {
            background-color: #FCAF38;
            padding: 15px;
            color: #ffffff;
            text-align: center;
            font-size: 14px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
        }
        .produk {
            background-color: #F95335;
            padding: 15px;
            color: #ffffff;
            text-align: center;
            font-size: 14px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
        }
        .footer {
            background-color: #674A40;
            color: #ffffff;
            text-align: center;
            font-size: 12px;
            padding: 15px;
        }
        /* for dektop */
        .col-1 {width: 8.33%;}
        .col-2 {width: 16.66%;}
        .col-3 {width: 25%;}
        .col-4 {width: 33.33%;}
        .col-5 {width: 41.66%;}
        .col-6 {width: 50%;}
        .col-7 {width: 58.33%;}
        .col-8 {width: 66.66%;}
        .col-9 {width: 75%;}
        .col-10 {width: 83.33%;}
        .col-11 {width: 91.66%;}
        .col-12 {width: 100%;}
        /* for mobile */
        @media only screen and (max-width: 768px) {
            [class*="col-"] {
                width: 100%;
            }
        }
        img {
            width: 200px;
        }
    </style>
</head>
<body>
<div class="header">
    <h1>Telu Hub</h1>
</div>

<div class="row">

<div class="col-3 menu">
    <ul>
        <li>Bertanya</li>
        <li>Menjawab</li>
    </ul>
</div>

<div class="col-3">
    <div class="produk">
        <h2>Dimana warung Podomoro?</h2>
        <p>Ada yang tau dimana letaknya?</p>
    </div>
</div>

<div class="col-3">
    <div class="produk">
        <h2>Kapan kemerdekaan RI?</h2>
        <p>Tanggal berapa</p>
    </div>
</div>

<div class="col-3">
    <div class="produk">
        <h2>Siapa rektor Telkom University</h2>
        <p>Ada yang ga hayooo</p>
    </div>
</div>

</div>

<div class="footer">
    <div class="col-12">
        <div class="aside">
            <h2>WhatsApp</h2>
            <p>0851-5649-36692</p>
            <h2>Instagram</h2>
            <p>qwertym</p>
        </div>
    </div>
    <p>Development by <a href="https://hub.telutizen.my.id" target="_BLANK">Qwertym</a></p>
</div>

</body>
</html>