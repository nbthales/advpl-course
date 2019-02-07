#include 'protheus.ch'
#include 'parmtype.ch'

user function BLOCO()
	
//Local bBloco := {|| Alert("Olá Mundo!")}
//	Eval(bBloco)
	
	//Passagem por parâmetros - Bloco de códigos
	Local bBloco := {|cMsg| Alert(cMsg)}
		Eval(bBloco, "Olá Mundo!")
	
return