#!/bin/sh
cat << "EOF"
                          .          ..          ..                                              .       ..          .x+=:.   
                         @88>  . uW8"      x .d88"                                              @88>   dF           z`    ^%  
             .u    .     %8P   `t888        5888R         .u    .                .d``           %8P   '88bu.           .   <k 
      .    .d88B :@8c     .     8888   .    '888R       .d88B :@8c        u      @8Ne.   .u      .    '*88888bu      .@8Ned8" 
 .udR88N  ="8888f8888r  .@88u   9888.z88N    888R      ="8888f8888r    us888u.   %8888:u@88N   .@88u    ^"*8888N   .@^%8888"  
<888'888k   4888>'88"  ''888E`  9888  888E   888R        4888>'88"  .@88 "8888"   `888I  888. ''888E`  beWE "888L x88:  `)8b. 
9888 'Y"    4888> '      888E   9888  888E   888R        4888> '    9888  9888     888I  888I   888E   888E  888E 8888N=*8888 
9888        4888>        888E   9888  888E   888R        4888>      9888  9888     888I  888I   888E   888E  888E  %8"    R88 
9888       .d888L .+     888E   9888  888E   888R       .d888L .+   9888  9888   uW888L  888'   888E   888E  888F   @8Wou 9%  
?8888u../  ^"8888*"      888&  .8888  888"  .888B .     ^"8888*"    9888  9888  '*88888Nu88P    888&  .888N..888  .888888P`   
 "8888P'      "Y"        R888"  `%888*%"    ^*888%         "Y"      "888*""888" ~ '88888F`      R888"  `"888*""   `   ^"F     
   "P'                    ""       "`         "%                     ^Y"   ^Y'     888 ^         ""       ""                  
                                                                                   *8E                                        
                                                                                   '8>                                        
                                                                                    "                                         
EOF

#Make sure Docker is running
sudo docker run hello-world

#Create the containers
sudo docker compose up -d

cat << "EOF"
                          .          ..          ..                                              .       ..          .x+=:.   
                         @88>  . uW8"      x .d88"                                              @88>   dF           z`    ^%  
             .u    .     %8P   `t888        5888R         .u    .                .d``           %8P   '88bu.           .   <k 
      .    .d88B :@8c     .     8888   .    '888R       .d88B :@8c        u      @8Ne.   .u      .    '*88888bu      .@8Ned8" 
 .udR88N  ="8888f8888r  .@88u   9888.z88N    888R      ="8888f8888r    us888u.   %8888:u@88N   .@88u    ^"*8888N   .@^%8888"  
<888'888k   4888>'88"  ''888E`  9888  888E   888R        4888>'88"  .@88 "8888"   `888I  888. ''888E`  beWE "888L x88:  `)8b. 
9888 'Y"    4888> '      888E   9888  888E   888R        4888> '    9888  9888     888I  888I   888E   888E  888E 8888N=*8888 
9888        4888>        888E   9888  888E   888R        4888>      9888  9888     888I  888I   888E   888E  888E  %8"    R88 
9888       .d888L .+     888E   9888  888E   888R       .d888L .+   9888  9888   uW888L  888'   888E   888E  888F   @8Wou 9%  
?8888u../  ^"8888*"      888&  .8888  888"  .888B .     ^"8888*"    9888  9888  '*88888Nu88P    888&  .888N..888  .888888P`   
 "8888P'      "Y"        R888"  `%888*%"    ^*888%         "Y"      "888*""888" ~ '88888F`      R888"  `"888*""   `   ^"F     
   "P'                    ""       "`         "%                     ^Y"   ^Y'     888 ^         ""       ""                  
                                                                                   *8E                                        
                                                                                   '8>                                        
                                                                                    "                                         
EOF

#find the current ip of the instance
URL=$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')

#Set the urls for the services
PROMETHEUS_URL=http://$URL:9090
CRIBL_URL=http://$URL:19000
GRAFANA_URL=http://$URL:3000

echo To Access Cribl open $CRIBL_URL in your web browser
echo To Access Prometheus open $PROMETHEUS_URL in your web browser
echo To Access Grafana open $GRAFANA_URL in your web browser
