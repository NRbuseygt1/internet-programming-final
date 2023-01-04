<script>
    function showData(str) {
        if (str == "") {
            document.getElementById("resultData").innerHTML = "";
            return;
        } else {
            if (window.XMLHttpRequest) {
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            } else {
                // code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("resultData").innerHTML = xmlhttp.responseText;
                }
            }
            xmlhttp.open("GET", "getList.php?q=" + str, true);
            xmlhttp.send();
        }
    }
</script>
</head>
<body>
    <form method="post">
        <table>
            <tr>
                <td><h4>Select a category from where you want to update the item :</h4></td>
            </tr>
            <tr>
                <td>
                    <select onchange="showData(this.value + ',' + 'update')">
                        <option value="Select a category">Select one</option>
                                        <option value="aksiyon oyuncak">aksiyon oyuncak</option>
                                        <option value="hayvanlar">hayvanlar</option>
                                        <option value="arabalar">arabalar</option>
                                        <option value="bebekler">bebekler</option>
                                        <option value="yapbozlar">yapbozlar</option>
                                        <option value="Spor">Spor</option>
                       
                    </select>
                </td>
            </tr>
        </table>
    </form>
    <br>
    <div id="resultData"><b>gadgets will be listed here...</b></div>
</body>