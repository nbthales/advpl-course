/*

O cliente solicita o desenvolvimento de uma tratativa
no sistema ERP da empresa, onde n�o pode ser permitido
que usu�rio inclua produto do tipo "PA" com a conta
cont�bil "001".
*/

#include 'protheus.ch'
#include 'parmtype.ch'

user function A010TOK()
	Local lExecuta := .T.
	Local cTipo := AllTrim(M->B1_TIPO)
	Local cConta := AllTrim(M->B1_CONTA)
	
		If (cTipo = "PA" .AND. cConta = "001")
			Alert("A conta <b> "+ cConta + "</b> n�o pode estar "+ ;
			"associada a um produto do tipo <b>"+ cTipo)
			
			lExecuta := .F.
		EndIf
			
return(lExecuta)