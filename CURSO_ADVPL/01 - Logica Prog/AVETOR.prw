#include 'protheus.ch'
#include 'parmtype.ch'

user function AVETOR()
	
	// Arrays: S�O COLE��ES DE VALORES, SEMELHANTES A UMA LISTA
	// CADA ITEM TEM UM ARRAY � REFERENCIADO PELA INDICA��O DE SUA POSI��O NUM�RICA, INICIANDO PELO N�MERO 1.
	
	Local dData := Date()
	Local aValores := {"Jo�o", dData, 100}
	
	Alert(aValores[2]) // exibe a posicao 2 do array
	Alert(aValores[3])
	
return