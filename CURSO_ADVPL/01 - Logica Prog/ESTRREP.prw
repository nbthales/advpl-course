#include 'protheus.ch'
#include 'parmtype.ch'

user function ESTRREP()
	/*
	Local nCount
	Local nNum := 0
	
	//For nCount := 0 To 10
	For nCount := 0 To 10 Step 2 //de 2 em 2
	nNum += nCount
	Next
	Alert("Valor: "+cValToChar(nNum))
	*/
	
	// Exemplo do comando while enddo
	/*Local nNum1 := 0
	Local nNum2 := 10
	
	While nNum1 < nNum2
		nNum1++
	EndDo
		Alert(nNum1 + nNum2)
	*/
	Local nNum1 := 1
	Local cNome := "RCTI"
	
	While nNum1 != 10 .AND. cNome != "PROTHEUS"
		nNum1++
			If nNum1 == 5
			cNome := "PROTHEUS"
			EndIf
	EndDo
		Alert("Numero: " + cValToChar(nNum1))
		Alert("Nome: " + cValToChar(cNome))
return