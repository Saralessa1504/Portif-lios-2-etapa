programa
{
    funcao inicio()
    {
        inteiro m[3][3]
        inteiro soma = 0

        para (inteiro i = 0; i < 3; i++)
        {
            para (inteiro j = 0; j < 3; j++)
            {
                leia(m[i][j])
                soma = soma + m[i][j]
            }
        }

        escreva("soma de todos os números da matriz: ", soma)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 264; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */