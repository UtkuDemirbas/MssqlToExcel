using ClosedXML.Excel;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace MsSqlToExcel
{
	public partial class MsSqlToExcelPage2 : System.Web.UI.Page
	{
		string conn = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;//db ConnectionString
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		string Query = string.Format(@"SELECT [hgsID],[hgsNumarasi],[aciklama] FROM [dbo].[Hgs_Kurum]");
		protected void BtnKaydet_Click(object sender, EventArgs e)
		{
			
			using (SqlConnection con = new SqlConnection(conn))
			{
				using (SqlCommand cmd = new SqlCommand(Query))
				{
					using (SqlDataAdapter sda = new SqlDataAdapter())
					{
						cmd.Connection = con;
						sda.SelectCommand = cmd;
						using (DataTable dt = new DataTable())
						{
							sda.Fill(dt);
							using (XLWorkbook wb = new XLWorkbook())
							{
								wb.Worksheets.Add(dt, "DEMO");
								Response.Clear();
								Response.Buffer = true;
								Response.Charset = "";
								Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
								Response.AddHeader("content-disposition", "attachment;filename=DEMO.xlsx");
								using (MemoryStream MyMemoryStream = new MemoryStream())
								{
									wb.SaveAs(MyMemoryStream);
									MyMemoryStream.WriteTo(Response.OutputStream);
									Response.Flush();
									Response.End();
								}
							}
						}
					}
				}
			}
		}

		protected void BtnDataYükle_Click(object sender, EventArgs e)
		{
			
			using (SqlConnection con = new SqlConnection(conn))
			{
				using (SqlCommand cmd = new SqlCommand(Query, con))
				{
					using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
					{
						DataTable dt = new DataTable();
						sda.Fill(dt);
						GridExcel.DataSource = dt;
						GridExcel.DataBind();
					}
				}
			}
		}
	}
}
