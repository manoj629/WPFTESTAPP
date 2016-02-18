﻿
//Function to verify the existence of the object.
function verifyObject(obj)
{
  if(obj.Exists)
    Log.Message("WPF application has been launched.");
  else
    Log.Error("Application is not up");
}

//Function to close the application.
function closeApplication(obj)
{
  if(!obj.Exists)
    Log.Message("application is closed");
  else
    obj.Close(100);
}