programa
{
	inclua biblioteca Util-->u
	cadeia empres[][] ={{"*codigo do livro*","*livro*"},
	               {"A024u","contabilidade basica"},
                    {"A232", "Administração de pequenas empresas"},
                    {"C351","Assistente Admnistrativo"},
                    {"C351a","Empreendedorismo"},
                    {"M3395-g","gestao estraegica de pessoas"},
                    {"S631a","Admnistração da produçao"},
                    {"P667g","Gestão da Cadeia de Suprimentos"},
                    {"S551a","Marketing Global"},
                    {"F199m","mecanica geral"},
	               {"C886m","Mecânica dos Materiais"},
	               {"V397m","Energias Renovaveis"}, 
	               {"G655m","maquinas termicas"},            
	               {"A345a","Materiais Elétricos"},
                    {"M963a","Análise de Circuitos"},
                    {"F182e","Eletromecânica"},
                    {"M264i","Instalações Eleticas Industriais"},
                    {"G219d","Dicionário de Eletrônica"},
                    {"T63s","Motores de Explosão e Disiel"},
                    {"F98l","Transferência de calor de massa"},
                    {"C339m","Máquinas"},
                    {"P221r","Manutenção de Rolamento"},
                    {"K82m","Manual do Ferramenteiro"},
                    {"A994M","Manual de Hidráulica"},                    
                    {"B172i","Instrumentação e Fundamentos de Medidas"},
                    {"C423m","Mecatronica"},
                    {"G427m","Manual do Encanador Industrial"},
                    {"D451","Desenho Tecnico Moderno"},                
                    {"S618i","Introdução a Tec. da informação"},
                    {"C419n","Metodologia Cientifica"},
                    {"C525f","Firewall e Segurança na Internet"},
                    {"T56n","Organização Estruturada de Computadores"},
                    {"F245l","Lógica e Desing de Programação"},
                    {"A2855e","Compiladores"},
                    {"N633o","Manual Completo do Linux"},
                    {"K95r","Redes de Computadores e a Internet"},
                    {"S491p","Tecnologia da Repintura"},
                    {"S491p","Sistema de Transmissão"},                               
                    {"D886e","O Conde de Monte Criste"},
                    {"D667","Silvio Santos"},               	  
                    {"A634g","Álgebra Linear"},
                    {"g635f","Física e realidade"},
                    {"R964q","Química Geral"},
                    {"W633f","Fundamentos de Geologia"},
                    {"A398c","Ecologia dos Pobres"}}
                    
cadeia gestao[][] ={{"codigo da categoria","categoria","codigo do livro","livro","autor"},
	               {"657","contabilidade","A024u","contabilidade basica","Osni Moura Ribeiro"},
                    {"658","gerenciamento de projetos", "A232", "Administração de pequenas empresas","Moore Petty"},
                    {"658","empreendedorismo","C351","Assistente Admnistrativo","José Antonio de Mattos Castiglioni"},
                    {"658","rotinas administraivas","C351a","Empreendedorismo","Glauco Cavalcanti"},
                    {"658.3","gestao de pessoas","M3395-g","gestao estratégica de pessoas","André Ofenhejm Mascarenhas"},
                    {"658.5","gestao da produção","S631a","Admnistração da produçao","Slack Chambers johnston"},
                    {"658.7","gestao de estoque","P667g","Gestão da Cadeia de Suprimentos","Pires"},
                    {"658.8","marketing","S551a","Marketing Global","Amalia Sina"}}

cadeia Mecanica[][] ={{"codigo da categoria","categoria","codigo do livro","livro","autor"},
                     {"620-7","mecanica","F199m","mecanica geral","Matsumura"},
	                {"620.1","mecanica dos materiais","C886m","Mecânica dos Materiais","Roy R. Craig. Jr"},
	                {"621.2","engenharia mecanica","V397m","Energias Renovaveis","Rodnei Vecchia"}, 
	                {"621.1","maquinas termicas","M182e","Equipamentos industriais e de processos","Macintyre"}}
                    
                     
cadeia Eletrica[][] ={{"codigo da categoria","categoria","codigo do livro","livro","autor"},
                      {"621.3","Engenharia eletrica","A345a","Materiais Elétricos","Walfredo Schmdt"},
                      {"621.3.049","Circuitos Elétricos","M963a","Análise de Circuitos","Alln.H.Robbins"},
                      {"621.31","Medição Elétrica","F182e","Eletromecânica","Aurio Gilberto Falcone"},
                      {"621.316.17","Instalação Elétrica em edificios e vias","M264i","Instalações Eleticas Industriais","José Mamede"},
                      {"621.316.17","Dispotivo Eletrônico","G219d","Dicionário de Eletrônica","Giacomo Gardini"},
                      {"621.43","motores de combustao interna","T63s","Motores de Explosão e Disiel","J.Sarmento de Beires"},//procurar codigo pois não achei ára esse
                      {"621.51","compressores","F98l","Transferência de calor de massa","Ineropera Dewiff Bergman Lavine"},
                      {"621.7","tecnologia mecânica","C339m","Máquinas","A.L.Casillas"},
                      {"621.8","elementos de maquinas","P221r","Manutenção de Rolamento","SKF"},
                      {"621.99","usinagem","K82m","Manual do Ferramenteiro","J.de Koninck e D Gutter"},
                      {"626","Hidráulica","A994M","Manual de Hidráulica","Azevedo Netto"}}
                      
cadeia aut[][] ={{"codigo da categoria","categoria","codigo do livro","livro","autor"},
	            {"681.2","Instrumentação","B172i","Instrumentação e Fundamentos de Medidas","Balbinot Brusamarello"},
                 {"681.5","Automação e Controle","C423m","Mecatronica","Cetinkunt"},
                 {"669","Construção Civil","G427m","Manual do Encanador Industrial","Antonio Ghizze"},
                 {"744","Desenho Técnico","D451","Desenho Tecnico Moderno","Arlindo Silva"}}
                 
cadeia Ti[][]= {{"codigo da categoria","categoria","codigo do livro","livro","autor"},
	          {"001.8","metodologia","S618i","Introdução a Tec. da informação","Michael sipser"},
               {"004","informatica","C419n","Metodologia Cientifica","Cervo Bervian da Silva"},
               {"004.056","qualidade dos sistemas e do software","C525f","Firewall e Segurança na Internet","Aviel D.Rubin"},
               {"004.2","arquitetura dos computadores","T56n","Organização Estruturada de Computadores","Andrew S Tenenbaum"},
               {"004.3","hardware","F245l","Lógica e Desing de Programação","Joyce Farrell"},
               {"004.43","linguagem de programação","A2855e","Compiladores","Aho,Lam,Sethi e Ullman"},
               {"004.451","interface","N633o","Manual Completo do Linux","Trent R."},
               {"004.7","redes de computadores","K95r","Redes de Computadores e a Internet","Kurose Ross"}} 

cadeia automotiva[][]={{"codigo da categoria","categoria","codigo do livro","livro","autor"},
	                   {"629.02","Prep. de tintas para pintura","S491p","Tecnologia da Repintura","Henry Fleming Payne"},
                        {"629.331","Prep. de Pintura Automotiva","S491p","Sistema de Transmissão","Jessé Luís Padilha"}}
                                
 
cadeia Literatura[][]={{"codigo da categoria","categoria","codigo do livro","livro","autor"},
	                  {"71.1","Literatura Estrangeira-Aventura e Ficção","D886e","O Conde de Monte Criste","Aleandre Dumas"},
                       {"72.2","Literatura brasileira","D667","Silvio Santos","Arlindo Silva"}}
	                 	  

cadeia Matematica[][]={{"codigo da categoria","categoria","codigo do livro","livro","autor"},
	                  {"51","Matemática","A634g","Álgebra Linear","Howard Anton"},
                       {"53","Física","g635f","Física e realidade","Aurelio Filho Goncalves"},
                       {"54","Química","R964q","Química Geral","Russel John B."},
                       {"551","Geologia","W633f","Fundamentos de Geologia","Wicander Monroe"},
                       {"573","Biologia","A398c","Ecologia dos Pobres","Joan Martinez Alier"}}
                       
        inteiro matrizgeral[8][2]
	   inteiro tempo_i = 1 , tempo_f = 2
	   cadeia login[3], senha[3]

        cadeia cadastro_livro[4][4]
	   
	  inteiro caLcadas=1, caLemp[2]
	funcao inicio(){   
		cadeia esc

		escreva("já possui uma conta?(S/N)\n")
		leia(esc)  

          se ((esc == "S") ou (esc == "s" ))
     {
  	     limpa()
  	     escreva("Direcionando para o LOGIN\n")
  	     enquanto (tempo_i<=tempo_f) 
  	{
		escreva (tempo_i, " ")
		u.aguarde(1000)
		tempo_i++
		limpa()
		escreva("Direcionando para o LOGIN\n")
			
	}
		     logar()
			limpa()
  
  	}

        senao se ((esc == "N")ou(esc == "n")){
  	   limpa()
  	   escreva("Direcionando para o CADASTRO\n")
  	   enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i, " ")
			u.aguarde(1000)
			tempo_i++
			limpa()
			escreva("Direcionando para o CADASTRO\n")
	}
		     cadastro()
			limpa()
	}
        senao 
     {
  	   limpa()
  	   inicio()
	}
	}
funcao cadastro(){
       inteiro cads
       limpa()
       escreva("Deseja cadastrar quantos usuarios?(Maximo 3 usuarios)\n")
       leia(cads)
       limpa()
       para(inteiro i = 0; i< cads;i++){
       	escreva("Digite o login desejado:")
       	leia(login[i])
       	escreva("Digite a senha desejada:")
       	leia(senha[i])
       	limpa()}
       	logar()
}
funcao logar(){
          cadeia log, sen, logA[]={"admin"},senhe[]= {"123"} 
        
           
		escreva("Digite seu login:")
		leia(log)
		escreva("Digite sua senha:")
		leia(sen)

		se(log == login[0] e sen == senha[0]){
			limpa()
	       escreva("Bem Vindo, ",login[0],".")
	       alumenu()
	}
	     senao se(log == login[1] e sen == senha[1]){
	     	limpa()
	       escreva("Bem Vindo, ",login[1],".")
	       alumenu()}

	     senao se(log == login[2] e sen == senha[2]){
	     	limpa()
	       escreva("Bem Vindo, ",login[2],".")
	       alumenu()}

	     senao se(log == logA[0]  e sen == senhe[0]){
	     	limpa()
	       escreva("Bem Vindo,ADM, ",login[0],".")
	       mainmenu()}

	     senao {
	          escreva("Senha ou login incorreto, tente novamente.")
	          logar()
	     }
}

funcao ALcadas(){
cadeia vol

       escreva("\n----------LISTA DE ALUNOS CADASTRADOS--------\n")
       escreva(login[0], "\t\t",login[1],"\t\t",login[2])
       escreva("\n---------------------------------------------\n")
       escreva("Todos os alunos cadastrados, deseja voltar?(s/n)\n")
       leia(vol)

       se(vol == "s"){
       	mainmenu()
       	}

       senao se(vol == "n"){
       	}
       senao{escreva("Opção nao reconhecida, tente novamente.")
       ALcadas()}
}


funcao alumenu(){
	inteiro opc

    escreva("\n----------------MENU----------------\n") 
    escreva("1- Catálogo\n")
    escreva("2- Localização.\n")
    escreva("3- outros livro.\n")
    escreva("4- Relatório. \n") 
    escreva("5- finalizar \n")
    escreva("\n-------------------------------------\n") 
    escreva("Informe a função desejada: ")
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
	cadastroLivro()
     pare
     caso 4:
     relatorioaluno()
     pare
     caso 5:
     escreva("Obrigado, volte sempre.\n")
     pare
     caso contrario:
     escreva ("Opção inválida!")
     mainmenu()
   }
}





funcao mainmenu(){
	inteiro opc

    escreva("\n----------------MENU----------------\n") 
    escreva("1- Catálogo\n")
    escreva("2- livros cadastrados")
    escreva("3- Localização.\n")
    escreva("4 -Emprestimo/Devolução.\n")
    escreva("5- Cadastro de livro.\n")
    escreva("6- Relatório. \n")
    escreva("7- Alunos cadastrados.\n")//informar atrasos de livro, quantos foram emprestados e quantos foram emprestados
    escreva("8 - finalizar \n")
    escreva("\n-------------------------------------\n") 
    escreva("Informe a função desejada: ")
    leia(opc)
    limpa()

   escolha(opc)
   {
     caso 1:   
     catalogo()
     pare
     caso 2:
     LivrosCadastrados()
     
     
     pare     
     caso 3:     
     Localizacao()
     pare
     
     caso 4:
     emprestidevo()
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
     escreva("Obrigado, volte sempre.\n")
     pare
     caso contrario:
     escreva ("Opção inválida!")
     mainmenu()
   }
  } 
  funcao catalogo()
	{
		 
		inteiro voltar, opc
          escreva("-----------------------------------\n")
		escreva("       Biblioteca - Matérias\n")
		escreva("-----------------------------------\n")
		escreva("1) Gestão\n")
		escreva("2) Automação Industrial\n")
		escreva("3) Tecnologia de Informação\n")
		escreva("4) Matemática\n")
		escreva("5) Mecânica\n")
		escreva("6) Elétrica\n")
		escreva("7) automotiva\n")
		escreva("8) literatura\n")
		escreva("9) Voltar\n")
		escreva("------------------------------------\n")  
		escreva("Informe a opção desejada: ")
		leia(opc)
		limpa()

		escolha(opc){
		caso 1:
		Gestao()
		catalogo()

		pare
		caso 2:
          automacao()
          catalogo()
		pare
		caso 3:
          ti()
          catalogo()
		pare
		caso 4:
          matematica()
          catalogo()
		pare
		caso 5:
		meca()
		catalogo()
		pare
		caso 6:
	     eletrica()
	     catalogo()
		pare

		caso 7:
		Automotiva()
		catalogo()
		pare
		
		caso 8:
          lit()
          catalogo()
		pare
		caso 9:
		mainmenu()
		pare
		caso contrario :
		escreva("\nOpção invalida. digite 1 para voltar e 2 para sair")
		escreva("Informe a opção desejada: ")
		leia(voltar)
		limpa()
		se (voltar == 1){
		}
		senao se (voltar == 2){
		escreva("Até a próxima!\n")
	      }
		senao{
		escreva("Opção inválida!\n")
		}

	}
     }
     funcao Gestao(){
     
     	para (inteiro l = 0; l<9; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(gestao[l][c],"\t\t")}
		escreva("\n")
	     }
     	
     }
     funcao automacao(){
	
		para (inteiro l = 0; l<5; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(aut[l][c],"\t\t")}
		escreva("\n")
	     }
       }

funcao ti(){
				      
     para (inteiro l = 0; l<9; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Ti[l][c],"\t\t")
		}
		escreva("\n")
		} 
}






    
funcao matematica() {
	para (inteiro l = 0; l<6; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Matematica[l][c]," \t\t")
		}
		escreva("\n")
		}



    }	


funcao eletrica(){
	para (inteiro l = 0; l<12; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Eletrica[l][c]," \t\t")
}
escreva("\n")
	}
}
funcao Automotiva(){
para (inteiro l = 0; l<3; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(automotiva[l][c]," \t\t")
	
}
escreva("\n")
	}
}

funcao meca(){
	para (inteiro l = 0; l<5; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Mecanica[l][c]," \t\t")
}
escreva("\n")
	}
}

funcao lit(){
	para (inteiro l = 0; l<3; l++){
			para (inteiro c = 0; c<5; c++){
			escreva(Literatura[l][c]," \t\t")
}
escreva("\n")
	}
}



funcao cadastroLivro(){
		
	
	cadeia resp, menu	

	cadastro_livro[0][0] = "Setor"
	cadastro_livro[0][1] = "Nome do Livro"
	cadastro_livro[0][2] = "Código do Livro"
	cadastro_livro[0][3] = "Autor"

	para(inteiro nome = 0; nome < 1; nome++){
			escreva("Coloque o setor do livro:")
			leia(cadastro_livro[1][0])
				para(inteiro idade = 0; idade <1; idade++)
				escreva("Coloque o nome do livro:")
				leia(cadastro_livro[1][1])
					para(inteiro id = 0; id <1; id++)
					escreva("Coloque o codigo do livro:")
					leia(cadastro_livro[1][2])
						para(inteiro funcao1 = 0; funcao1 <1; funcao1++)
						escreva("Coloque o autor do livro:")
						leia(cadastro_livro[1][3])}
	limpa()

	para (inteiro l = 0; l<2; l++){
			para (inteiro c = 0; c<4; c++){
			escreva(cadastro_livro[l][c],"\t\t")}}

	escreva ("\nCadastro finalizado, deseja fazer outro cadastro? s ou n ")
	     leia (resp)

	     limpa()
	     
	     se (resp == "s"){
	     	caLcadas=caLcadas+1
	     	para(inteiro setor = 0; setor < 1; setor++){
			escreva("Coloque o setor do livro:")
			leia(cadastro_livro[2][0])
				para(inteiro nome_livro = 0; nome_livro <1; nome_livro++)
				escreva("Coloque o nome do livro:")
				leia(cadastro_livro[2][1])
					para(inteiro codigo_livro = 0; codigo_livro <1; codigo_livro++)
					escreva("Coloque o codigo do livro:")
					leia(cadastro_livro[2][2])
						para(inteiro autor = 0; autor <1; autor++)
						escreva("Coloque o autor do livro:")
						leia(cadastro_livro[2][3])}}		
			
  		senao{
	     escreva (" Cadastro finalizado   ")
	     inicio()}	
	     limpa() 
	     	para (inteiro l = 0; l<4; l++){
				para (inteiro c = 0; c<4; c++){
				escreva(cadastro_livro[l][c],"\t\t")}}	

		escreva ("\nCadastro finalizado, deseja fazer outro cadastro? s ou n ")
	     leia (resp)

	     limpa()
	     
	     se (resp == "s"){
	     	para(inteiro setor = 0; setor < 1; setor++){
			escreva("Coloque o setor do livro:")
			leia(cadastro_livro[3][0])
				para(inteiro nome_livro = 0; nome_livro <1; nome_livro++)
				escreva("Coloque o nome do livro:")
				leia(cadastro_livro[3][1])
					para(inteiro codigo_livro = 0; codigo_livro <1; codigo_livro++)
					escreva("Coloque o codigo do livro:")
					leia(cadastro_livro[3][2])
						para(inteiro autor = 0; autor <1; autor++)
						escreva("Coloque o autor do livro:")
						leia(cadastro_livro[3][3])}}		
			
  		senao{
	     escreva ("\n Cadastro Finalizado")
	     inicio()}	
	     limpa() 
	     	para (inteiro l = 0; l<4; l++){
				para (inteiro c = 0; c<4; c++){
				escreva(cadastro_livro[l][c],"\t\t")}}

		escreva("\n")				
		escreva("Cadastros finalizados, deseja voltar ao menu? S/N")
		leia(menu)

   		 se(menu == "S"){
			mainmenu() 
		    }
		    
		 senao{
		    escreva(" ")
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
		escreva("Informe a opção desejada: ")
		leia(opc)
           
escolha(opc){
caso 1:
gestaoopc()
Localizacao()
pare	
caso 2:
autopc()
Localizacao()
pare	
caso 3:
tiopc()
Localizacao()
pare
caso 4:
matopc()
Localizacao()
pare
caso 5:
mecopc()
Localizacao()
pare
caso 6:
eleopc()
Localizacao()
pare
caso 7:
automopc()
Localizacao()
pare 
caso 8:
litopc()
Localizacao()
pare
caso 9:
mainmenu()
pare
		      }
	}
	funcao gestaoopc(){

      	  inteiro opcg
      	  
      	  escreva("qual a subsessão do livro desejado?\n")
		  escreva("1-contabilidade.\n")
		  escreva("2-gerenciamento de projetos.\n")
		  escreva("3-empreendedorismo.\n")
		  escreva("4-rotinas administrativas.\n")
		  escreva("5-gestão de pessoas.\n")
		  escreva("6-gestão de produção.\n")
		  escreva("7-gestao de estoque.\n")
		  escreva("8-marketing.\n")
		  leia(opcg) 

		      escolha(opcg){
		      caso 1:
		          
		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         
		         pare
		         caso 2:
		          
		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare
		         caso 3:
		          
		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare
		         caso 4:
		          
		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		         pare
		         caso 5:
		          
		       para(inteiro l= 5;l<6;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare
		         caso 6:
		          
		       para(inteiro l= 6;l<7;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		         pare
		         caso 7:
		          
		       para(inteiro l= 7;l<8;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare
		         caso 8:
		          
		       para(inteiro l= 8;l<9;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(gestao[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare
		      

		      }
	}


	//



	funcao autopc(){

		  inteiro opcaut
		  
		  escreva("qual a subsessão do livro desejado?")
		  escreva("1-instruimentação.")
		  escreva("2-automaçao e controle.")
		  escreva("3-construção civil.")
		  escreva("4-desenho tecnico.")
		  leia(opcaut)
		  escolha(opcaut){
		  caso 1:
		          
		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(aut[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         
		         pare
		         caso 2:
		          
		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(aut[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare
		         caso 3:
		         
		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(aut[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare
		         caso 4:
		          
		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(aut[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare		  
		  }	     
}

//

funcao tiopc(){
		  
		  inteiro opcti
		  
		  escreva("qual a subsessão do livro desejado?")
		  escreva("1-metodologia.")
		  escreva("2-informatica.")
		  escreva("3-qualidade dos sistemas e do software.")
		  escreva("4-arquitetura dos computadores .")
		  escreva("5-hardware")
		  escreva("6-linguagem de programaçao")
		  escreva("7-interface")
		  escreva("8-redes de computadores")
		  leia(opcti)

		  escolha(opcti){
		  caso 1:
		          
		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t\t")
		  }
		           
		           escreva("\n")
		  }
		         
		         pare
		         caso 2:
		          
		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t\t")
		           
		  }
		           escreva("\n")
		  }
		         pare
		         caso 3:
		          
		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t\t")
		           
		  }
		           escreva("\n")
		  }
		         pare
		         caso 4:
		          
		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t\t")
		           
		  }
		           escreva("\n")
		  }
		         pare
		         caso 5:
		          
		       para(inteiro l= 5;l<6;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t\t")
		  }
		           
		           escreva("\n")
		  }
		         pare
		         caso 6:
		          
		       para(inteiro l= 6;l<7;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t\t")
		           
		  }
		           escreva("\n")
		  }
		         pare
		         caso 7:
		          
		       para(inteiro l= 7;l<8;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t\t")
		  }
		           
		           escreva("\n")
		  }
		         pare
		         caso 8:
		          
		       para(inteiro l= 8;l<9;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Ti[l][c],"\t\t")
		           
		  }
		           escreva("\n")
		  }
		         pare
		  }
}

//

funcao matopc() {
		  
		  inteiro opcmat
		  
		  escreva("qual a subsessão do livro desejado?")
		  escreva("1-matematica.")
		  escreva("2-fisica.")
		  escreva("3-quimica.")
		  escreva("4-geologia .")
		  escreva("5-biologia")
		  leia(opcmat)

		  escolha(opcmat){
		  caso 1:
		          
		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Matematica[l][c],"\t\t")
		           
	}
		           escreva("\n")
	}
		         
		         pare
		         caso 2:
		          
		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Matematica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		         pare
		         caso 3:
		          
		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Matematica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		       
		         pare
		         caso 4:
		          
		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Matematica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		         pare
		  }
}

//

funcao mecopc(){

		inteiro opcmeca

		  escreva("qual a subsessão do livro desejado?")
		  escreva("1-mecanica")
		  escreva("2-mecanica dos materiais.")
		  escreva("3-engenharia mecanica")
		  escreva("4-Maquinas términas.")
		  leia(opcmeca)

		  escolha(opcmeca){
		  caso 1:
		          
		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Mecanica[l][c],"\t\t")
		           
	}	           
		           escreva("\n")
	}
		         
		         pare
		         caso 2:
		          
		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Mecanica[l][c],"\t\t")
	}	           
		           
		           escreva("\n")
	}
		         pare
		         caso 3:
		          
		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Mecanica[l][c],"\t\t")
		           
	}	           
		           escreva("\n")
	}
		         pare
		         caso 4:
		          
		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Mecanica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		       
		         pare
		  }
}

//

funcao eleopc(){

	inteiro opcele

		  escreva("qual a subsessão do livro desejado?")
		  escreva("1-engenharia eletrica.")
		  escreva("2-circuitos eletricos.")
		  escreva("3-mediçao eletrica.")
		  escreva("4-Instalação Elétrica em edificios e vias .")
		  escreva("5-Dispotivo Eletrônico.")
		  escreva("6-motores de combusstao interna.")
		  escreva("7-compressores.")
		  escreva("8-tecnologia mecânica.")
		  escreva("9-elementos de maquinas.")
		  escreva("10-usinagem.")
		  escreva("11-hidraulica.")
		  leia(opcele)
		  
		  escolha(opcele){
		  caso 1:
		          
		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
	}	           
		           
		           escreva("\n")
	}
		         
		         pare
		         caso 2:
		          
		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
	}
		           
		           escreva("\n")
	}
		         pare
		         caso 3:
		          
		       para(inteiro l= 3;l<4;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		         pare
		         caso 4:
		          
		       para(inteiro l= 4;l<5;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
		           
	}
		           escreva("\n")
	}
		         pare
		         caso 5:
		          
		       para(inteiro l= 5;l<6;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
		           
	                 }
		           escreva("\n")
	                }
		         pare
		         caso 6:
		          
		       para(inteiro l= 6;l<7;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		         pare
		         caso 7:
		          
		       para(inteiro l= 7;l<8;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		           }
		         pare
		         caso 8:
		          
		       para(inteiro l= 8;l<9;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		           }
		         pare
		         caso 9:
		          
		       para(inteiro l= 9;l<10;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		           }
		         pare
		         caso 10:
		          
		       para(inteiro l= 10;l<11;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		           }
		         pare
		         caso 11:
		          
		       para(inteiro l= 11;l<12;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Eletrica[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		           }
		         pare
		  }
}

//

funcao automopc(){

	 inteiro opcautomo

	 	escreva("Qual é a sessão do livro desejado?")
		escreva("1) Prep. de tintas para pintura\n")
		escreva("2) Prep. de Pintura Automotiva \n")
		leia(opcautomo)
		escolha(opcautomo){
		caso 1:
		          
		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(automotiva[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		         
		         pare
		 caso 2:
		          
		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(automotiva[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare
		}
}

//

funcao litopc(){

	 inteiro opclit

		escreva("Qual é a sessão do livro desejado?")
		escreva("1) Literatura Estrangeira-Aventura e Ficção.\n")
		escreva("2) Literatura brasileira. \n")
		leia(opclit)
		escolha(opclit){
		caso 1:
		          
		       para(inteiro l= 1;l<2;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Literatura[l][c],"\t\t")
		           
		           }
		           escreva("\n")
		       }
		         
		         pare
		 caso 2:
		          
		       para(inteiro l= 2;l<3;l++){
		           para(inteiro c = 2;c<5;c++){
		           escreva(Literatura[l][c],"\t\t")
		           }
		           
		           escreva("\n")
		       }
		         pare
		}
}

funcao emprestimo(){

       cadeia set
       matrizgeral[0][0]=8
       matrizgeral[1][0]=4
       matrizgeral[2][0]=11
       matrizgeral[3][0]=4
       matrizgeral[4][0]=8
       matrizgeral[5][0]=2
       matrizgeral[6][0]=2
       matrizgeral[7][0]=5
       escreva("Digite o nome do setor desejado:")
       leia(set)

       se(set == "gestao"){
       	matrizgeral[0][1]=matrizgeral[0][0]-1      	     	
       }
       senao se(set == "automaçao indutrial"){
       	matrizgeral[4][1]=matrizgeral[0][0]-1
       }
       senao se(set == "mecanica"){
       	matrizgeral[1][1]=matrizgeral[0][0]-1
       }
       senao se(set == "literatura"){
       	matrizgeral[7][1]=matrizgeral[0][0]-1
       }
       senao se(set == "eletrica"){
       	matrizgeral[3][1]=matrizgeral[0][0]-1
       }
       senao se(set == "tecnologia da informaçao"){
       	matrizgeral[5][1]=matrizgeral[0][0]-1
       }
       senao se(set == "automotiva"){
       	matrizgeral[6][1]=matrizgeral[0][0]-1
       }
       senao se(set == "matematica"){
       	matrizgeral[8][1]=matrizgeral[0][0]-1
       }
       senao{escreva("setor nao encontrado, tente novamente.")
       emprestimo()
       	}
       
       
       	
       	

       
       
	 
}
funcao emprestidevo(){



	   
caLemp[0]=1
inteiro voltar, opc2,dia,mes,ano,dia2,mes2,ano2,cal1,cal2,cal3,cal4,cal5,cal6,cal7
 
cadeia empee,noli

		escreva("     EMPRESTIMO - DEVOLUÇÃO\n")
		escreva("*******************************\n")
		escreva("1) Emprestimo\n")
		escreva("2) Devolução\n")
		escreva("3) Voltar\n")
		escreva("*******************************\n")  
		escreva("Informe a opção desejada: ")
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
         escreva("informe o codigo ou nome do livro que deseja pegar emprestado: ")
         leia(empee)
         limpa() 
         se(empee == empres[1][0] ou empee == empres[1][1]){
         	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[1][1],"\n","data de devolução:em até 10 dias")

         }
         senao se(empee == empres[2][0] ou empee == empres[2][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[2][1],"\n","data de devolução:em até 10 dias")
         }
          senao se(empee == empres[3][0] ou empee == empres[3][1]){
          		caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[3][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[4][0] ou empee == empres[4][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[4][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[5][0] ou empee == empres[5][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[5][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[6][0] ou empee == empres[6][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[6][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[7][0] ou empee == empres[7][1]){
         	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[7][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[8][0] ou empee == empres[8][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[8][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[9][0] ou empee == empres[9][1]){
            escreva("livro:",empres[9][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[10][0] ou empee == empres[10][1]){
         		caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[10][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[11][0] ou empee == empres[11][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[11][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[12][0] ou empee == empres[12][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[12][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[13][0] ou empee == empres[13][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[13][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[14][0] ou empee == empres[14][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[14][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[15][0] ou empee == empres[15][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[15][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[16][0] ou empee == empres[16][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[16][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[17][0] ou empee == empres[17][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[17][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[18][0] ou empee == empres[18][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[18][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[19][0] ou empee == empres[19][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[19][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[20][0] ou empee == empres[20][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[20][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[21][0] ou empee == empres[21][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[21][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[22][0] ou empee == empres[22][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[22][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[23][0] ou empee == empres[23][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[23][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[24][0] ou empee == empres[24][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[24][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[25][0] ou empee == empres[25][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[25][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[26][0] ou empee == empres[26][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[26][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[27][0] ou empee == empres[27][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[27][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[28][0] ou empee == empres[28][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[28][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[29][0] ou empee == empres[29][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[29][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[30][0] ou empee == empres[30][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[30][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[31][0] ou empee == empres[31][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[31][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[32][0] ou empee == empres[32][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[32][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[33][0] ou empee == empres[33][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[33][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[34][0] ou empee == empres[34][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[34][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[35][0] ou empee == empres[35][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[35][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[36][0] ou empee == empres[36][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[36][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[37][0] ou empee == empres[37][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[37][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[38][0] ou empee == empres[38][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[38][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[39][0] ou empee == empres[39][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[39][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[40][0] ou empee == empres[40][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[40][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[41][0] ou empee == empres[41][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[41][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[42][0] ou empee == empres[42][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[42][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[43][0] ou empee == empres[43][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[43][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[44][0] ou empee == empres[44][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[44][1],"\n","data de devolução:em até 10 dias")
         } senao se(empee == empres[45][0] ou empee == empres[45][1]){	caLemp[0]=caLemp[0]+1
            escreva("livro:",empres[45][1],"\n","data de devolução:em até 10 dias")
         }
         voltaemprestidevo()
           
		pare
		caso 2:
          escreva("informe o nome ou codigo do livro")
          leia(noli)

          se(noli == empres[1][0] ou noli == empres[1][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[1][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[2][0] ou noli == empres[2][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[2][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[3][0] ou noli == empres[3][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[3][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[4][0] ou noli == empres[4][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[4][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[5][0] ou noli == empres[5][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[5][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[6][0] ou noli == empres[6][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[6][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[7][0] ou noli == empres[7][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[7][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[8][0] ou noli == empres[8][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[8][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[9][0] ou noli == empres[9][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[9][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[10][0] ou noli == empres[10][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[10][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[11][0] ou noli == empres[11][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[11][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[12][0] ou noli == empres[12][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[12][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[13][0] ou noli == empres[13][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[13][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[14][0] ou noli == empres[14][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[14][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[15][0] ou noli == empres[15][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[15][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[16][0] ou noli == empres[16][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[16][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[17][0] ou noli == empres[17][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[17][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[18][0] ou noli == empres[18][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[18][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[19][0] ou noli == empres[19][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[19][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[20][0] ou noli == empres[20][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[20][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[21][0] ou noli == empres[21][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[21][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[22][0] ou noli == empres[22][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[22][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[23][0] ou noli == empres[23][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[23][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[24][0] ou noli == empres[24][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[24][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[25][0] ou noli == empres[25][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[25][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[26][0] ou noli == empres[26][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[26][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[27][0] ou noli == empres[27][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devoluçaõ")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[27][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[28][0] ou noli == empres[28][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[28][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[29][0] ou noli == empres[29][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[29][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[30][0] ou noli == empres[30][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[30][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[31][0] ou noli == empres[31][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[31][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[32][0] ou noli == empres[32][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[32][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[33][0] ou noli == empres[33][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[33][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[34][0] ou noli == empres[34][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[34][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[35][0] ou noli == empres[35][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[35][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[36][0] ou noli == empres[36][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[36][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[37][0] ou noli == empres[37][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[37][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[38][0] ou noli == empres[38][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[38][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
           }senao se(noli == empres[39][0] ou noli == empres[39][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[39][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[40][0] ou noli == empres[40][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[40][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[41][0] ou noli == empres[41][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[41][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[42][0] ou noli == empres[42][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[42][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[43][0] ou noli == empres[43][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[43][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[44][0] ou noli == empres[44][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[44][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          }senao se(noli == empres[45][0] ou noli == empres[45][1]){
          escreva("informe o dia que realizou o emprestimo")
          leia(dia)
          escreva("informe o mes que realizou o emprestimo")
          leia(mes)
          escreva("informe o ano que realizou  emprestimo")
          leia(ano)
          limpa()
          escreva("informe o dia da devolução")
          leia(dia2)
          escreva("informe o mes da devolução")
          leia(mes2)
          escreva("informe o ano da devolução")
          leia(ano2)
          cal1 = dia-dia2
          cal2 = mes2-mes
          cal3 = cal2-1
          cal4 = cal3*30
          cal5 = 30-dia
          cal6 = cal5+dia2
          cal7 = cal4+cal6
          limpa()
          escreva("livro:",empres[45][1],"\n")
          escreva("emprestimo:",dia,"/",mes,"/",ano,"\n")
          escreva("devolução:",dia2,"/",mes2,"/",ano2,"\n")
          escreva("atraso:",cal7," dias")
          
          
          
          }senao{
          escreva("livro não encontrado")
          emprestidevo()
          }
		pare
		caso 3:
          inicio()
          pare
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
    inicio()
    }
}
funcao relatorio(){
	escreva("total de livros:",44+caLcadas)
	escreva("Livros emprestados",caLemp[0])
	escreva("Novos livros cadastrados:"+caLcadas)
	escreva("Livros disponiveis",(44+caLcadas)-caLemp[0])
	
}
funcao relatorioaluno(){
	escreva("total de livros:",44+caLcadas)
	escreva("Livros disponiveis",(44+caLcadas)-caLemp[0])
	
}
funcao LivrosCadastrados(){

       se(cadastro_livro[1][0] == ""){
       	escreva("Não possui livros cadastrados")}

       senao{
       	para(inteiro l=0;l<4;l++){
       	    para(inteiro c=0;c<4;c++){
       	    	escreva(cadastro_livro[l][c])
       	    }
       	    escreva("\n")
       	}
}
}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11029; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */