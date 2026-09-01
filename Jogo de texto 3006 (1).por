programa
{
	funcao inicio()
	{
		inteiro HpCasa = 150
		inteiro ervilhas = 5
		inteiro girassois = 2
		inteiro batatas = 3
		inteiro ervilha_fogo = 0
		inteiro zumbis_mortos = 0
		inteiro horda = 1
		inteiro hphorda = 25
		inteiro quantidade_zumbis = 10 
		inteiro decisao
		inteiro tirosErvilha = 5
		inteiro tirosErvilha_fogo = 10
		logico escudo = falso
		logico ervilha_fogo_desbloqueada = falso // Corrigido aqui (adicionado o 'r')
		
		enquanto (HpCasa > 0 e horda <= 5) 
		{
			escreva("\n======== Status ========\n")
			escreva("\nHorda:", horda, ".")
			escreva("\nZumbis restantes:", quantidade_zumbis, ".")
			escreva("\nHP da casa: ", HpCasa, ".")
			escreva("\nZumbis mortos:", zumbis_mortos, ".")
			escreva("\n======== Inventário ========\n")
			escreva("Ervilhas: ", ervilhas, " (tiros restantes: ", tirosErvilha, ")\n")
			escreva("Girassois: ", girassois, "\n")
			escreva("Batatas: ", batatas, "\n")
			escreva("Ervilha de fogo: ", ervilha_fogo, " (tiros restantes: ", tirosErvilha_fogo, ")\n")
			escreva("\n 1 - Usar ervilha\n")
			escreva("2 - Usar girassol (cura)\n")
			escreva("3 - Usar batata (escudo)\n")
			escreva("4 - Usar ervilha de fogo\n")
			escreva("Escolha: ")
			leia(decisao)
			
			escolha (decisao)
			{
				caso 1: // Adicionado os dois-pontos
					se (ervilhas > 0 e quantidade_zumbis > 0)
					{
						se (tirosErvilha > 0)
						{
							hphorda = hphorda - 25						
							tirosErvilha = tirosErvilha - 1 
							escreva("\n Ervilha acertou o zumbi!\n")
				
							se (hphorda <= 0)
							{
								zumbis_mortos = zumbis_mortos + 1
								quantidade_zumbis = quantidade_zumbis - 1
								hphorda = 25 
								escreva("\nZumbi eliminado!")
							}
						}
						senao 
						{ 
							ervilhas = ervilhas - 1
							tirosErvilha = 5
							escreva("\n Uma ervilha ficou sem munição e foi descartada!\n")
						}
					}
					pare
					
				caso 2:
					se (girassois > 0)
					{
						HpCasa = HpCasa + 40
						girassois = girassois - 1
						se (HpCasa > 150)
						{
							HpCasa = 150 
							escreva ("\n A casa atingiu a vida máxima de 150 pontos!") 
						}
					}
					senao 
					{
						escreva ("\n Sem girassois!\n")
					}
					pare
					
				caso 3:
					se (batatas > 0)
					{
						escudo = verdadeiro
						batatas = batatas - 1 
						escreva("\n Escudo ativado")
					}
					senao
					{
						escreva("\n Sem batatas!")
					}
					pare
		
				caso 4:
					// Corrigido os nomes das variáveis na linha abaixo
					se (ervilha_fogo_desbloqueada e ervilha_fogo > 0)
					{
						hphorda = hphorda - 50
						tirosErvilha_fogo =  tirosErvilha_fogo - 1
		
						se (hphorda <= 0)
						{
							zumbis_mortos = zumbis_mortos + 1
							quantidade_zumbis = quantidade_zumbis - 1
							hphorda = 25
							escreva ("\nZumbi obliterado")
						}
					}
					senao
					{
						escreva("\nErvilha de fogo indisponível")
					}
					pare
					
				caso contrario:
					escreva ("\n Essa opcao nao esta disponível")
					pare
			}
			
			// Ataque dos zumbis turno a turno
			se (quantidade_zumbis > 0)
			{
				se (escudo)
				{
					HpCasa = HpCasa - 2
					escudo = falso
				}
				senao
				{
					HpCasa = HpCasa - 10
				}
			}
	
			// Próxima horda
			se (quantidade_zumbis <= 0)
			{
				escreva("\n======== HORDA CONCLUÍDA ========\n")
	
				horda = horda + 1
				quantidade_zumbis = 10 + (horda * 2)
				hphorda = 25 // Corrigido: O HP de cada zumbi individual continua sendo 25

				ervilhas = ervilhas + 3
				girassois = girassois + 1
				batatas = batatas + 1
	
				se (horda == 3)
				{
					ervilha_fogo = 1
					ervilha_fogo_desbloqueada = verdadeiro
					escreva("\nErvilha de fogo desbloqueada!\n")
				}
			}
		}
	
		// Final do jogo
		se (HpCasa > 0)
		{
			escreva("\n======== VOCÊ VENCEU ========\n")
		}
		senao
		{
			escreva("\n======== GAME OVER ========\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3857; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */