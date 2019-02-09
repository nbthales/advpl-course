#include 'protheus.ch'
#include 'parmtype.ch'

/*/{Protheus.doc} DEBUG01
//TODO Descrição auto-gerada.
@author nbthales
@since 09/02/2019
@version 1.0@return ${return}, ${return_description}

@type function
/*/
user function DEBUG01()
	Local aArea := GetArea()
	Local aProduto := {}
	Local nCount := 0
	
	//Seleciona a tabela de produtos
	DbSelectArea("SB1")
	SB1->(DbSetOrder(1)) //Seleciona o Indice
	SB1->(DbGoTop())
	
	While ! SB->(EoF()) //Enquanto não for final do arquivo
		aAdd(aProduto,{ SB1->B1_COD,;
						SB1->B1_DESC})
		nCount++
		SB1->(DbSkip())
	EndDo
	
	MsgAlert("Quantidade de Produtos encontrada: <b>"+ cValToChar(nCount))
	
	nCount := 0 //zerando o valor da variável nCount
	
	RestArea(aArea)
	
return