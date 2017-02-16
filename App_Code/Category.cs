using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ecommerce;
/// <summary>
/// Summary description for Category
/// </summary>
public static class Category
{
    private static DataSetTableAdapters.CategoryTableAdapter ds = new DataSetTableAdapters.CategoryTableAdapter();
    public static void list() {
         foreach(DataSet.CategoryRow row in ds.GetData())
        {
            Console.WriteLine(row.Name);
        }
    }
}