programa{
	inclua biblioteca Calendario -->calen
	inclua biblioteca Util-->u
	inteiro voltar, opc2,dia,mes,ano,dia2,mes2,ano2,cal1,cal2,cal3,cal4,cal5,cal6,cal7
	cadeia empee,noli
	cadeia log, sen, zap="admin",zapzap= "123" 
     inteiro devodia=0,devomes=0,devoano=0,ano_atual,dia_mes_atual,mes_atual
	cadeia empres[][] ={{"Código do Livro","Livro"},
	               {"A024u","Contabilidade Básica"},
                    {"A232", "Administração de Pequenas Empresas"},
                    {"C351","Assistente Administrativo"},
                    {"C351a","Empreendedorismo"},
                    {"M3395g","Gestao Estratégica de Pessoas"},
                    {"S631a","Admnistração da Produção"},
                    {"P667g","Gestão da Cadeia de Suprimentos"},
                    {"S551a","Marketing Global"},
                    {"F199m","Mecânica Geral"},
	               {"C886m","Mecânica dos Materiais"},
	               {"V397m","Energias Renováveis"}, 
	               {"G655m","Máquinas Térmicas"},            
	               {"A345a","Materiais Elétricos"},
                    {"M963a","Análise de Circuitos"},
                    {"F182e","Eletromecânica"},
                    {"M264i","Instalações Elétricas Industriais"},
                    {"G219d","Dicionário de Eletrônica"},
                    {"T63s","Motores de Explosão e Diesel"},
                    {"F98l","Transferência de Calor e de Massa"},
                    {"C339m","Máquinas"},
                    {"P221r","Manutenção de Rolamento"},
                    {"K82m","Manual do Ferramenteiro"},
                    {"A994M","Manual de Hidráulica"},                    
                    {"B172i","Instrumentação e Fundamentos de Medidas"},
                    {"C423m","Mecatrônica"},
                    {"G427m","Manual do Encanador Industrial"},
                    {"D451","Desenho Técnico Moderno"},                
                    {"S618i","Introdução a Tec. da Informação"},
                    {"C419n","Metodologia Cientifica"},
                    {"C525f","Firewall e Segurança na Internet"},
                    {"T56n","Organização Estruturada de Computadores"},
                    {"F245l","Lógica e Desing de Programação"},
                    {"A2855e","Compiladores"},
                    {"N633o","Manual Completo do Linux"},
                    {"K95r","Redes de Computadores e a Internet"},
                    {"S491p","Tecnologia da Repintura"},
                    {"S491p","Sistema de Transmissão"},                               
                    {"D886e","O Conde de Monte Cristo"},
                    {"D667","Silvio Santos"},               	  
                    {"A634g","Álgebra Linear"},
                    {"g635f","Física e Realidade"},
                    {"R964q","Química Geral"},
                    {"W633f","Fundamentos de Geologia"},
                    {"A398c","Ecologia dos Pobres"}}

cadeia gestao[][] ={{"Código da Categoria  ","Categoria   ","                CÓdigo do Livro   ","            Livro","                                            Autor   "},
	               {"657","                Contabilidade","                A024u","                            Contabilidade Básica","                            Osni Moura Ribeiro"},
                    {"658","                Gerenciamento de Projetos","A232", "                            Administração de Pequenas Empresas","                    Moore Petty"},
                    {"658","                Empreendedorismo","        C351","                            Assistente Administrativo","                            José Antonio de Mattos Castiglioni"},
                    {"658","                Rotinas Administrativas","        C351a","                            Empreendedorismo","                                    Glauco Cavalcanti"},
                    {"658.3","                Gestão de Pessoas","        M3395-g","                            Gestao estratégica de Pessoas","                    André Ofenhejm Mascarenhas"},
                    {"658.5","                Gestão da Produção","        S631a","                            Admnistração da Produçao","                            Slack Chambers Johnston"},
                    {"658.7","                Gestão de Estoque","        P667g","                            Gestão da Cadeia de Suprimentos","                    Pires"},
                    {"658.8","                Marketing","                S551a","                            Marketing Global","                                    Amalia Sina"}}

cadeia Mecanica[][] ={{"Código da Categoria","Categoria","        Código do Livro","Livro","                                          Autor"},
                     {"620-7","                Mecânica","        F199m","                Mecânica Geral","                                  Matsumura"},
	                {"620.1","                Mecânica dos Materiais","C886m","                Mecânica dos Materiais","                          Roy R. Craig. Jr"},
	                {"621.2","                Engenharia Mecânica","V397m","                Energias Renováveis","                          Rodnei Vecchia"}, 
	                {"621.1","                Máquinas Térmicas","M182e","                Equipamentos Industriais e de Processos","  Macintyre"}}


cadeia Eletrica[][] ={{"Código da Categoria","Categoria","                                  Código do Livro","        Livro","                                 Autor"},
                      {"621.3","                Engenharia Elétrica","                          A345a","                Materiais Elétricos","                 Walfredo Schmdt"},
                      {"621.3.049","        Circuitos Elétricos","                          M963a","                Análise de Circuitos","                 Alln.H.Robbins"},
                      {"621.31","                Medição Elétrica","                          F182e","                Eletromecânica","                         Aurio Gilberto Falcone"},
                      {"621.316.17","        Instalação Elétrica em Edifícios e Vias","  M264i","                Instalações Elétricas Industriais"," José Mamede"},
                      {"621.316.17","        Dispotivo Eletrônico","                          G219d","                Dicionário de Eletrônica","         Giacomo Gardini"},
                      {"621.43","                Motores de Combustão Interna","                  T63s","                        Motores de Explosão e Diesil","         J.Sarmento de Beires"},//procurar codigo pois não achei ára esse
                      {"621.51","                Compressores","                                  F98l","                        Transferência de Calor de Massa"," Ineropera Dewiff Bergman Lavine"},
                      {"621.7","                Tecnologia mecânica","                          C339m","                Máquinas","                         A.L.Casillas"},
                      {"621.8","                Elementos de Máquinas","                          P221r","                Manutenção de Rolamento","         SKF"},
                      {"621.99","                Usinagem","                                  K82m","                        Manual do Ferramenteiro","         J.de Koninck e D Gutter"},
                      {"626","                Hidráulica","                                  A994M","                Manual de Hidráulica","                 Azevedo Netto"}}


cadeia aut[][] ={{"Código da Categoria","Categoria","        Código do Livro","         Livro","                                                 Autor"},
	            {"681.2","                Instrumentação","        B172i","                 Instrumentação e Fundamentos de Medidas","         Balbinot Brusamarello"},
                 {"681.5","                Automação e Controle","C423m","                 Mecatrônica","                                         Cetinkunt"},
                 {"669","                Construção Civil","G427m","                 Manual do Encanador Industrial","                         Antonio Ghizze"},
                 {"744","                Desenho Técnico","        D451","                 Desenho Técnico Moderno","                         Arlindo Silva"}}

cadeia Ti[][]= {{"Código da Categoria","Categoria","                          Código do Livro","   Livro","                                  Autor"},
	          {"001.8","                Metodologia","                          S618i","                   Introdução a Tec. da Informação","          Michael Sipser"},
               {"004","                Informática","                          C419n","                   Metodologia Científica","                  Cervo Bervian da Silva"},
               {"004.056","                Qualidade dos Sistemas e do Software","  C525f","                   Firewall e Segurança na Internet","          Aviel D.Rubin"},
               {"004.2","                Arquitetura dos Computadores","          T56n","                   Organização Estruturada de Computadores","  Andrew S Tenenbaum"},
               {"004.3","                Hardware","                          F245l","                   Lógica e Desing de Programação","          Joyce Farrell"},
               {"004.43","                Linguagem de Programação","          A2855e","           Compiladores","                                  Aho,Lam,Sethi e Ullman"},
               {"004.451","                Interface","                          N633o","                   Manual Completo do Linux","                  Trent R."},
               {"004.7","                Redes de Computadores","                  K95r","                   Redes de Computadores e a Internet","          Kurose Ross"}} 

cadeia automotiva[][]={{"Código da Categoria","Categoria","                Código do Livro","  Livro","                Autor"},
	                   {"629.02","                Prep. de Tintas para Pintura","S491p","                  Tecnologia da Repintura","Henry Fleming Payne"},
                        {"629.331","        Prep. de Pintura Automotiva","S491p","                  Sistema de Transmissão","Jessé Luís Padilha"}}



cadeia Literatura[][]={{"Código da Categoria","Categoria","                                Código do Livro","         Livro","                        Autor"},
	                  {"71.1","                Literatura Estrangeira-Aventura e Ficção","D886e","                         O Conde de Monte Cristo","Aleandre Dumas"},
                       {"72.2","                Literatura Brasileira","                        D667","                         Silvio Santos","                Arlindo Silva"}}


cadeia Matematica[][]={{"Código da Categoria","Categoria","                Código do Livro","Livro","                                 Autor"},
	                  {"51","                Matemática","                A634g","                Álgebra Linear","                         Howard Anton"},
                       {"53","                Física","                        g635f","                Física e Realidade","                 Aurelio Filho Goncalves"},
                       {"54","                Química","                R964q","                Química Geral","                         Russel John B."},
                       {"551","                Geologia","                W633f","                Fundamentos de Geologia","         Wicander Monroe"},
                       {"573","                Biologia","                A398c","                Ecologia dos Pobres","                 Joan Martinez Alier"}}
        inteiro matrizgeral[8][2]
	   inteiro tempo_i = 0 , tempo_f = 5
	   cadeia login[3], senha[3]
        cadeia alunoscadastrados[10][5]
        cadeia cadastro_gestao[4][5]
        cadeia cadastro_ti[4][5]
        cadeia cadastro_matematica[4][5]
        cadeia cadastro_automacao[4][5]
        cadeia cadastro_automotiva[4][5]
        cadeia cadastro_eletrica[4][5]
        cadeia cadastro_literatura[4][5]
        cadeia cadastro_mecanica[4][5]

        
 	  inteiro somar[]={0,0,0,0,0,0,0,0,0,0}
 	  inteiro somarA[] = {0}

        
	  inteiro caLcadas=1, caLemp[2]
	funcao inicio(){   
		
		logar()
			

	}
	funcao temporizadorCAT(){
	enquanto (tempo_i<=tempo_f) {
		u.aguarde(1000)
		tempo_i++
		
		}
		limpa()
		catalogo()		
	}
	
funcao cadastrodealuno(){
       cadeia opc
                  se(somarA[0]<10){
				para(inteiro l = somarA[0]; l <= somarA[0];l ++){
				escreva("Insira o NOME do aluno: ")
				leia(alunoscadastrados[l][0])				
				escreva("Insira o SOBRENOME do aluno: ")
				leia(alunoscadastrados[l][1])
				escreva("Insira CPF do aluno: ")
				leia(alunoscadastrados[l][2])
				escreva("Insira o LOGIN do aluno: ")
				leia(alunoscadastrados[l][3])
				escreva("Insira a SENHA do aluno: ")
				leia(alunoscadastrados[l][4])}
				limpa()
                    escreva("Aluno cadastrado com sucesso!!!\n")
                    escreva("Você já cadastrou um total de ", somarA[0]+1, " aluno(s).\nDeseja fazer um novo cadastro(s/n)? ")
				leia(opc)
				limpa()

				se((opc == "s")ou(opc== "S")){
					somarA[0]+=1
					cadastrodealuno()
				}
				senao se((opc == "n")ou (opc == "N")){
					mainmenu()
			     
				}
				senao{escreva ("Opção não reconhecida. Não se preocupe, enviaremos você até o CADASTRO DE ALUNOS")
				cadastrodealuno()
				}
      		  }
      	senao{
      		 	escreva("Não é possível adicionar mais livros nesse setor.\n")
      		 	limpa()
       
               }
}
funcao logar(){
          
          limpa()
		escreva("-----------------LOGIN------------------\n")
		escreva("Digite seu login: ")
		leia(log)
		escreva("Digite sua senha: ")
		leia(sen)
		limpa()

		

	     se(log == zap  e sen == zapzap ){
	     	limpa()
	       escreva("Bem Vindo, ",zap,".")
	       mainmenu()}

	     senao {
	          escreva("Senha ou login incorreto, tente novamente.\n")
	          logar()
	     }
}

funcao ALcadas(){
cadeia vol

       escreva("\n----------LISTA DE ALUNOS CADASTRADOS--------\n")
       se(alunoscadastrados[0][0] == ""){      	
       escreva("          Não há alunos cadastrados")
       escreva("\n---------------------------------------------\n")
       voltaMenuADMalu()	
       }      
       senao{
       para(inteiro l = 0; l <10;l++){
          para(inteiro c=0; c <5;c++){
       escreva(alunoscadastrados[l][c],"\t")
       }
       escreva("\n")
       }
       voltaMenuADMalu()
}
}
funcao mainmenu(){
      inteiro opc

    escreva("\n----------------MENU----------------\n") 
    escreva("1- Catálogo\n")
    escreva("2- Livros cadastrados.\n")
    escreva("3- Localização.\n")
    escreva("4- Empréstimo/Devolução.\n")
    escreva("5- Cadastro de livro.\n")
    escreva("6- Relatório. \n")
    escreva("7- Alunos cadastrados.\n")
    escreva("8- Cadastro de aluno\n")
    escreva("9- Finalizar \n")
    escreva("\n-------------------------------------\n") 
    escreva("Digite a opção desejada: ")
    leia(opc)
    limpa()

   escolha(opc)
   {
     caso 1:   
     catalogo()
     pare
     caso 2:
     livroscadastrados()
     pare     
     caso 3:     
     Localizacao()
     pare
     caso 4:
     emprestidevo()
     voltaMenuADMalu()
     pare
     caso 5:
	cadastroLivro()
     pare
     caso 6:
     relatorio()
     pare

     caso 7:
     ALcadas()
     pare
     caso 8:
     cadastrodealuno()
     pare
     caso 9:
     escreva("Obrigado, volte sempre.\n")
     pare
     caso contrario:
     escreva ("Opção inválida!\n")
     mainmenu()
   }
}
funcao catalogo()
	{

		inteiro voltaaa, opc
          escreva("-----------------------------------\n")
		escreva("       Biblioteca - Matérias\n")
		escreva("-----------------------------------\n")
		escreva("1- Gestão\n")
		escreva("2- Automação Industrial\n")
		escreva("3- Tecnologia de Informação\n")
		escreva("4- Matemática\n")
		escreva("5- Mecânica\n")
		escreva("6- Elétrica\n")
		escreva("7- Automotiva\n")
		escreva("8- Literatura\n")
		escreva("9- Voltar\n")
		escreva("------------------------------------\n")  
		escreva("Digite a opção desejada: ")
		leia(opc)
		limpa()

		escolha(opc){
		caso 1:
		Gestao()
		temporizadorCAT()
		
		pare
		caso 2:
          automacao()
          temporizadorCAT()
		pare
		caso 3:
          ti()
          temporizadorCAT()
		pare
		caso 4:
          matematica()
          temporizadorCAT()
		pare
		caso 5:
		meca()
		temporizadorCAT()
		pare
		caso 6:
	     eletrica()
	     temporizadorCAT()
		pare

		caso 7:
		Automotiva()
		temporizadorCAT()
		pare

		caso 8:
          lit()
          temporizadorCAT()
		pare
		caso 9:
		limpa()
		mainmenu()
		pare
		caso contrario :
		catalogo()	
     }
	}

     funcao Gestao(){
          limpa()
     	para (inteiro l = 0; l<9; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(gestao[l][c],"\t\t")}
		escreva("\n")
	     }

     }
     funcao automacao(){
          limpa()
		para (inteiro l = 0; l<5; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(aut[l][c],"\t\t")}
		escreva("\n")
	     }
       }

funcao ti(){
     limpa()
     para (inteiro l = 0; l<9; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Ti[l][c],"\t\t")
		}
		escreva("\n")
		} 
}

funcao matematica() {
	limpa()
	para (inteiro l = 0; l<6; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Matematica[l][c]," \t\t")
		}
		escreva("\n")
		}



    }	


funcao eletrica(){
	limpa()
	para (inteiro l = 0; l<12; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Eletrica[l][c]," \t\t")
}
escreva("\n")
	}
}
funcao Automotiva(){
	limpa()
para (inteiro l = 0; l<3; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(automotiva[l][c]," \t\t")

}
escreva("\n")
	}
}

funcao meca(){
	limpa()
	para (inteiro l = 0; l<5; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Mecanica[l][c]," \t\t")
}
escreva("\n")
	}
}

funcao lit(){
	limpa()
	para (inteiro l = 0; l<3; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Literatura[l][c]," \t\t")
}
escreva("\n")
	}
}
funcao cadastroLivro(){
	

	cadeia resp, menu,opc[9]	
	inteiro opca
     cadeia cabecalho[]= {"Setor\t","Nome do livro\t","Autor\t","Código\t"}
	   

	escreva("\n---------------CADASTRO DE LIVRO---------------\n")
	escreva("--------Selecione o setor do seu livro-----------\n")
	escreva("1- Gestão.\n")
	escreva("2- Automação industrial.\n")
	escreva("3- Automotiva.\n")
     escreva("4- Tecnologia da Informação.\n")	
     escreva("5- Literatura.\n")
     escreva("6- Elétrica.\n")
     escreva("7- Mecânica.\n")
     escreva("8- Matemática.\n")
     escreva("9- Voltar.\n")
     escreva("--------------------------------------------------\n")
     escreva("Digite a opção desejada: ")   
     leia(opca)
     limpa()
      escolha(opca){
      	caso 1:   
      		 se(somar[0]<4){
				para(inteiro l = somar[0]; l <= somar[0];l ++){
				escreva("Insira o código da categoria:")
				leia(cadastro_gestao[l][0])				
				escreva("Insira o nome da categoria:")
				leia(cadastro_gestao[l][1])
				escreva("Insira código do livro")
				leia(cadastro_gestao[l][2])
				escreva("Insira o nome do livro")
				leia(cadastro_gestao[l][3])
				escreva("Insira o nome do autor do livro")
				leia(cadastro_gestao[l][4])}
				limpa()
                    escreva("Livro cadastrado com sucesso!!!\n")
                    escreva("deseja fazer um novo cadastro?s/n")
				leia(opc[0])

				se((opc[0] == "s")ou(opc[0] == "S")){
					somar[0]+=1
					cadastroLivro()
				}
				senao se((opc[0] == "n")ou (opc[0] == "N")){
					voltaMenuADMalu()
			     
				}
				senao{escreva ("Opção na reconhecida.Não se preocupe,enviaremos voce até o CADASTRO DE LIVROS")
				cadastroLivro()
				}
      		     }
      		     senao{
      		 	escreva("Não é possível adicionar mais livros nesse setor.\n")
      		 	limpa()
      		 	cadastroLivro()}
      		 
                
				
      	pare
      	caso 2:
      	se(somar[1]<4){
				para(inteiro l = somar[1]; l <= somar[1];l ++){
				escreva("Insira o código da categoria:")
				leia(cadastro_automacao[l][0])				
				escreva("Insira o nome da categoria:")
				leia(cadastro_automacao[l][1])
				escreva("Insira código do livro")
				leia(cadastro_automacao[l][2])
				escreva("Insira o nome do livro")
				leia(cadastro_automacao[l][3])
				escreva("Insira o nome do autor do livro")
				leia(cadastro_automacao[l][4])}
				limpa()
                    escreva("Livro cadastrado com sucesso!!!\n")
				escreva("Deseja fazer um novo cadastro?s/n")
				leia(opc[1])

			se((opc[1] == "s")ou(opc[1] == "S")){
					somar[1]+=1
					cadastroLivro()
				}
			senao se ((opc[1] == "n")ou (opc[1] == "N")){
					voltaMenuADMalu()}
					
		      senao {
				escreva("Opção na reconhecida.Não se preocupe,enviaremos voce até o CADASTRO DE LIVROS.\n")    		 	
				cadastroLivro()} 
      }
      	senao{
      		 	escreva("Não é possível adicionar mais livros nesse setor.\n")
      		 	cadastroLivro()}
      	pare
      	caso 3:
      	se(somar[2]<4){
				para(inteiro l = somar[2]; l <= somar[2];l ++){	
				escreva("Insira o código da categoria:")
				leia(cadastro_automotiva[l][0])				
				escreva("Insira o nome da categoria:")
				leia(cadastro_automotiva[l][1])
				escreva("Insira código do livro")
				leia(cadastro_automotiva[l][2])
				escreva("Insira o nome do livro")
				leia(cadastro_automotiva[l][3])
				escreva("Insira o nome do autor do livro")
				leia(cadastro_automotiva[l][4])}
				limpa()
                    escreva("Livro cadastrado com sucesso!!!\n")
				escreva("Deseja fazer um novo cadastro?s/n")
				leia(opc[2])

				se((opc[2] == "s")ou(opc[2] == "S")){
					somar[2]+=1
					cadastroLivro()
				}
				senao se((opc[2] == "n")ou(opc[2] == "N")){
					voltaMenuADMalu()			     
				}				
      	
      	               senao {
				escreva("Opção na reconhecida.Não se preocupe,enviaremos voce até o CADASTRO DE LIVROS.\n")    		 	
				cadastroLivro()} 
      }
      	senao{
      		 	escreva("Não é possível adicionar mais livros nesse setor.\n")
      		 	limpa()
      		 	cadastroLivro()}
      	pare
      	caso 4:
      	se(somar[3]<4){
				para(inteiro l = somar[3]; l <= somar[3];l ++){
				escreva("Insira o código da categoria:")
				leia(cadastro_ti[l][0])				
				escreva("Insira o nome da categoria:")
				leia(cadastro_ti[l][1])
				escreva("Insira código do livro")
				leia(cadastro_ti[l][2])
				escreva("Insira o nome do livro")
				leia(cadastro_ti[l][3])
				escreva("Insira o nome do autor do livro")
				leia(cadastro_ti[l][4])}
				limpa()
                    escreva("Livro cadastrado com sucesso!!!\n")
				escreva("deseja fazer um novo cadastro?s/n")
				leia(opc[3])

				se((opc[3] == "s")ou(opc[3] == "S")){
					somar[3]+=1
					cadastroLivro()
				}
				senao se((opc[3] == "n")ou(opc[3] == "N")){
					voltaMenuADMalu()
			     
				}
				senao{
      		 	escreva("Opção na reconhecida.Não se preocupe,enviaremos voce até o CADASTRO DE LIVROS.\n")
      		 	
      		    cadastroLivro()
		          limpa()
		          }		      
     }
     senao{
      		 	escreva("Não é possível adicionar mais livros nesse setor.\n")
      		 	limpa()
      		 	cadastroLivro()}
      	pare
      	caso 5:
      	se(somar[4]<4){
				para(inteiro l = somar[4]; l <= somar[4];l ++){
				escreva("Insira o código da categoria:")
				leia(cadastro_literatura[l][0])				
				escreva("Insira o nome da categoria:")
				leia(cadastro_literatura[l][1])
				escreva("Insira código do livro")
				leia(cadastro_literatura[l][2])
				escreva("Insira o nome do livro")
				leia(cadastro_literatura[l][3])
				escreva("Insira o nome do autor do livro")
				leia(cadastro_literatura[l][4])}
				limpa()
                    escreva("Livro cadastrado com sucesso!!!\n")
				escreva("Deseja fazer um novo cadastro?s/n")
				leia(opc[4])

				se((opc[4] == "s")ou(opc[4] == "S")){
					somar[4]+=1
					cadastroLivro()
				}
				senao se((opc[4] == "n")ou(opc[4] == "N")){
					voltaMenuADMalu()
			     
				}
		    senao {
				escreva("Opção na reconhecida.Não se preocupe,enviaremos voce até o CADASTRO DE LIVROS.\n")    		 	
				cadastroLivro()} 
      }
      	senao{
      		 	escreva("Não é possível adicionar mais livros nesse setor.\n")
      		 	limpa()
      		 	cadastroLivro()}
      	pare
      	caso 6:
      	se(somar[5]<4){
				para(inteiro l = somar[5]; l <= somar[5];l ++){
				escreva("Insira o código da categoria:")
				leia(cadastro_eletrica[l][0])				
				escreva("Insira o nome da categoria:")
				leia(cadastro_eletrica[l][1])
				escreva("Insira código do livro")
				leia(cadastro_eletrica[l][2])
				escreva("Insira o nome do livro")
				leia(cadastro_eletrica[l][3])
				escreva("Insira o nome do autor do livro")
				leia(cadastro_eletrica[l][4])}
				limpa()
                    escreva("Livro cadastrado com sucesso!!!\n")
				escreva("Deseja fazer um novo cadastro?s/n")
				leia(opc[5])

				se((opc[5] == "s")ou(opc[5] == "S")){
					somar[5]+=1
					cadastroLivro()
				}
				senao se((opc[5] == "n")ou(opc[5] == "N")){
					voltaMenuADMalu()
			     
				}
				senao{escreva ("Opção na reconhecida.Não se preocupe,enviaremos voce até o CADASTRO DE LIVROS")}
      		     }
      		 senao{
      		 	escreva("Não é possível adicinar mais livros nesse setor.\n")
      		 	limpa()
      		 	cadastroLivro()}
      	pare
      	caso 7:
      	se(somar[6]<4){
				para(inteiro l = somar[6]; l <= somar[6];l ++){
				escreva("Insira o código da categoria:")
				leia(cadastro_mecanica[l][0])				
				escreva("Insira o nome da categoria:")
				leia(cadastro_mecanica[l][1])
				escreva("Insira código do livro")
				leia(cadastro_mecanica[l][2])
				escreva("Insira o nome do livro")
				leia(cadastro_mecanica[l][3])
				escreva("Insira o nome do autor do livro")
				leia(cadastro_mecanica[l][4])}
				limpa()
                    escreva("Livro cadastrado com sucesso!!!\n")
				escreva("Deseja fazer um novo cadastro?s/n")
				leia(opc[6])

				se((opc[6] == "s")ou(opc[6] == "S")){
					somar[6]+=1
					cadastroLivro()
				}
				senao se((opc[6] == "n")ou(opc[6] == "N")){
					voltaMenuADMalu()
				}
			    senao {
				escreva("Opção na reconhecida.Não se preocupe,enviaremos voce até o CADASTRO DE LIVROS.\n")    		 	
				cadastroLivro()} 
      }
      	senao{
      		 	escreva("Não é possível adicionar mais livros nesse setor.\n")
      		 	limpa()
      		 	cadastroLivro()}
      	pare
      	caso 8:
      	se(somar[7]<4){
				para(inteiro l = somar[7]; l <= somar[7];l ++){
				escreva("Insira o código da categoria:")
				leia(cadastro_matematica[l][0])				
				escreva("Insira o nome da categoria:")
				leia(cadastro_matematica[l][1])
				escreva("Insira código do livro")
				leia(cadastro_matematica[l][2])
				escreva("Insira o nome do livro")
				leia(cadastro_matematica[l][3])
				escreva("Insira o nome do autor do livro")
				leia(cadastro_matematica[l][4])}
				limpa()
                    escreva("Livro cadastrado com sucesso!!!\n")
				escreva("Deseja fazer um novo cadastro?s/n")
				leia(opc[7])

				se((opc[7] == "s")ou(opc[7] == "S")){
					somar[7]+=1
					cadastroLivro()
				}
				senao se((opc[7] == "n")ou(opc[7] == "N")){
					voltaMenuADMalu()
			     
				}
		    senao {
				escreva("Opção na reconhecida.Não se preocupe,enviaremos voce até o CADASTRO DE LIVROS.\n")    		 	
				cadastroLivro()} 
      }
      	senao{
      		 	escreva("Não é possível adicionar mais livros nesse setor.\n")
      		 	limpa()
      		 	cadastroLivro()}
      	pare
      	caso 9:
      	limpa()
      	mainmenu()
      	pare
      	caso contrario:
      	cadastroLivro()
      	pare
      }
			

}

funcao Localizacao(){
	inteiro opc

		escreva("Qual é a sessão do livro desejado?\n")
		escreva("1) Gestão\n")
		escreva("2) Automação Industrial\n")
		escreva("3) Tecnologia de Informação\n")
		escreva("4) Matemática\n")
		escreva("5) Mecânica\n")
		escreva("6) Elétrica\n")
		escreva("7) automotiva\n")
		escreva("8) Literatura\n")
		escreva("9) Voltar\n")
		escreva("---------------------------------------\n")  
		escreva("Digite a opção desejada: ")
		leia(opc)

escolha(opc){
caso 1:
gestaoopc()
voltaLoc()
pare	
caso 2:
autopc()
voltaLoc()
pare	
caso 3:
tiopc()
voltaLoc()
pare
caso 4:
matopc()
voltaLoc()
pare
caso 5:
mecopc()
voltaLoc()
pare
caso 6:
eleopc()
voltaLoc()
pare
caso 7:
automopc()
voltaLoc()
pare 
caso 8:
litopc()
voltaLoc()
pare
caso 9:
limpa()
mainmenu()
pare
caso contrario:
Localizacao()
pare
		      }
	}
	funcao gestaoopc(){
			
      	  inteiro opcg
		  limpa() 	
      	  escreva("Qual a subsessão do livro desejado?\n")
		  escreva("1- Contabilidade.\n")
		  escreva("2- Gerenciamento de projetos.\n")
		  escreva("3- Empreendedorismo.\n")
		  escreva("4- Rotinas administrativas.\n")
		  escreva("5- Gestão de pessoas.\n")
		  escreva("6- Gestão de produção.\n")
		  escreva("7- Gestao de estoque.\n")
		  escreva("8- Marketing.\n")
		  escreva("Digite a opção desejada: ")
		  leia(opcg) 

		      escolha(opcg){
		      caso 1:

		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t")
		           }

		           escreva("\n")
		       }

		         pare
		         caso 2:

		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare
		         caso 3:

		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare
		         caso 4:

		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t")

		           }
		           escreva("\n")
		       }
		         pare
		         caso 5:

		       para(inteiro l= 5;l<6;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare
		         caso 6:

		       para(inteiro l= 6;l<7;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t")

		           }
		           escreva("\n")
		       }
		         pare
		         caso 7:

		       para(inteiro l= 7;l<8;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare
		         caso 8:

		       para(inteiro l= 8;l<9;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare
		         caso contrario:
		         gestaoopc()
		         pare


		      }
	}
	funcao autopc(){

		  inteiro opcaut
		  limpa() 	
		  escreva("Qual a subsessão do livro desejado?\n")
		  escreva("1- Instruimentação.\n")
		  escreva("2- Automaçao e controle.\n")
		  escreva("3- Construção civíl.\n")
		  escreva("4- Desenho técnico.\n")
		  escreva("Digite a opção desejada: ") 
		  leia(opcaut)
		  escolha(opcaut){
		  caso 1:

		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(aut[l][c],"\t")
		           }

		           escreva("\n")
		       }

		         pare
		         caso 2:

		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(aut[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare
		         caso 3:

		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(aut[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare
		         caso 4:

		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(aut[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare	
		         caso contrario:
		         autopc()
		         pare	  
		  }	     
}

//

funcao tiopc(){

		  inteiro opcti
            limpa() 
		  escreva("Qual a subsessão do livro desejado?\n")
		  escreva("1- Metodologia.\n")
		  escreva("2- Informatica.\n")
		  escreva("3- Qualidade dos sistemas e do software.\n")
		  escreva("4- Arquitetura dos computadores.\n")
		  escreva("5- Hardware.\n")
		  escreva("6- Linguagem de programação.\n")
		  escreva("7- Interface.\n")
		  escreva("8- Redes de computadores.\n")
		  escreva("Digite a opção desejada: ")
		  leia(opcti)

		  escolha(opcti){
		  caso 1:

		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t")
		  }

		           escreva("\n")
		  }

		         pare
		         caso 2:

		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t")

		  }
		           escreva("\n")
		  }
		         pare
		         caso 3:

		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t")

		  }
		           escreva("\n")
		  }
		         pare
		         caso 4:

		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t")

		  }
		           escreva("\n")
		  }
		         pare
		         caso 5:

		       para(inteiro l= 5;l<6;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t")
		  }

		           escreva("\n")
		  }
		         pare
		         caso 6:

		       para(inteiro l= 6;l<7;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t")

		  }
		           escreva("\n")
		  }
		         pare
		         caso 7:

		       para(inteiro l= 7;l<8;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t")
		  }

		           escreva("\n")
		  }
		         pare
		         caso 8:

		       para(inteiro l= 8;l<9;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t")

		  }
		           escreva("\n")
		  }
		         pare
		         caso contrario:
		         tiopc()
		         pare
		  }
}

//

funcao matopc() {

		  inteiro opcmat
            limpa() 
		  escreva("qual a subsessão do livro desejado?\n")
		  escreva("1- Matematica.\n")
		  escreva("2- Fisica.\n")
		  escreva("3- Química.\n")
		  escreva("4- Geologia.\n")
		  escreva("5- Biologia.\n")
		  escreva("Digite a opção desejada: ")
		  leia(opcmat)

		  escolha(opcmat){
		  caso 1:

		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Matematica[l][c],"\t")

	}
		           escreva("\n")
	}

		         pare
		         caso 2:

		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Matematica[l][c],"\t")

		           }
		           escreva("\n")
		       }
		         pare
		         caso 3:

		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Matematica[l][c],"\t")

		           }
		           escreva("\n")
		       }

		         pare
		         caso 4:

		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Matematica[l][c],"\t")

		           }
		           escreva("\n")
		       }
		         pare
		         caso contrario:
		         matopc()
		         pare
		  }
}

//

funcao mecopc(){

		inteiro opcmeca
            limpa() 
		  escreva("Qual a subsessão do livro desejado?\n")
		  escreva("1- Mecanica\n")
		  escreva("2- Mecanica dos materiais.\n")
		  escreva("3- Engenharia mecanica.\n")
		  escreva("4- Maquinas términas.\n")
		  escreva("Digite a opção desejada: ")
		  leia(opcmeca)

		  escolha(opcmeca){
		  caso 1:

		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Mecanica[l][c],"\t")

	}	           
		           escreva("\n")
	}

		         pare
		         caso 2:

		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Mecanica[l][c],"\t")
	}	           

		           escreva("\n")
	}
		         pare
		         caso 3:

		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Mecanica[l][c],"\t")

	}	           
		           escreva("\n")
	}
		         pare
		         caso 4:

		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Mecanica[l][c],"\t")

		           }
		           escreva("\n")
		       }

		         pare
		         caso contrario:
		         matopc()
		         pare
		  }
}

//

funcao eleopc(){

	inteiro opcele
            limpa() 
		  escreva("Qual a subsessão do livro desejado?\n")
		  escreva("1-  Engenharia elétrica.\n")
		  escreva("2-  Circuitos elétricos.\n")
		  escreva("3-  Mediçao elétrica.\n")
		  escreva("4-  Instalação Elétrica em edifícios e vias.\n")
		  escreva("5-  Dispotivo Eletrônico.\n")
		  escreva("6-  Motores de combustão interna.\n")
		  escreva("7-  Compressores.\n")
		  escreva("8-  Tecnologia mecânica.\n")
		  escreva("9-  Elementos de máquinas.\n")
		  escreva("10- Usinagem.\n")
		  escreva("11- Hidráulica.\n")
		  escreva("Digite a opção desejada: ")
		  leia(opcele)

		  escolha(opcele){
		  caso 1:

		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")
	}	           

		           escreva("\n")
	}

		         pare
		         caso 2:

		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")
	}

		           escreva("\n")
	}
		         pare
		         caso 3:

		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")

		           }
		           escreva("\n")
		       }
		         pare
		         caso 4:

		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")

	}
		           escreva("\n")
	}
		         pare
		         caso 5:

		       para(inteiro l= 5;l<6;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")

	                 }
		           escreva("\n")
	                }
		         pare
		         caso 6:

		       para(inteiro l= 6;l<7;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")

		           }
		           escreva("\n")
		       }
		         pare
		         caso 7:

		       para(inteiro l= 7;l<8;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")

		           }
		           escreva("\n")
		           }
		         pare
		         caso 8:

		       para(inteiro l= 8;l<9;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")

		           }
		           escreva("\n")
		           }
		         pare
		         caso 9:

		       para(inteiro l= 9;l<10;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")

		           }
		           escreva("\n")
		           }
		         pare
		         caso 10:

		       para(inteiro l= 10;l<11;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")

		           }
		           escreva("\n")
		           }
		         pare
		         caso 11:

		       para(inteiro l= 11;l<12;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t")

		           }
		           escreva("\n")
		           }
		         pare
		         caso contrario:
		         eleopc()
		         pare
		  }
}

//

funcao automopc(){

	 inteiro opcautomo
		limpa() 
	 	escreva("Qual é a sessão do livro desejado?\n")
		escreva("1) Prep. de tintas para pintura\n")
		escreva("2) Prep. de Pintura Automotiva \n")
		escreva("Digite a opção desejada: ")
		leia(opcautomo)
		escolha(opcautomo){
		caso 1:

		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(automotiva[l][c],"\t")

		           }
		           escreva("\n")
		       }

		         pare
		 caso 2:

		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(automotiva[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare
		         caso contrario:
		         automopc()
		         pare
		}
}

//

funcao litopc(){

	 inteiro opclit
		limpa() 
		escreva("Qual é a sessão do livro desejado?\n")
		escreva("1- Literatura Estrangeira-Aventura e Ficção.\n")
		escreva("2- Literatura Brasileira. \n")
		escreva("Digite a opção desejada: ")
		leia(opclit)
		escolha(opclit){
		caso 1:

		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Literatura[l][c],"\t")

		           }
		           escreva("\n")
		       }

		         pare
		 caso 2:

		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Literatura[l][c],"\t")
		           }

		           escreva("\n")
		       }
		         pare
		         caso contrario:
		         litopc()
		         pare
		}
}
funcao emprestidevo(){
caLemp[0]=1


		escreva("     EMPRESTIMO - DEVOLUÇÃO\n")
		escreva("------------------------------------\n")
		escreva("1- Emprestimo\n")
		escreva("2- Devolução\n")
		escreva("3- Voltar\n")
		escreva("------------------------------------\n")  
		escreva("Digite a opção desejada: ")
		leia(opc2)
		limpa()

		escolha(opc2){
		caso 1:
		para (inteiro l = 0; l<45; l++){
			para (inteiro c = 0; c<2; c++){
			escreva("|",empres[l][c],"\t        \t")}
		escreva("\n")
	     }

	    escreva("______________________________________________________________\n\n") 
         escreva("Informe o codigo ou nome do livro que deseja pegar emprestado: ")
         leia(empee)
         limpa() 
         se(empee == empres[1][0] ou empee == empres[1][1]){
         	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[1][1],"\n","data de devolução:em até 10 dias")

         }
         senao se(empee == empres[2][0] ou empee == empres[2][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[2][1],"\n","data de devolução:em até 10 dias")
         }
          senao se(empee == empres[3][0] ou empee == empres[3][1]){
          		caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[3][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[4][0] ou empee == empres[4][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[4][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[5][0] ou empee == empres[5][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[5][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[6][0] ou empee == empres[6][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[6][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[7][0] ou empee == empres[7][1]){
         	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[7][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[8][0] ou empee == empres[8][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[8][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[9][0] ou empee == empres[9][1]){
            escreva("Livro:",empres[9][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[10][0] ou empee == empres[10][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[10][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[11][0] ou empee == empres[11][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[11][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[12][0] ou empee == empres[12][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[12][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[13][0] ou empee == empres[13][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[13][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[14][0] ou empee == empres[14][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[14][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[15][0] ou empee == empres[15][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[15][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[16][0] ou empee == empres[16][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[16][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[17][0] ou empee == empres[17][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[17][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[18][0] ou empee == empres[18][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[18][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[19][0] ou empee == empres[19][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[19][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[20][0] ou empee == empres[20][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[20][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[21][0] ou empee == empres[21][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[21][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[22][0] ou empee == empres[22][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[22][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[23][0] ou empee == empres[23][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[23][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[24][0] ou empee == empres[24][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[24][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[25][0] ou empee == empres[25][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[25][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[26][0] ou empee == empres[26][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[26][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[27][0] ou empee == empres[27][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[27][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[28][0] ou empee == empres[28][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[28][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[29][0] ou empee == empres[29][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[29][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[30][0] ou empee == empres[30][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[30][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[31][0] ou empee == empres[31][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[31][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[32][0] ou empee == empres[32][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[32][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[33][0] ou empee == empres[33][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[33][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[34][0] ou empee == empres[34][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[34][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[35][0] ou empee == empres[35][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[35][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[36][0] ou empee == empres[36][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[36][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[37][0] ou empee == empres[37][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[37][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[38][0] ou empee == empres[38][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[38][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[39][0] ou empee == empres[39][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[39][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[40][0] ou empee == empres[40][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[40][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[41][0] ou empee == empres[41][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[41][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[42][0] ou empee == empres[42][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[42][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[43][0] ou empee == empres[43][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[43][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[44][0] ou empee == empres[44][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[44][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[45][0] ou empee == empres[45][1]){	caLemp[0]=caLemp[0]+1
            escreva("Livro:",empres[45][1],"\n","data de devolução:em até 10 dias")
         }
         senao{
         	escreva("Setor nao encontrado")
         voltaemprestidevo()
         }
         voltaemprestidevo()

		pare
		caso 2:
          escreva("Informe o nome ou código do livro")
          leia(noli)

          se(noli == empres[1][0] ou noli == empres[1][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[1][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
          }senao se(noli == empres[2][0] ou noli == empres[2][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = (dia+10)-devodia
          limpa()
          escreva("Livro:",empres[2][1],"\n")
          escreva("Emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[3][0] ou noli == empres[3][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[3][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[4][0] ou noli == empres[4][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[4][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[5][0] ou noli == empres[5][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[5][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[6][0] ou noli == empres[6][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[6][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[7][0] ou noli == empres[7][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[7][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[8][0] ou noli == empres[8][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[8][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[9][0] ou noli == empres[9][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[9][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
         escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[10][0] ou noli == empres[10][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[10][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[11][0] ou noli == empres[11][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[11][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[12][0] ou noli == empres[12][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[12][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[13][0] ou noli == empres[13][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[13][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[14][0] ou noli == empres[14][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[14][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[15][0] ou noli == empres[15][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[15][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[16][0] ou noli == empres[16][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[16][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[17][0] ou noli == empres[17][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[17][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[18][0] ou noli == empres[18][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[18][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[19][0] ou noli == empres[19][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[19][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[20][0] ou noli == empres[20][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[20][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[21][0] ou noli == empres[21][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[21][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[22][0] ou noli == empres[22][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[22][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[23][0] ou noli == empres[23][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[23][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[24][0] ou noli == empres[24][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[24][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
          }senao se(noli == empres[25][0] ou noli == empres[25][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[25][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[26][0] ou noli == empres[26][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[26][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
          }senao se(noli == empres[27][0] ou noli == empres[27][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[27][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[28][0] ou noli == empres[28][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[28][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[29][0] ou noli == empres[29][1]){
         escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[29][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[30][0] ou noli == empres[30][1]){
         escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[30][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
         escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
           }senao se(noli == empres[31][0] ou noli == empres[31][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[31][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
          }senao se(noli == empres[32][0] ou noli == empres[32][1]){
          escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[32][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
          }senao se(noli == empres[33][0] ou noli == empres[33][1]){
         escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("Livro:",empres[33][1],"\n")
          escreva("Empréstimo:",dia,"/",mes,"/",ano,"\n")
          escreva("Devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("Atraso:",cal7," dias")
          }senao se(noli == empres[34][0] ou noli == empres[34][1]){
         escreva("Informe o dia que realizou o empréstimo")
          leia(dia)
          escreva("Informe o dia que realizou o empréstimo")
          leia(mes)
          escreva("Informe o dia que realizou o empréstimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[34][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[35][0] ou noli == empres[35][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[35][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[36][0] ou noli == empres[36][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[36][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[37][0] ou noli == empres[37][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[37][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[38][0] ou noli == empres[38][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[38][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[39][0] ou noli == empres[39][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[39][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[40][0] ou noli == empres[40][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[40][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[41][0] ou noli == empres[41][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[41][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[42][0] ou noli == empres[42][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[42][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[43][0] ou noli == empres[43][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[43][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[44][0] ou noli == empres[44][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[44][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[45][0] ou noli == empres[45][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          devodia = calen.dia_mes_atual()
		devomes = calen.mes_atual()
		devoano = calen.ano_atual()
          cal1 = dia-devodia
          cal2 = devomes-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+devodia
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[45][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",devodia,"/",devomes,"/",devoano,"\n")
          escreva("atraso:",cal7," dias")



          }senao{
          escreva("livro não encontrado")
          emprestidevo()

          }

		pare
		caso 3:
          limpa()
		mainmenu()
          pare
          caso contrario:
          emprestidevo()
		pare
}
}
funcao livroscadastrados(){
       inteiro opc
          escreva("\n--------LIVROS CADASTRADOS--------\n")
		escreva("1) Gestão\n")
		escreva("2) Automação Industrial\n")
		escreva("3) Tecnologia de Informação\n")
		escreva("4) Matemática\n")
		escreva("5) Mecânica\n")
		escreva("6) Elétrica\n")
		escreva("7) automotiva\n")
		escreva("8) Literatura\n")
		escreva("9) Voltar\n")
		escreva("---------------------------------------\n")  
		escreva("Digite a opção desejada: ")
		leia(opc)
		limpa()
	       escolha(opc){
	       
	    caso 1:
	    se(cadastro_gestao[0][1]== ""){
	    	escreva("Não há novos livros cadastrados na sessão de Gestao.")
	    	voltaMenuADMalu()}
	    	senao{
	    		
	    para(inteiro l= 0; l<4;l++){
	    	   para(inteiro c=0;c<4;c++){
         escreva("[",cadastro_gestao[l][c],"]  \t")
         }
         escreva("\n")
	    }
         voltaMenuADMalu()
	    
	    }
	    pare
	    caso 2:
	    se(cadastro_automacao[0][1]== ""){
	    	escreva("Não há novos livros cadastrados na sessão de Automação.")
	    	voltaMenuADMalu()}
	    	senao{
	    para(inteiro l= 0; l<4;l++){
	    	   para(inteiro c=0;c<4;c++){
         escreva("[",cadastro_automacao[l][c],"]  \t")
         }
         escreva("\n")
	    }
	    voltaMenuADMalu()
	    }
	    pare
	    caso 3:
	    se(cadastro_ti[0][1]== ""){
	    	escreva("Não há novos livros cadastrados na sessão de Tecnologia da Informação.")
	    	voltaMenuADMalu()}
	    	senao{
	    para(inteiro l= 0; l<4;l++){
	    	   para(inteiro c=0;c<4;c++){
         escreva("[",cadastro_ti[l][c],"]  \t")
         }
         escreva("\n")
	    }
	    voltaMenuADMalu()
	    	}
	    pare
	    caso 4:
	    se(cadastro_matematica[0][1]== ""){
	    	escreva("Não há novos livros cadastrados na sessão de Matemática.")
	    	voltaMenuADMalu()}
	    	senao{
	    para(inteiro l= 0; l<4;l++){
	    	   para(inteiro c=0;c<4;c++){
         escreva("[",cadastro_matematica[l][c],"]   \t")
         }
         escreva("\n")
	    }
	    voltaMenuADMalu()
	    	}
	    pare
	    caso 5:
	    se(cadastro_mecanica[0][1]== ""){
	    	escreva("Não há novos livros cadastrados na sessão de Mecânica.")
	    	voltaMenuADMalu()}
	    	senao{
	    para(inteiro l= 0; l<4;l++){
	    	   para(inteiro c=0;c<4;c++){
         escreva("[",cadastro_mecanica[l][c],"]   \t")
         }
         escreva("\n")
	    }
	    voltaMenuADMalu()
	    	}
	    pare
	    caso 6:
	    se(cadastro_eletrica[0][1]== ""){
	    	escreva("Não há novos livros cadastrados na sessão de Elétrica.")
	    	voltaMenuADMalu()}
	    	senao{
	    para(inteiro l= 0; l<4;l++){
	    	   para(inteiro c=0;c<4;c++){
         escreva("[",cadastro_eletrica[l][c],"]   \t")
         }
         escreva("\n")
	    }
	    voltaMenuADMalu()
	    	}
	    pare
	    caso 7:
	    se(cadastro_automotiva[0][1]== ""){
	    	escreva("Não há novos livros cadastrados na sessão de Automotiva.")
	    	voltaMenuADMalu()}
	    	senao{
	    para(inteiro l= 0; l<4;l++){
	    	   para(inteiro c=0;c<4;c++){
         escreva("[",cadastro_automotiva[l][c],"]")
         }
         escreva("\n")
	    }
	    voltaMenuADMalu()
	    	}
	    pare
	    caso 8:
	    se(cadastro_literatura[0][1]== ""){
	    	escreva("Não há novos livros cadastrados na sessão de Literatura")
	    	voltaMenuADMalu()}
	    	senao{
	    para(inteiro l= 0; l<4;l++){
	    	   para(inteiro c=0;c<4;c++){
         escreva("[",cadastro_literatura[l][c],"]")
         }
         escreva("\n")
	    }
	    voltaMenuADMalu()
	    	}
	    pare
	    caso 9:
	    limpa()
		mainmenu()
	    pare
	    caso contrario:
	    livroscadastrados()
	    pare
}
}	
funcao relatorio(){
	escreva("total de livros:")
	escreva("Livros emprestados")
	escreva("Novos livros cadastrados:")
	escreva("Livros disponiveis")

	voltaMenuADMalu()
}

















funcao alumenu(){
	
	inteiro opc

    escreva("\n----------------MENU----------------\n") 
    escreva("1- Catálogo\n")
    escreva("2- Localização.\n")
    escreva("3- Outros livro.\n")
    escreva("4- Finalizar \n")
    escreva("\n-------------------------------------\n") 
    escreva("Digite a opção desejada: ")
    leia(opc)
    limpa()

   escolha(opc)
   {
     caso 1:   
     catalogo()
     pare     
     caso 2:     
     Localizacao()
     pare
     caso 3:
	livroscadastrados()
     pare
    
     caso 4:
     escreva("Obrigado, volte sempre.\n")
     pare
     caso contrario:
     escreva ("Opção inválida!\n")
     alumenu()
   }
}




funcao voltaemprestidevo(){
  	cadeia volta
escreva("\n\n1)Deseja pegar outro livro emprestado\n2)voltar ao menu\n(digite 1 ou 2 )? ")
    leia(volta)

    se(volta == "1"){
      emprestidevo() 
    }
    senao{
    voltaMenuADMalu()
    }
}


	 funcao voltaLoc(){
		cadeia volta
	  	
	 	escreva("\n\nDeseja voltar ao menu principal (s ou n)? ")
   		 leia(volta)

		    se(volta == "s"){
		    	 limpa()
		      mainmenu()    
		    }
		    senao se(volta == "n"){
		    	 limpa()
		      Localizacao()
		    }
	  	}
   funcao voltaMenuADMalu(){
   cadeia sn
   	
   	
          se(log == zap e sen == zapzap){
         	escreva("\ndeseja voltar ao menu?(s/n)")
          leia(sn)
         
	     	se(sn == "s"){limpa()
	       
	       mainmenu()}
	       senao{
   			limpa()
   			escreva("Fim\n")
   		}
	       }
	       
   	senao{
   		escreva("\nDeseja voltar ao menu?(s/n)")
          leia(sn)
         
	     	se(sn == "s"){
   		limpa()
   		alumenu()
   		}
   		senao{
   			limpa()
   			escreva("Fim")
   		}
   }
   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 21291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */