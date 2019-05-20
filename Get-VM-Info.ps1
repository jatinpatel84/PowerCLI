[cmdletbinding()]            
 param (  
         [parameter(ValueFromPipeline=$true,ValueFromPipelineByPropertyName=$true)]
         [string[]]$VMName = $env:VMName           
       )            

foreach($VM in $VMName)
    {            
        $VMObj = Get-VM -name $VM            
      #  "{0} : {1}" -f $VM, $VMObj.VMHost | Out-File c:\temp\VMESXInfo.csv -append            
      "{0} : {1}" -f $VM, $VMObj.VMHost
}            
