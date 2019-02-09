#include 'protheus.ch'
#include 'parmtype.ch'

user function BANCO005()

	Local aArea := GetArea()
	Local aDados := {}
	Private lMSErroAuto := .F.
	
	aDados := {;
				{"B1_COD",	"111111", 			Nil},;
				{"B1_DESC",	"PRODUTO TESTE", 	Nil},;
				{"B1_TIPO",	"GG", 				Nil},;
				{"B1_UM",	"PC", 				Nil},;
				{"B1_LOCPAD",	"01", 			Nil},;
				{"B1_PICM",	0, 					Nil},;
				{"B1_IPI",	0, 					Nil},;
				{"B1_CONTRAT",	"N", 			Nil},;
				{"B1_LOCALIZ",	"N", 			Nil};
			   }
			   
	// INICIO DO CONTROLE DE TRANSAÇÃO
	Begin Transaction
		//chama cadastro de produto
	MSExecAuto({|x,y|Mata010(x,y)},aDados,3)
	
	// CASO OCORRA ALGUM ERRO
		If lMSErroAuto
			Alert("Ocorreram erros durante a operação!")
			MostraErro()		
			DisarmTransaction()
		Else
			MsgInfo("Operação finalizada!", "Aviso")
		EndIf
	End Transaction
	
	RestArea(aArea)
		
return