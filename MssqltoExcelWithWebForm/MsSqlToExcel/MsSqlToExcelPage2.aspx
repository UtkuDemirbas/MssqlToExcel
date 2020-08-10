<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MsSqlToExcelPage2.aspx.cs" Inherits="MsSqlToExcel.MsSqlToExcelPage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MssqlToExcel</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>
<body >
    
        <form runat="server" >
            <div class="d-flex justify-content-center" >
                <asp:GridView ID="GridExcel" runat="server" AutoGenerateColumns="true" ShowHeaderWhenEmpty="true" CssClass="table  table-responsive table-striped ml-2">
                    <Columns>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="row">
                <asp:Button runat="server" ID="BtnDataYükle" CssClass="btn btn-danger ml-3" Text="Sayfaya Yükle" OnClick="BtnDataYükle_Click" />
                <asp:Button ID="BtnKaydet" runat="server" CssClass="btn btn-danger ml-2" Text="Kaydet" OnClick="BtnKaydet_Click" />
            </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </form>
   
</body>
</html>

