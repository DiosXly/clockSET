#!/bin/bash
###############
#  clockSET   #
# v0.0.1#dev  #
###############
#             #
#      |      #
#      |      #
#      o      #
#       \     #
#        \    #
#             #
###############
#VARIAVEIS - NAO MEXA...
updatehora="sudo ntpdate -u"
red=$'\e[1;31m'
grn=$'\e[1;32m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
white=$'\e[0m'
mostrar="echo -e"
#FIM DAS VARIAVEIS

if [ "$1"  == "" ] #se parametro-1 for igual a nada
then #então
 echo -e "$blu"
 figlet "clockSET"
 echo -e "$white"
 echo "[ $blu @ $white ] Especifique país. EX ./clockset.sh brasil"

else  #senão
 echo -e "$blu"
 figlet "clockSET"
 echo -e "$white"
 echo "[ $grn @ $white ] Setando hora para $1"
 echo "[ $red @ $white ] *Necessário permissão root para alterar o relógio*"


fi #fim.

#####################################################
#                 BRASIL 1,2,3                      #
#####################################################
#                    ntp.br                         #
#                                                   #
###################### PARAMETRO brasil
if [ "$1" == "brasil" ]
then
$updatehora a.ntp.br &> /dev/null
$mostrar "$grn Comando executado com sucesso. Verifique, caso esteja errado tente outro servidor EX: brasil2 $white" 
fi
####################### PARAMETRO brasil2
if [ "$1" == "brasil2" ]
then
$updatehora b.ntp.br &> /dev/null 
$mostrar "$grn Comando executado com sucesso. Verifique, caso haja erros novamente tente o brasil3 e sucessivamente $white" 
fi
####################### PARAMETRO brasil3
if [ "$1" == "brasil3" ]
then
$updatehora c.ntp.br &> /dev/null 
$mostrar "$grn Comando executado com sucesso. Verifique, caso haja erros novamente tente o brasil3 e sucessivamente $white" 
fi
#####################################################
#                       FIM                         #
#####################################################

