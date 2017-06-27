using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewHabit : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    MSSQLLocalDBEntities1 ss = new MSSQLLocalDBEntities1();
    
  }

  protected void saveHabit_Click(object sender, EventArgs e)
  {
    
  }
}