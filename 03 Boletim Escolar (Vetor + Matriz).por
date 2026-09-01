
		programa

{

    funcao inicio()

    {

        inteiro m[3][2]
        cadeia v[3] 
	real media[3]

 		para ( inteiro x=0; x<3; x++)

	   {

		  escreva("Nome ", x+1, ":")

		  leia(v[x])
		     }
		     	 

	   
        para (inteiro i = 0; i < 3; i++)

        {

            para (inteiro j = 0; j < 2; j++)

            {

                leia(m[i][j])

            }

        }

     
       para (inteiro i = 0; i < 3; i++)
{
    real soma = 0

    para (inteiro j = 0; j < 2; j++)
    {
        soma = soma + m[i][j]
    }

    media[i] = soma / 2
    escreva("Média ", v[i], ": ", media[i], "\n")
          }

     }
      }



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 498; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */