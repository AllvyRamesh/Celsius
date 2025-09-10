<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="Celsius.WebForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature Converter</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            background: #fff;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 350px;
            text-align: center;
        }
        .card h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .row {
            margin-bottom: 15px;
            text-align: left;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
            color: #444;
        }
        input[type="text"], select {
            width: 100%;
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }
        input[type="text"]:focus, select:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0,123,255,0.5);
        }
        .btn {
            background: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 15px;
            width: 100%;
            transition: background 0.3s ease;
        }
        .btn:hover {
            background: #0056b3;
        }
        .result {
            margin-top: 20px;
            font-size: 16px;
            color: #333;
            font-weight: bold;
        }
        .error {
            margin-top: 15px;
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h2>🌡 Temperature Converter</h2>
            
            <div class="row">
                <label for="txtValue">Value</label>
                <asp:TextBox runat="server" ID="txtValue" />
            </div>

            <div class="row">
                <label for="ddlFrom">From</label>
                <asp:DropDownList runat="server" ID="ddlFrom">
                    <asp:ListItem Text="Celsius" Value="C" />
                    <asp:ListItem Text="Fahrenheit" Value="F" />
                    <asp:ListItem Text="Kelvin" Value="K" />
                </asp:DropDownList>
            </div>

            <div class="row">
                <label for="ddlTo">To</label>
                <asp:DropDownList runat="server" ID="ddlTo">
                    <asp:ListItem Text="Celsius" Value="C" />
                    <asp:ListItem Text="Fahrenheit" Value="F" />
                    <asp:ListItem Text="Kelvin" Value="K" />
                </asp:DropDownList>
            </div>

            <div class="row">
                <asp:Button runat="server" Text="Convert" ID="btnConvert" CssClass="btn" OnClick="btnConvert_Click" />
            </div>

            <div class="row">
                <asp:Label runat="server" ID="lblResult" CssClass="result" ForeColor="Red" />
            </div>
        </div>
    </form>
</body>
</html>