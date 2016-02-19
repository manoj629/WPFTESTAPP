//@ComboBoxObj:The ComboBox Object.
//@Itemname:The item name that will be selected.

function SelectDropdownItem(ComboBoxObj, Itemname)
{
var Items = Aliases.WpfSampleApplication.WPF_MainWindow.comboBox_SelectEmployee.FindChild();
Log.Message("hello" + Items);
var ItemCount = Items.elementCount;
//To find item's index.
for(var itemIndex=0;itemIndex<ItemCount;itemIndex++)
 {
   if(Items.elementData.Items(itemIndex)==Itemname)
    {
     ComboBoxObj.ClickItem(itemIndex);
     Log.Message("Successfully clicked at the item:" + Itemname);
     return;
	 
    } 
 }
 Log.Error("Can't find item:"+Itemname);
}

function ClickonButton(Obj)
{
  Obj.Click(); 
}

function verifyTextBoxItems(Obj,Value)
{
   Log.Message(Obj.wText);
   if (Obj.wText == Value)
   {
      Log.Message("Data Match");
   }
   else
   {
      Log.Error("Mismatch");
   }
}

function higlightScreen(obj,count,color)
{
  Sys.HighlightObject(obj,count,color);
}

function closeApplication(obj)
{ 
  if(Aliases.WpfSampleApplication.WPF_MainWindow.Exists)
    obj.Close(100);
}
