$hosts = @(

"VCenter001.local",
"VCenter002.local",
"VCenter003.local"
);

Connect-VIServer -server $hosts 
