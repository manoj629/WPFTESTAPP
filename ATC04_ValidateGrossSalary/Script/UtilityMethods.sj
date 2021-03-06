﻿//USEUNIT GlobalMethods

function main()
{ 
  //First close the application if it is  up.
  Log.AppendFolder("0.Closing the application");
  closeApplication(Aliases.WpfSampleApplication.WPF_MainWindow);
  Log.PopLogFolder();
  
  //Launch the application.
  Log.AppendFolder("1.Launch the WPF Sample Application.")
  TestedApps.WpfSampleApplication.Run();
  
  //Verify the components on the page.
  verifyObject(Aliases.WpfSampleApplication.WPF_MainWindow);
  
  Log.PopLogFolder();
  
  //Closing the application.
  closeApplication(Aliases.WpfSampleApplication.WPF_MainWindow);
} 
 

