#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO001()
	Local aArea := SB1->(GetArea())
	//Local cMsg := ""
	
	DbSelectArea("SB1") //abrir a tabela SB1
	SB1->(DbSetOrder(1)) //posiciona no indice 1
	SB1->(DbGoTop())
	
	//posiciona o produto de código 000002
	If SB1->(dbSeek(FWXFilial("SB1")+"000002"))
	//dbseek varre a tabela
		Alert(SB1->B1_DESC) //pega a descrição
	EndIf
	
	RestArea(aArea) //fechar a tabela
	
return