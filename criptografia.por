programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> txt

	caracter alfabeto[27] = {' ', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}
	
	funcao inicio()
	{
  	inteiro chave
  	cadeia palavra
		//escreva("Digite sua palavra predileta: ")
    		//leia(palavra)
		//palavra = txt.caixa_alta(palavra)
		
    		//faca{
      		//escreva("Digite um número de chave de 0 a 25: ")
     		//leia(chave)
   			//}enquanto(chave < 0 ou chave > 25)

   		//criptografar(palavra, chave)

   		limpa()

   		escreva("Digite uma palavra para descriptografar: ")
   		leia(palavra)

   		descriptografar(palavra)
      }



  funcao criptografar(cadeia palavra, inteiro chave){
      inteiro n_caracter = txt.numero_caracteres(palavra)
      inteiro posicao = 0
      
      para(inteiro i=0; i < n_caracter; i++){
		caracter letra = txt.obter_caracter(palavra, i)
      	
      	para(inteiro j=0; j < 27; j++){
      		se(letra == alfabeto[j]){
      			posicao = (j + chave) % 27

 
      		}
      }

      	escreva(alfabeto[posicao])
      }
  }
  funcao descriptografar(cadeia palavra){
      inteiro n_caracter = txt.numero_caracteres(palavra)
      inteiro posicao = 0

      para(inteiro c = 0; c < 26; c++){
			para(inteiro i=0; i < n_caracter; i++){
				caracter letra = txt.obter_caracter(palavra, i)
			      	
	      	para(inteiro j=0; j < 27; j++){
				se(letra == alfabeto[j]){
			      	posicao = (j + c) % 27
						 
			      	}
			}
			
			    escreva(alfabeto[posicao])
			}
			    	escreva("\n")
      }
  }

  
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1302; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */