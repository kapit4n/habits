using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NUnit.Framework;
using NUnit.Framework.Internal;

public class HabitTests
{
  public HabitTests()
  {
  }

  [Test]
  void Test1()
  {
    Assert.AreEqual(1, 1, "This is the first example of tests");
  }
}