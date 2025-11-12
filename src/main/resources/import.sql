-- =========================================
-- ENEM Questions Database Population
-- Generated automatically - 200 questions
-- =========================================

-- Note: Foreign key constraints are handled by the database

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (1, 'Questão 1 - ENEM 2023', 1, 2023, 'linguagens', 'espanhol', '**TEXTO I**

¿QUÉ ME PASA?:  
¿PorQUE ME CUESTA TANTO ESTUDIAR?  
¿PORQUE ME CUESTA TANTO CONCENTRARME?  
¿PoRQUE……  
¿PORQUÉ…..  
¿PORQUÉ NO CONSIGO APRENDER COMO LOS DEMÁS?

![](https://enem.dev/broken-image.svg)

Disponível em: www.otrasvoceseneducacion.org. Acesso em: 8 nov. 2022.

**ТЕХТО II**

Ishaan Awashi es un niño de 8 años cuyo mundo está plagado de maravillas que nadie más parece apreciar: colores, peces, perros y cometas, que simplemente no son importantes en la vida de los adultos, que parecen más interesados en cosas como los deberes, las notas o la limpieza. E Ishaan parece no poder hacer nada bien en clase. Cuando los problemas que ocasiona superan a sus padres, es internado en un colegio para que le disciplinen. Las cosas no mejoran en el nuevo colegio, donde Ishaan tiene además que aceptar estar lejos de sus padres. Hasta que un dia, el nuevo profesor de arte, Ram Shankar Nikumbh, entra en escena, se interesa por el pequeño Ishaan y todo cambia.

Disponível em: https://elfinalde.com. Acesso em: 26 out. 2021 (adaptado)', 'O filme Como estrellas en la tierra aborda o tema da dislexia. Relacionando o cartaz do filme com a sinopse, constata-se que o(a)', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (1, 1, 'A', 'Olhar diferenciado para com o outro gera mudanças.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (2, 1, 'B', 'Estudante com dislexia apresenta um tom questionador.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (3, 1, 'C', 'Abordagem para lidar com a dislexia é pautada na disciplina.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (4, 1, 'D', 'Contato com os pais prejudica o acompanhamento da dislexia.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (5, 1, 'E', 'Mudança de interesses ocorre na transição da infância para a vida adulta.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (2, 'Questão 1 - ENEM 2023', 1, 2023, 'linguagens', 'ingles', '![](https://enem.dev/2023/questions/1-ingles/59a5b837-9914-48b0-a1b4-959562038c9a.png)', 'Esse cartaz de campanha sugere que', 'B', ARRAY['https://enem.dev/2023/questions/1-ingles/59a5b837-9914-48b0-a1b4-959562038c9a.png'], 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (6, 2, 'A', 'Os lixões precisam de ampliação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (7, 2, 'B', 'O desperdício degrada o ambiente.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (8, 2, 'C', 'Os mercados doam alimentos perecíveis.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (9, 2, 'D', 'A desnutrição compromete o raciocínio.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (10, 2, 'E', 'As residências carecem de refrigeradores.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (3, 'Questão 10 - ENEM 2023', 10, 2023, 'linguagens', NULL, 'Se a interferência de contas falsas em discussões políticas nas redes sociais já representava um perigo para os sistemas democráticos, sua sofisticação e maior semelhança com pessoas reais têm agravado o problema pelo mundo.

O perigo cresceu porque a tecnologia e os métodos evoluíram dos robôs, os “bots” — softwares com tarefas on-line automatizadas —, para os “ciborgues” ou “trolls”, contas controladas diretamente por humanos com ajuda de um pouco de automação.

Mas pesquisadores começam agora a observar outros padrões de comportamento: quando mensagens não são programadas, sua publicação se concentra só em horários de trabalho, já que é controlada por pessoas cuja profissão é exatamente essa, administrar um perfil falso durante o dia.

Outra pista: a pobreza vocabular das mensagens publicadas por esses perfis. Um funcionário de uma empresa que supostamente produzia e vendia perfis falsos explica que às vezes “faltava criatividade” para criar mensagens distintas controlando tantos perfis falsos ao mesmo tempo.

GRAGNANI, J. Disponível em: www.bbc.com. Acesso em: 16 dez. 2017.', 'De acordo com o texto, a análise de características da linguagem empregada por perfis automatizados contribui para o(a)', 'E', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (11, 3, 'A', 'Controle da atuação dos profissionais de TI.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (12, 3, 'B', 'Desenvolvimento de tecnologias como os "trolls".', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (13, 3, 'C', 'Flexibilização dos turnos de trabalho dos controladores.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (14, 3, 'D', 'Necessidade de regulamentação do funcionamento dos "bots"', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (15, 3, 'E', 'Identificação de padrões de disseminação de informações inverídicas.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (4, 'Questão 100 - ENEM 2023', 100, 2023, 'ciencias-natureza', NULL, 'Um professor lança uma esfera verticalmente para cima, a qual retorna, depois de alguns segundos, ao ponto de lançamento. Em seguida, lista em um quadro todas as possibilidades para as grandezas cinemáticas.

![](https://enem.dev/2023/questions/100/92848aa5-da82-4c66-9945-7051120a42c9.jpg)', 'Ele solicita aos alunos que analisem as grandezas cinemáticas no instante em que a esfera atinge a altura máxima, escolhendo uma combinação para os módulos e sentidos da velocidade e da aceleração. A escolha que corresponde à combinação correta é', 'C', ARRAY['https://enem.dev/2023/questions/100/92848aa5-da82-4c66-9945-7051120a42c9.jpg'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (16, 4, 'A', 'V = 0 e a ≠ 0 para cima.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (17, 4, 'B', 'V ≠ 0 para cima e a = 0', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (18, 4, 'C', 'V = 0 e a ≠ 0 para baixo.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (19, 4, 'D', 'V ≠ 0 para cima e a ≠ 0 para cima.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (20, 4, 'E', 'V ≠ 0 para baixo e a ≠ 0 para baixo.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (5, 'Questão 101 - ENEM 2023', 101, 2023, 'ciencias-natureza', NULL, NULL, 'Muitas mulheres sofrem com desconfortos nos dias que antecedem a menstruação, a chamada tensão pré-menstrual. Entre outros sintomas, podem ocorrer alterações de humor. Atualmente, acredita-se que os sintomas são resultado da queda na concentração do neurotransmissor serotonina, que, por sua vez, está relacionado com a diminuição na produção dos hormônios ovarianos estrógeno e progesterona, observada nessa fase do ciclo feminino.
DIMMOCK, P. W. et al. Efficacy of Selective Serotonin-Reuptake Inhibitors in Premenstrual Syndrome: a Systematic Review. The Lancet, n. 9 236, 2000 (adaptado).
A redução da produção desses hormônios nessa fase está relacionada com o(a)', 'A', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (21, 5, 'A', 'Regressão do corpo lúteo ovariano.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (22, 5, 'B', 'Diminuição na produção de ocitocina.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (23, 5, 'C', 'Liberação do gameta feminino na ovulação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (24, 5, 'D', 'Aumento nos níveis dos hormônios LH e FSH.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (25, 5, 'E', 'Elevação nos níveis sorológicos de adrenalina.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (6, 'Questão 102 - ENEM 2023', 102, 2023, 'ciencias-natureza', NULL, NULL, 'As cetonas fazem parte de famílias olfativas encontradas em muitos alimentos. A molécula de hexan-3-ona é um exemplo desses compostos voláteis responsáveis pelo aroma, podendo ser obtida por processos energéticos realizados em meio ácido, na presença de oxidantes como o permanganato de potássio. Para se produzir esse composto volátil em laboratório, deve-se oxidar a molécula de', 'C', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (26, 6, 'A', 'Hexanal.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (27, 6, 'B', 'Hexan-1-ol.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (28, 6, 'C', 'Hexan-3-ol.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (29, 6, 'D', 'Hex-1-en-1-ol.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (30, 6, 'E', 'Ácido hexanoico.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (7, 'Questão 103 - ENEM 2023', 103, 2023, 'ciencias-natureza', NULL, NULL, 'Durante a evolução das plantas, ocorreu uma transição do ambiente aquático para o ambiente terrestre graças ao surgimento de algumas estruturas que as tornaram independentes da água. Esse fato permitiu maior dispersão desse grupo de seres vivos, sendo possível observá-los em diferentes ambientes na atualidade.
Qual estrutura possibilitou a independência da água para a fecundação dos seres vivos citados acima?', 'D', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (31, 7, 'A', 'Fruto.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (32, 7, 'B', 'Esporo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (33, 7, 'C', 'Semente.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (34, 7, 'D', 'Tubo polínico.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (35, 7, 'E', 'Vaso condutor.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (8, 'Questão 104 - ENEM 2023', 104, 2023, 'ciencias-natureza', NULL, 'O vidro contendo alumínio em sua composição é um excelente material para acondicionar medicamentos e suplementos, porque pode ser esterilizado por aquecimento. No entanto, quando o medicamento ou suplemento contém substâncias que se ligam fortemente ao íon desse metal, a dissolução do alumínio é promovida em função do deslocamento do equilíbrio químico estabelecido entre a espécie imobilizada no vidro e a espécie em solução. Por essa razão, recomenda-se que suplementos de nutrição de recém-nascidos contendo gluconato de cálcio sejam acondicionados em embalagens plásticas, e não nesse tipo de vidro.

**Atualização da recomendação da Sociedade Portuguesa de Neonatologia.**  
Disponível em: www.spneonatologia.pt. Acesso em: 22 out. 2021 (adaptado).', 'Caso esse suplemento seja acondicionado em embalagem desse tipo de vidro, o risco de contaminação por alumínio será maior se o(a)', 'B', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (36, 8, 'A', 'Vidro do frasco for translúcido.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (37, 8, 'B', 'Concentração de gluconato de cálcio for alta.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (38, 8, 'C', 'Frasco de vidro apresentar uma maior espessura.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (39, 8, 'D', 'Vidro for previamente esterilizado em altas temperaturas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (40, 8, 'E', 'Reação do alumínio com gluconato de cálcio for endotérmica.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (9, 'Questão 105 - ENEM 2023', 105, 2023, 'ciencias-natureza', NULL, 'Barbatimão é o nome popular de uma árvore cuja casca e utilizada para fins medicinais. Essa casca é constituída principalmente de dois tecidos vegetais: periderme e floema. A extração da casca tem levado à morte muitos indivíduos dessa espécie, quando o corte retira um anel completo ao longo da circunferência do tronco. Aqueles que têm parte da casca retirada sem completar essa circunferência podem sobreviver.', 'A morte desses indivíduos, decorrente da retirada do anel completo da casca, é provocada pela interrupção da', 'E', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (41, 9, 'A', 'Fotossíntese.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (42, 9, 'B', 'Transpiração.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (43, 9, 'C', 'Troca de gases.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (44, 9, 'D', 'Formação de brotos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (45, 9, 'E', 'Nutrição das raízes.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (10, 'Questão 106 - ENEM 2023', 106, 2023, 'ciencias-natureza', NULL, 'A tecnologia de vacinas de RNA mensageiro (RNAm) é investigada há anos. Avanços científicos em genética molecular permitiram desenvolver uma vacina para controle da pandemia da covid-19 causada pelo vírus de RNA SARS-CoV-2. A vacina de RNAm tem sequências de genes do vírus. Entretanto, por ser muito instável, o RNAm deve ser recoberto por uma capa de lipídios que evita sua degradação e favorece sua ação. Dessa forma, o RNAm desempenhará sua função especifica atuando no mesmo compartimento celular de sempre.

Disponível em: https://sbim.org.br. Acesso em: 29 nov. 2021 (adaptado).', 'A imunização produzida por esse tipo de vacina é alcançada por meio da', 'C', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (46, 10, 'A', 'Estimulação de leucócitos induzida pela capa lipídica contendo RNAm.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (47, 10, 'B', 'Atuação do RNAm como sequestrador do vírus para o meio extracelular.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (48, 10, 'C', 'Tradução do RNAm em proteína viral, desencadeando a resposta antigênica.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (49, 10, 'D', 'Competição entre o RNAm vacinal e o RNA viral pelos sítios dos ribossomos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (50, 10, 'E', 'Incorporação do RNAm viral ao genoma do hospedeiro. gerando novo fenótipo.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (11, 'Questão 107 - ENEM 2023', 107, 2023, 'ciencias-natureza', NULL, 'Na fertilização in vitro, espermatozoides são adicionados aos gametas femininos retirados de uma mulher. Após o período de incubação, a fecundação é favorecida pela ação de enzimas. Em um procedimento realizado, observou-se que nenhum dos gametas femininos foi fertilizado e, posteriormente, verificou-se que havia sido adicionado, equivocadamente, um coquetel de inibidores das enzimas do acrossomo, no lugar de um dos nutrientes constituintes do meio de cultura.', 'O coquetel de inibidores impediu o(a)', 'D', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (51, 11, 'A', 'Formação do pronúcleo masculino.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (52, 11, 'B', 'Início da divisão mitótica do zigoto.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (53, 11, 'C', 'Término da segunda divisão meiótica do ovócito.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (54, 11, 'D', 'Passagem do espermatozoide pela corona radiata e zona pelúcida.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (55, 11, 'E', 'Fusão das membranas plasmáticas do ovócito e do espermatozoide.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (12, 'Questão 108 - ENEM 2023', 108, 2023, 'ciencias-natureza', NULL, NULL, 'O fogão por indução funciona a partir do surgimento de uma corrente elétrica induzida no fundo da panela, com consequente transformação de energia elétrica em calor por efeito Joule. A principal vantagem desses fogões é a eficiência energética, que é substancialmente maior que a dos fogões convencionais.
A corrente elétrica mencionada é induzida por', 'D', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (56, 12, 'A', 'Radiação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (57, 12, 'B', 'Condução.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (58, 12, 'C', 'Campo elétrico variável.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (59, 12, 'D', 'Campo magnético variável.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (60, 12, 'E', 'Ressonância eletromagnética.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (13, 'Questão 109 - ENEM 2023', 109, 2023, 'ciencias-humanas', NULL, 'Uma academia decide trocar gradualmente seus aparelhos de musculação. Agora, os frequentadores que utilizam os aparelhos do tipo 1 podem também utilizar os aparelhos do tipo 2, representados na figura, para elevar cargas correspondentes às massas M1 e M2 com velocidade constante. A fim de que o exercício seja realizado com a mesma força F, os usuários devem ser orientados a respeito da relação entre as cargas nos dois tipos de aparelhos, já que as polias fixas apenas mudam a direção das forças, enquanto a polia móvel divide as forças.

Em ambos os aparelhos, considere as cordas inextensíveis, as massas das polias e das cordas desprezíveis e que não há dissipação de energia.

![](https://enem.dev/2023/questions/109/e083688b-cc00-4c8b-9de6-01f07a7a6a5c.png)', 'Para essa academia, qual deve ser a razão M2/M1 informada aos usuários?', 'D', ARRAY['https://enem.dev/2023/questions/109/e083688b-cc00-4c8b-9de6-01f07a7a6a5c.png'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (61, 13, 'A', '1/4', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (62, 13, 'B', '1/2', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (63, 13, 'C', '1', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (64, 13, 'D', '2', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (65, 13, 'E', '4', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (14, 'Questão 11 - ENEM 2023', 11, 2023, 'linguagens', NULL, 'Maio foi colorido de amarelo, e o foi porque mundialmente amarelo é a cor convencionada para as advertências. No trânsito, essas advertências têm sido fatais. A estimativa, caso nada seja feito, é a de que se atinjam assustadoras 2,4 milhões de mortes no trânsito em 2030 em todo o mundo.  
A pressa constante, o sentimento de invencibilidade, a certeza de invulnerabilidade, a necessidade de poder, a falta de civilidade, a certeza de impunidade, a ausência de solidariedade, a inexistência de compaixão e o desrespeito por si próprio são circunstâncias reais que, não raro, concorrem para o comportamento violento no trânsito.  
O Maio Amarelo, que preconiza a atenção pela vida, é uma das iniciativas nesse sentido. E é precisamente a atenção pela vida que está esquecida. Essa atenção, por certo, requer menos pressa, mais civilidade, limites assegurados, consciência de vulnerabilidade, solidariedade, compaixão e respeito por si e pelo outro. Reafirmar e praticar esses princípios e valores talvez seja um caminho mais seguro e menos violento, que garanta a vida e não celebre a morte.

Disponível em: http://portaldotransito.com.br. Acesso em: 11 dez. 2018 (adaptado).', 'Considerando os procedimentos argumentativos utilizados, infere-se que o objetivo desse texto é', 'D', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (66, 14, 'A', 'Enumerar as causas determinantes da violência no trânsito.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (67, 14, 'B', 'Contextualizar a campanha de advertência no cenário mundial.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (68, 14, 'C', 'Divulgar dados numéricos alarmantes sobre acidentes de trânsito.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (69, 14, 'D', 'Sensibilizar o público para a importância de uma direção responsável.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (70, 14, 'E', 'Restringir os problemas da violência no trânsito a aspectos emocionais.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (15, 'Questão 110 - ENEM 2023', 110, 2023, 'ciencias-natureza', NULL, 'Um assistente de laboratório precisou descartar sete frascos contendo solução de nitrato de mercúrio(l) que não foram utilizados em uma aula prática. Cada frasco continha 5,25 g de Hg2(NO3)2 dissolvidos em água. Temendo a toxidez do mercúrio e sabendo que o Hg2Cl2 tem solubilidade muito baixa, o assistente optou por retirar o mercúrio da solução por precipitação com cloreto de sódio (NaCl), conforme a equação química:

![](https://enem.dev/2023/questions/110/9874e4c1-d246-4697-8798-52f1577c2542.png)

Na dúvida sobre a massa de NaCl a ser utilizada, o assistente aumentou gradativamente a quantidade adicionada em cada frasco, como apresentado no quadro.

![](https://enem.dev/2023/questions/110/f0ce2b28-d6bf-456a-945d-64bc0518a241.png)

O produto obtido em cada experimento foi filtrado, secado e teve sua massa aferida. O assistente organizou os resultados na forma de um gráfico que correlaciona a massa de NaCl adicionada com a massa de Hg2Cl2 obtida em cada frasco. A massa molar do Hg2(NO3)2 é 525 g mol\\-1, a do NaCl é 58 g mol\\-1 e a do Hg2Cl2 é 472 g mol\\-1.', 'Qual foi o gráfico obtido pelo assistente de laboratório?', 'B', ARRAY['https://enem.dev/2023/questions/110/9874e4c1-d246-4697-8798-52f1577c2542.png','https://enem.dev/2023/questions/110/f0ce2b28-d6bf-456a-945d-64bc0518a241.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (71, 15, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (72, 15, 'B', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (73, 15, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (74, 15, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (75, 15, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (16, 'Questão 111 - ENEM 2023', 111, 2023, 'ciencias-natureza', NULL, '![](https://enem.dev/2023/questions/111/9ae85aec-1b17-4ee7-afd9-e9cf17101aca.png)

SOUSA. M. Disponível em: www.monica.com.br. Acesso em: 2 out. 2012 (adaptado)', 'Na tirinha de Mauricio de Sousa, os personagens Cebolinha e Cascão fazem uma brincadeira utilizando duas latas e um barbante. Ao perceberem que o som pode ser transmitido através do barbante, resolvem alterar o comprimento do barbante para ficar cada vez mais extenso. As demais condições permaneceram inalteradas durante a brincadeira.
Na prática, à medida que se aumenta o comprimento do barbante, ocorre a redução de qual característica da onda sonora?', 'C', ARRAY['https://enem.dev/2023/questions/111/9ae85aec-1b17-4ee7-afd9-e9cf17101aca.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (76, 16, 'A', 'Altura.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (77, 16, 'B', 'Período.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (78, 16, 'C', 'Amplitude.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (79, 16, 'D', 'Velocidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (80, 16, 'E', 'Comprimento.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (17, 'Questão 112 - ENEM 2023', 112, 2023, 'ciencias-natureza', NULL, NULL, 'Informações digitais — dados — são gravadas em discos ópticos, como CD e DVD, na forma de cavidades microscópicas. A gravação e a leitura óptica dessas informações são realizadas por um laser (fonte de luz monocromática). Quanto menores as dimensões dessas cavidades, mais dados são armazenados na mesma área do disco. O fator limitante para a leitura de dados é o espalhamento da luz pelo efeito de difração, fenômeno que ocorre quando a luz atravessa um obstáculo com dimensões da ordem de seu comprimento de onda. Essa limitação motivou o desenvolvimento de lasers com emissão em menores comprimentos de onda, possibilitando armazenar e ler dados em cavidades cada vez menores.
Em qual região espectral se situa o comprimento de onda do laser que otimiza o armazenamento e a leitura de dados em discos de uma mesma área?', 'A', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (81, 17, 'A', 'Violeta.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (82, 17, 'B', 'Azul.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (83, 17, 'C', 'Verde.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (84, 17, 'D', 'Vermelho.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (85, 17, 'E', 'Infravermelho.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (18, 'Questão 113 - ENEM 2023', 113, 2023, 'ciencias-natureza', NULL, NULL, 'O bluetooth é uma tecnologia de comunicação sem fio, de curto alcance, presente em diferentes dispositivos eletrônicos de consumo. Ela permite que aparelhos eletrônicos diferentes se conectem e troquem dados entre si. No padrão bluetooth, denominado de Classe 2, as antenas transmitem sinais de potência igual a 2,4 mW e possibilitam conectar dois dispositivos distanciados até 10 m. Considere que essas antenas se comportam como fontes puntiformes que emitem ondas eletromagnéticas esféricas e que a intensidade do sinal é calculada pela potência por unidade de área. Considere 3 como valor aproximado para π. 
Para que o sinal de bluetooth seja detectado pelas antenas, o valor mínimo de sua intensidade, em W/m²?, e mais próximo de', 'A', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (86, 18, 'A', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (87, 18, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (88, 18, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (89, 18, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (90, 18, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (19, 'Questão 114 - ENEM 2023', 114, 2023, 'ciencias-natureza', NULL, 'Uma equipe de segurança do transporte de uma empresa avalia o comportamento das tensões que aparecem em duas cordas, 1 e 2, usadas para prender uma carga de massa M = 200 kg na carroceria, conforme a ilustração. Quando o caminhão parte do repouso, sua aceleração é constante e igual a 3 m/s2 e, quando ele é freado bruscamente, sua frenagem é constante e igual a 5 m/s2. Em ambas as situações, a carga encontra-se na iminência de movimento, e o sentido do movimento do caminhão está indicado na figura. O coeficiente de atrito estático entre a caixa e c assoalho da carroceria é igual a 0,2. Considere a aceleração da gravidade igual a 10 m/s2, as tensões iniciais nas cordas iguais a zero e as duas cordas ideais.

![](https://enem.dev/2023/questions/114/e245e16d-8a95-4b2e-ab33-6dd299ff9474.png)', 'Nas situações de aceleração e frenagem do caminhão, as tensões nas cordas 1 e 2, em newton, serão', 'A', ARRAY['https://enem.dev/2023/questions/114/e245e16d-8a95-4b2e-ab33-6dd299ff9474.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (91, 19, 'A', 'Aceleração: T1 = 0 e T2 = 200; frenagem: T1 = 600 e T2 = 0.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (92, 19, 'B', 'Aceleração: T1 = 0 e T2 = 200; frenagem: T1 = 1 400 e T2 = 0.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (93, 19, 'C', 'Aceleração: T1 = 0 e T2 = 200; frenagem: T1 = 600 e T2 = 0.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (94, 19, 'D', 'Aceleração: T1 = 560 e T2 = 0; frenagem: T1 = 0 e T2 = 960.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (95, 19, 'E', 'Aceleração: T1 = 640 e T2 = 0; frenagem: T1 = 0 e T2 = 1 040.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (20, 'Questão 115 - ENEM 2023', 115, 2023, 'ciencias-natureza', NULL, NULL, 'A biorremediação designa tratamentos que usam organismos para reduzir a quantidade de substâncias tóxicas no ambiente ou degradá-las em substâncias não tóxicas ou de menor toxicidade. Uma planta aquática, o aguapé, tem sido utilizada para a biorremediação de ambientes contaminados por metais tóxicos. Sabe-se que esses poluentes serão captados para dentro do corpo do vegetal.
Dentro do corpo do vegetal, esses contaminantes serão', 'B', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (96, 20, 'A', 'Digeridos por enzimas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (97, 20, 'B', 'Acumulados nos tecidos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (98, 20, 'C', 'Eliminados pelos estômatos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (99, 20, 'D', 'Metabolizados por glândulas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (100, 20, 'E', 'Utilizados como fonte energética.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (21, 'Questão 116 - ENEM 2023', 116, 2023, 'ciencias-natureza', NULL, 'O ciclo do nitrogênio é composto por várias etapas, conforme a figura, sendo cada uma desempenhada por um grupo específico de microrganismos.

![](https://enem.dev/2023/questions/116/aab4b4fe-505c-4eda-a772-42a363f6ba8a.png)', 'Se o grupo dos microrganismos decompositores fosse exterminado, qual etapa não ocorreria?', 'B', ARRAY['https://enem.dev/2023/questions/116/aab4b4fe-505c-4eda-a772-42a363f6ba8a.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (101, 21, 'A', '1', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (102, 21, 'B', '2', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (103, 21, 'C', '3', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (104, 21, 'D', '4', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (105, 21, 'E', '5', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (22, 'Questão 117 - ENEM 2023', 117, 2023, 'ciencias-natureza', NULL, NULL, 'Os raios cósmicos são fontes de radiação ionizante potencialmente perigosas para o organismo humano. Para quantificar a dose de radiação recebida, utiliza-se o sievert (Sv), definido como a unidade de energia recebida por unidade de massa. A exposição à radiação proveniente de raios cósmicos aumenta com a altitude, o que pode representar um problema para as tripulações de aeronaves. Recentemente, foram realizadas medições acuradas das doses de radiação ionizante para voos entre Rio de Janeiro e Roma.
Os resultados têm indicado que a dose média de radiação recebida na fase de cruzeiro (que geralmente representa 80% do tempo total de voo) desse trecho intercontinental é 2 μSv/h. As normas internacionais da aviação civil limitam em 1 000 horas por ano o tempo de trabalho para as tripulações que atuem em voos intercontinentais. Considere que a dose de radiação ionizante para uma radiografia torácica é estimada em 0,2 mSv.
RUAS, A. C. O tripulante de aeronaves e a radiação ionizante. São Paulo: Edição do Autor, 2019 (adaptado).
 
A quantas radiografias torácicas corresponde a dose de radiação ionizante à qual um tripulante que atue no trecho Rio de Janeiro−Roma é exposto ao longo de um ano?', 'A', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (106, 22, 'A', '8', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (107, 22, 'B', '10', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (108, 22, 'C', '80', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (109, 22, 'D', '100', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (110, 22, 'E', '1000', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (23, 'Questão 118 - ENEM 2023', 118, 2023, 'ciencias-natureza', NULL, 'A gasolina é uma mistura de hidrocarbonetos de cadeias saturadas contendo de 8 a 12 átomos de carbono. Além disso, a gasolina de alto desempenho deve conter elevados teores de hidrocarbonetos de cadeias ramificadas, de forma a resistir à compressão e entrar em ignição apenas quando a vela aciona uma centelha elétrica no motor. No quadro, estão apresentados compostos que podem ser utilizados como combustíveis.

![](https://enem.dev/2023/questions/118/5d656ef9-cabd-499e-bd98-51993ccb6c1c.png)', 'Entre esses compostos, aquele que conferirá maior desempenho como combustível é o', 'C', ARRAY['https://enem.dev/2023/questions/118/5d656ef9-cabd-499e-bd98-51993ccb6c1c.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (111, 23, 'A', 'I.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (112, 23, 'B', 'II.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (113, 23, 'C', 'III.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (114, 23, 'D', 'IV.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (115, 23, 'E', 'V.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (24, 'Questão 119 - ENEM 2023', 119, 2023, 'ciencias-natureza', NULL, 'De acordo com a Constituição Federal, é competencia dos municípios o gerenciamento dos serviços de limpeza e coleta dos resíduos urbanos (lixo). No entanto, há relatos de que parte desse lixo acaba sendo incinerado, liberando substâncias tóxicas para o ambiente e causando acidentes por explosões, principalmente quando ocorre a incineração de frascos de aerossóis (por exemplo: desodorantes, inseticidas e repelentes). A temperatura elevada provoca a vaporização de todo o conteúdo dentro desse tipo de frasco, aumentando a pressão em seu interior até culminar na explosão da embalagem.

ZVEIBIL, V. Z. et al. **Cartilha de limpeza urbana**. Disponível em: www.lbam.org.br. Acesso em: 6 jul. 2015 (adaptado).

Suponha um frasco metálico de um aerossol de capacidade igual a 100 mL, contendo 0,1 mol de produtos gasosos à temperatura de 650 °C, no momento da explosão.

![](https://enem.dev/2023/questions/119/47913cea-fd78-4f5d-af82-f3494e353a85.png)', 'A pressão, em atm, dentro do frasco, no momento da explosão, é mais próxima de', 'C', ARRAY['https://enem.dev/2023/questions/119/47913cea-fd78-4f5d-af82-f3494e353a85.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (116, 24, 'A', '756.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (117, 24, 'B', '533.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (118, 24, 'C', '76.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (119, 24, 'D', '53.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (120, 24, 'E', '13.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (25, 'Questão 12 - ENEM 2023', 12, 2023, 'linguagens', NULL, 'Ainda daquela vez pude constatar a bizarrice dos costumes que constituíam as leis mais ou menos constantes do seu mundo: ao me aproximar, verifiquei que o Sr. Timóteo, gordo e suado, trajava um vestido de franjas e lantejoulas que pertencera a sua mãe. O corpete descia-lhe excessivamente justo na cintura, e aqui e ali rebentava através da costura um pouco da carne aprisionada, esgarçando a fazenda e tornando o prazer de vestir-se daquele modo uma autêntica espécie de suplício. Movia-se ele com lentidão, meneando todas as suas franjas e abanando-se vigorosamente com um desses leques de madeira de sândalo, o que o envolvia numa enjoativa onda de perfume. Não sei direito o que colocara sobre a cabeça, assemelhava-se mais a um turbante ou a um chapéu sem abas de onde saiam vigorosas mechas de cabelos alourados. Como era costume seu também, trazia o rosto pintado — e para isto, bem como para suas vestimentas, apoderara-se de todo o guarda-roupa deixado por sua mãe, também em sua época famosa pela extravagância com que se vestia — o que sem dúvida fazia sobressair-lhe o nariz enorme, tão característico da família Meneses.

CARDOSO, L. Crónica da casa assassinada. São Paulo: Circulo do Livro, s.d.', 'Pela voz de uma empregada da casa, a descrição de um dos membros da família exemplifica a renovação da ficção urbana nos anos 1950, aqui observada na', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (121, 25, 'A', 'Opção por termos e expressões de sentido ambíguo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (122, 25, 'B', 'Crítica social inspirada pelo convívio com os patrões.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (123, 25, 'C', 'Descrição impressionista do fetiche do personagem.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (124, 25, 'D', 'Presença de um foco narrativo de caráter impreciso.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (125, 25, 'E', 'Ambiência de mistério das relações entre familiares.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (26, 'Questão 120 - ENEM 2023', 120, 2023, 'ciencias-natureza', NULL, 'O circuito com três lâmpadas incandescentes idênticas, representado na figura, consiste em uma associação mista de resistores. Cada lâmpada (L1, L2, e L3) é associada, em paralelo, a um resistor de resistência R, formando um conjunto. Esses conjuntos são associados em série, tendo todas as lâmpadas o mesmo brilho quando ligadas à fonte de energia. Após vários dias em uso, apenas a lâmpada L2 queima, enquanto as demais permanecem acesas.

![](https://enem.dev/2023/questions/120/80ceec42-52be-4ea5-8cf1-c75004d0f166.png)', 'Em relação à situação em que todas as lâmpadas funcionam, após a queima de L2, os brilhos das lâmpadas serão', 'C', ARRAY['https://enem.dev/2023/questions/120/80ceec42-52be-4ea5-8cf1-c75004d0f166.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (126, 26, 'A', 'Os mesmos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (127, 26, 'B', 'Mais intensos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (128, 26, 'C', 'Menos intensos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (129, 26, 'D', 'Menos intenso para L1 e o mesmo para L3.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (130, 26, 'E', 'Mais intenso para L1 e menos intenso para L3.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (27, 'Questão 121 - ENEM 2023', 121, 2023, 'ciencias-natureza', NULL, 'Os solos amazônicos, ricos em silicato, não são apropriados para o cultivo por serem incapazes de reter nutrientes. Contudo, descobertas arqueológicas têm demonstrado que os antigos habitantes da Amazônia dominavam a técnica de preparo de um insumo agrícola natural, denominado terra preta. Esse insumo era constituído principalmente de uma espécie de biocarvão (biochar) obtido da queima de matéria orgânica, como troncos de árvores, pedaços de ossos e esterco, capaz de manter um solo fértil por anos.

Admite-se que o efeito do biocarvão na fertilização do solo estava, em parte, relacionado à presença de grupos orgânicos do tipo carboxilato em sua superfície, carregados negativamente (—COO–). Esses grupos atraem íons positivos necessários como nutrientes, tais quais os provenientes do potássio (K), do cálcio (Ca) e do magnésio (Mg), além de micronutrientes, como zinco (Zn) e ferro (Fe). Essa ligação no solo fertilizado é predominantemente iônica, conforme ilustra a figura, em que M\\* representa os cátions metálicos. De acordo com a escala de Pauling, a eletronegatividade do elemento oxigênio é igual a 3,44

![](https://enem.dev/2023/questions/121/7814f78a-9417-4651-bec1-eb30fe7fd046.png)

O quadro apresenta os valores de eletronegatividade desses cinco elementos metálicos.

![](https://enem.dev/2023/questions/121/1913a73f-35d7-4367-a68e-949fa743bf7c.png)

MICHALOVIC, M. Ancient Soil Chemists of the Amazon. **ChemMatters**, fev. 2009 (adaptado).', 'O cátion que resultará em uma interação de maior caráter iônico com o ânion carboxilato será aquele proveniente do elemento', 'A', ARRAY['https://enem.dev/2023/questions/121/7814f78a-9417-4651-bec1-eb30fe7fd046.png','https://enem.dev/2023/questions/121/1913a73f-35d7-4367-a68e-949fa743bf7c.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (131, 27, 'A', 'Potássio.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (132, 27, 'B', 'Cálcio.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (133, 27, 'C', 'Magnésio.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (134, 27, 'D', 'Zinco.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (135, 27, 'E', 'Ferro.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (28, 'Questão 122 - ENEM 2023', 122, 2023, 'ciencias-natureza', NULL, NULL, 'Em uma indústria alimentícia, para produção de doce de leite, utiliza-se um tacho de parede oca com uma entrada para vapor de água a 120 °C e uma saída para água líquida em equilíbrio com o vapor a 100 °C. Ao passar pela parte oca do tacho, o vapor de água transforma-se em líquido, liberando energia. A parede transfere essa energia para o interior do tacho, resultando na evaporação de água e consequente concentração do produto.
No processo de concentração do produto, é utilizada energia proveniente', 'D', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (136, 28, 'A', 'Somente do calor latente de vaporização.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (137, 28, 'B', 'Somente do calor latente de condensação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (138, 28, 'C', 'Do calor sensível e do calor latente de vaporização.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (139, 28, 'D', 'Do calor sensível e do calor latente de condensação.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (140, 28, 'E', 'Do calor latente de condensação e do calor latente de vaporização.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (29, 'Questão 123 - ENEM 2023', 123, 2023, 'ciencias-natureza', NULL, 'Entre os medicamentos mais comuns consumidos para o alívio da dor está o ibuprofeno, um composto quiral com ação anti-inflamatória e efeito analgésico, que é comercializado como fármaco opticamente puro, ou seja, sem a mistura com outro isômero óptico. A fórmula estrutural plana do ibuprofeno é:

![](https://enem.dev/2023/questions/123/045ed5ac-600f-4d71-bc55-63a2f2804c13.png)

Além do ibuprofeno, destacam-se também os princípios ativos a seguir, presentes em outros medicamentos para o alívio da dor:

![](https://enem.dev/2023/questions/123/5b164bb7-d865-44cf-820a-1dc266d8effe.jpg)', 'O princípio ativo que apresenta o mesmo tipo de isomeria espacial que o ibuprofeno é o(a)', 'E', ARRAY['https://enem.dev/2023/questions/123/045ed5ac-600f-4d71-bc55-63a2f2804c13.png','https://enem.dev/2023/questions/123/5b164bb7-d865-44cf-820a-1dc266d8effe.jpg'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (141, 29, 'A', 'Fenacetina.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (142, 29, 'B', 'Paracetamol.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (143, 29, 'C', 'Dipirona sódica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (144, 29, 'D', 'Diclofenaco sódico.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (145, 29, 'E', 'Butilbrometo de escopolamina.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (30, 'Questão 124 - ENEM 2023', 124, 2023, 'ciencias-natureza', NULL, NULL, 'Uma concessionária é responsável por um trecho de 480 quilômetros de uma rodovia. Nesse trecho, foram construídas 10 praças de pedágio, onde funcionários recebem os pagamentos nas cabines de cobrança. Também existe o serviço automático, em que os veículos providos de um dispositivo passam por uma cancela, que se abre automaticamente, evitando filas e diminuindo o tempo de viagem. Segundo a concessionária, o tempo médio para efetuar a passagem em uma cabine é de 3 minutos, e as velocidades máximas permitidas na rodovia são 100 km/h, para veículos leves, e 80 km/h, para veículos de grande porte.
Considere um carro e um caminhão viajando, ambos com velocidades constantes e iguais às máximas permitidas, e que somente o caminhão tenha o serviço automático de cobrança. Comparado ao caminhão, quantos minutos a menos o carro leva para percorrer toda a rodovia?', 'B', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (146, 30, 'A', '30', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (147, 30, 'B', '42', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (148, 30, 'C', '72', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (149, 30, 'D', '288', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (150, 30, 'E', '360', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (31, 'Questão 125 - ENEM 2023', 125, 2023, 'ciencias-natureza', NULL, '**Pais com síndrome de Down**

A síndrome de Down é uma alteração genética associada à trissomia do cromossomo 21, ou seja, o indivíduo possui três cromossomos 21 e não um par, como é normal. Isso ocorre pela união de um gameta contendo um cromossomo 21 com um gameta possuidor de dois cromossomos 21. Embora, normalmente, as mulheres com a síndrome sejam estéreis, em 2008, no interior de São Paulo, uma delas deu à luz uma menina sem a síndrome de Down

MORENO, T. **Três anos após dar à luz, mãe portadora de síndrome de Down revela detalhes de seu dia a dia**. Disponível em: www.band.uol.com.br. Acesso em: 31 out. 2013 (adaptado).', 'Sabendo disso, um jovem casal, ambos com essa síndrome, procura um médico especialista para aconselhamento genético porque querem ter um bebê.
O médico informa ao casal que, com relação ao cromossomo 21, os zigotos formados serão', 'E', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (151, 31, 'A', 'Todos normais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (152, 31, 'B', 'Todos tetrassômicos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (153, 31, 'C', 'Apenas normais ou tetrassômicos', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (154, 31, 'D', 'Apenas trissômicos ou tetrassômicos', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (155, 31, 'E', 'Normais, trissômicos ou tetrassômicos.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (32, 'Questão 126 - ENEM 2023', 126, 2023, 'ciencias-natureza', NULL, 'Para que uma molécula dê origem a um medicamento de administração oral, além de apresentar atividade farmacológica, deve ser capaz de atingir o local de ação. Para tanto, essa molécula não deve se degradar no estômago (onde o meio é fortemente ácido e há várias enzimas que reagem mediante catálise ácida), deve ser capaz de atravessar as membranas celulares e ser solúvel no plasma sanguíneo (sistema aquoso). Para os fármacos cujas estruturas são formadas por cadeias carbônicas longas contendo pelo menos um grupamento amino, um recurso tecnológico empregado é sua conversão no cloridrato correspondente. Essa conversão é representada, de forma genérica, pela equação química:

![](https://enem.dev/2023/questions/126/b0c226d9-5944-4f6d-8b81-0fa0f9f7d511.png)', 'O aumento da eficiência de circulação do fármaco no sangue, promovido por essa conversão, deve-se ao incremento de seu(sua)', 'C', ARRAY['https://enem.dev/2023/questions/126/b0c226d9-5944-4f6d-8b81-0fa0f9f7d511.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (156, 32, 'A', 'Basicidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (157, 32, 'B', 'Lipofilicidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (158, 32, 'C', 'Caráter iônico.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (159, 32, 'D', 'Cadeia carbônica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (160, 32, 'E', 'Estado de oxidação.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (33, 'Questão 127 - ENEM 2023', 127, 2023, 'ciencias-natureza', NULL, '**Toxicidade do cianeto**

A produção de ATP depende do gradiente de prótons gerado pela cadeia respiratória. Nessas reações, os elétrons  
provenientes da oxidação do NADH em NAD+ percorrem a cadeia até chegarem à citocromo c oxidase reduzindo o  
Fe3+ a Fe2+. O oxigênio atua como aceptor final desses elétrons formando água. O cianeto é uma espécie química  
altamente tóxica que tem grande afinidade pelo Fe3+. Quando células são expostas ao cianeto, ele se liga ao sítio de  
Fe3+ da citocromo c oxidase, impedindo a sua conversão em Fe2+ e bloqueando a cadeia respiratória.

![](https://enem.dev/2023/questions/127/97828514-9c7c-491c-9146-e4d8bf25778a.png)

ALBERTS, B. et al. **Biologia molecular da célula**. Porto Alegre: Artmed, 2010 (adaptado).', 'Esse bloqueio aumenta a concentração celular de', 'C', ARRAY['https://enem.dev/2023/questions/127/97828514-9c7c-491c-9146-e4d8bf25778a.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (161, 33, 'A', 'ATP.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (162, 33, 'B', 'Água.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (163, 33, 'C', 'NADH.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (164, 33, 'D', 'Dióxido de carbono.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (165, 33, 'E', 'Citocromo c oxidase.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (34, 'Questão 128 - ENEM 2023', 128, 2023, 'matematica', NULL, 'É comum em viagens de avião sermos solicitados a desligar aparelhos cujo funcionamento envolva a emissão ou a recepção de ondas eletromagnéticas, como celulares. A justificativa dada para esse procedimento é, entre outras coisas, a necessidade de eliminar fontes de sinais eletromagnéticos que possam interferir nas comunicações, via rádio, dos pilotos com a torre de controle.', 'Essa interferência poderá ocorrer somente se as ondas emitidas pelo celular e as recebidas pelo rádio do avião', 'C', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (166, 34, 'A', 'Forem ambas audíveis.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (167, 34, 'B', 'Tiverem a mesma potência.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (168, 34, 'C', 'Tiverem a mesma frequência.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (169, 34, 'D', 'Tiverem a mesma intensidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (170, 34, 'E', 'Propagarem-se com velocidades diferentes.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (35, 'Questão 129 - ENEM 2023', 129, 2023, 'matematica', NULL, 'O Aldrin é um inseticida agrícola organoclorado sintético de baixa polaridade, cuja estrutura molecular simétrica, de fórmula ![](https://enem.dev/broken-image.svg), está representada na figura. Introduzido na agricultura a partir da década de 1950, esse composto apresenta alta persistência no meio ambiente e acumulação nos organismos, sendo danoso para a saúde.

![](https://enem.dev/broken-image.svg)

VIEGAS JÚNIOR, C. Terpenos com atividade inseticida: uma alternativa para o controle químico de insetos. **Química Nova**, v. 26, n. 3, 2003 (adaptado).

Um pesquisador coletou fluidos biológicos de indivíduos de uma população contaminada por esse inseticida agrícola. Ele analisou amostras de saliva, sangue, lágrima, urina e leite quanto à presença dessa substância.', 'Em qual dos fluidos o pesquisador provavelmente encontrou a maior concentração dessa substância?', 'E', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (171, 35, 'A', 'Saliva, por consequência da atividade de enzimas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (172, 35, 'B', 'Sangue, em função das hemácias e leucócitos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (173, 35, 'C', 'Lágrima, em razão da concentração de sais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (174, 35, 'D', 'Urina, pela presenca de moléculas de ureia.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (175, 35, 'E', 'Leite, por causa do alto teor de gorduras.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (36, 'Questão 13 - ENEM 2023', 13, 2023, 'linguagens', NULL, 'Girassol da madrugada  
Teu dedo curioso me segue lento no rosto  
Os sulcos, as sombras machucadas por onde a  
\\[vida passou.  
Que silêncio, prenda minha… Que desvio triunfal  
\\[da verdade,  
Que círculos vagarosos na lagoa em que uma asa  
\\[gratuita roçou..

Tive quatro amores eternos…  
O primeiro era moça donzela,  
O segundo… eclipse, boi que fala, cataclisma,  
O terceiro era a rica senhora,  
O quarto és tu… E eu afinal me repousei dos  
\\[meus cuidados

ANDRADE, M. Poesias completas. Rio de Janeiro: Nova Fronteira, 2013 (fragmento).', 'Perante o outro, o eu lírico revela, na força das memórias evocadas, a', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (176, 36, 'A', 'Vergonha das marcas provocadas pela passagem do tempo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (177, 36, 'B', 'Indecisão em face das possibilidades afetivas do presente.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (178, 36, 'C', 'Serenidade sedimentada pela entrega pacifica ao desejo.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (179, 36, 'D', 'Frustração causada pela vontade de retorno ao passado.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (180, 36, 'E', 'Disponibilidade para a exploração do prazer efêmero.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (37, 'Questão 130 - ENEM 2023', 130, 2023, 'matematica', NULL, 'Uma cafeteria adotou copos fabricados a partir de uma composição de 50% de plástico reciclado não biodegradável e 50% de casca de café. O copo é reutilizável e retornável, pois o material, semelhante a uma cerâmica, suporta a lavagem. Embora ele seja comercializado por um preço considerado alto quando comparado ao de um copo de plástico descartável, essa cafeteria possibilita aos clientes retornarem o copo sujo e levarem o café quente servido em outro copo já limpo e higienizado. O material desse copo oferece também o conforto de não esquentar na parte externa.

**Cafeteria adota copo reutilizável feito com casca de café.** Disponível em: www.gazetadopovo.com.br. Acesso em: 5 dez. 2019 (adaptado).', 'Quais duas vantagens esse copo apresenta em comparação ao copo descartável?', 'D', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (181, 37, 'A', 'Ter a durabilidade de uma cerâmica e ser totalmente biodegradável.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (182, 37, 'B', 'Ser tão durável quanto uma cerâmica e ter alta condutividade térmica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (183, 37, 'C', 'Ser um mau condutor térmico e aumentar o resíduo biodegradável na natureza.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (184, 37, 'D', 'Ter baixa condutividade térmica e reduzir o resíduo não biodegradável na natureza.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (185, 37, 'E', 'Ter alta condutividade térmica e possibilitar a degradação do material no meio ambiente.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (38, 'Questão 131 - ENEM 2023', 131, 2023, 'matematica', NULL, 'O consumo exagerado de refrigerantes é preocupante, pois contribui para o aumento de casos de obesidade e diabetes. Considere dois refrigerantes enlatados, um comum e um diet, e que ambos possuam a mesma quantidade de aditivos, exceto pela presença de açúcar. O refrigerante comum contém basicamente água carbonatada e grande quantidade de açúcar; já o refrigerante diet tem água carbonatada e adoçantes, cujas massas são muito pequenas.

CAVAGIS, A. D. M.; PEREIRA, E. A.; OLIVEIRA, L. C. Um método simples para avaliar o teor de sacarose e CO2 em refrigerantes. **Química Nova na Escola**, n. 3, ago. 2014 (adaptado).', 'Entre as duas versões apresentadas, o refrigerante comum possui', 'A', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (186, 38, 'A', 'Maior densidade.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (187, 38, 'B', 'Menor viscosidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (188, 38, 'C', 'Maior volume de gás dissolvido.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (189, 38, 'D', 'Menor massa de solutos dissolvidos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (190, 38, 'E', 'Maior temperatura de congelamento.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (39, 'Questão 132 - ENEM 2023', 132, 2023, 'matematica', NULL, 'O manual de um automóvel alerta sobre os cuidados em relação à pressão do ar no interior dos pneus. Recomenda-se que a pressão seja verificada com os pneus frios (à temperatura ambiente). Um motorista, desatento a essa informação, realizou uma viagem longa sobre o asfalto quente e, em seguida, verificou que a pressão![](https://enem.dev/2023/questions/132/99a53ed4-bbd2-4aa0-9301-ee4cd640a4b6.jpg) no interior dos pneus não era a recomendada pelo fabricante. Na ocasião, a temperatura dos pneus era ![](https://enem.dev/2023/questions/132/2367c9cb-2c1a-4b79-b582-86fc01088ff8.jpg). Após um longo período em repouso, os pneus do carro atingiram a temperatura ambiente T. Durante o resfriamento, não há alteração no volume dos pneus e na quantidade de ar no seu interior. Considere o ar dos pneus um gás perfeito (também denominado gás ideal).', 'Durante o processo de resfriamento, os valores de pressão em relação à temperatura (P x T) são representados pelo gráfico:', 'E', ARRAY['https://enem.dev/2023/questions/132/99a53ed4-bbd2-4aa0-9301-ee4cd640a4b6.jpg','https://enem.dev/2023/questions/132/2367c9cb-2c1a-4b79-b582-86fc01088ff8.jpg'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (191, 39, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (192, 39, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (193, 39, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (194, 39, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (195, 39, 'E', NULL, NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (40, 'Questão 133 - ENEM 2023', 133, 2023, 'ciencias-natureza', NULL, 'O descarte de detergentes comuns nos esgotos domésticos ocasiona a formação de uma camada de espuma que impede a entrada de oxigênio na água. Os microrganismos que vivem nessas águas não são capazes de quebrar moléculas ramificadas, ocorrendo assim um desequilíbrio ambiental nos rios. A fórmula a seguir representa a estrutura química de um tensoativo presente na composição de um detergente não biodegradável.

![](https://enem.dev/2023/questions/133/51c8e3c3-3a3f-4aec-ac94-b1ee4037a55f.png)

**Tensoativo não biodegradável**', 'Qual modificação química na estrutura desse tensoativo o tornaria um detergente biodegradável?', 'E', ARRAY['https://enem.dev/2023/questions/133/51c8e3c3-3a3f-4aec-ac94-b1ee4037a55f.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (196, 40, 'A', 'Retirar a parte polar da molécula.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (197, 40, 'B', 'Eliminar as insaturações do anel aromático.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (198, 40, 'C', 'Trocar o grupo aniônico por um grupo neutro.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (199, 40, 'D', 'Alterar o grupo aniônico por um grupo catiônico.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (200, 40, 'E', 'Modificar a cadeia carbônica para cadeia normal.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (41, 'Questão 134 - ENEM 2023', 134, 2023, 'ciencias-natureza', NULL, '**Avaliação de substâncias genotóxicas**

O ensaio de micronúcleos é um teste de avaliação de genotoxicidade que associa a presença de micronúcleos (pequenos núcleos que aparecem próximo aos núcleos das células) com lesões genéticas. Os micronúcleos são fragmentos de DNA encapsulados, provenientes do fuso mitótico durante a divisão celular.

DIAS, V. M. **Micronúcleos em células tumorais**: biologia e implicações  
para a tumorigênese. Dissertação de Mestrado. USP, 2006 (adaptado).', 'Os micronúcleos se originam dos(as)', 'E', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (201, 41, 'A', 'Nucléolos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (202, 41, 'B', 'Lisossomos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (203, 41, 'C', 'Ribossomos', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (204, 41, 'D', 'Mitocôndrias', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (205, 41, 'E', 'Cromossomos', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (42, 'Questão 135 - ENEM 2023', 135, 2023, 'ciencias-natureza', NULL, 'O petróleo é uma matéria-prima muito valiosa e métodos geofísicos são úteis na sua prospecção. É possível identificar a composição de materiais estratificados medindo-se a velocidade de propagação do som (onda mecânica) através deles. Considere que uma camada de 450 m de um líquido se encontra presa no subsolo entre duas camadas rochosas, conforme o esquema. Um pulso acústico (que gera uma vibração mecânica) é emitido a partir da superfície do solo, onde são posteriormente recebidas duas vibrações refletidas (ecos). A primeira corresponde à reflexão do pulso na interface superior do líquido com a camada rochosa. A segunda vibração deve-se à reflexão do pulso na interface inferior. O tempo entre a emissão do pulso e a chegada do primeiro eco é de 0,5 s. O segundo eco chega 1,1 s após a emissão do pulso

![](https://enem.dev/2023/questions/135/11f4c343-9f23-4f60-a61f-10d4dbc2eb6c.png)', 'A velocidade do som na camada líquida, em metro por segundo, é', 'D', ARRAY['https://enem.dev/2023/questions/135/11f4c343-9f23-4f60-a61f-10d4dbc2eb6c.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (206, 42, 'A', '270.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (207, 42, 'B', '540.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (208, 42, 'C', '818.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (209, 42, 'D', '1 500.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (210, 42, 'E', '1 800.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (43, 'Questão 136 - ENEM 2023', 136, 2023, 'matematica', NULL, 'Um artista plástico esculpe uma escultura a partir de um bloco de madeira de lei, em etapas. Inicialmente, esculpe um cone reto com 36 cm de altura e diâmetro da base medindo 18 cm. Em seguida, remove desse cone um cone menor, cujo diâmetro da base mede 6 cm, obtendo, assim, um tronco de cone, conforme ilustrado na figura.

![](https://enem.dev/2023/questions/136/565c2d5a-96a0-4468-9bb1-2710707a40fd.png)

Em seguida, perfura esse tronco de cone, removendo um cilindro reto, de diâmetro 6 cm, cujo eixo de simetria é o mesmo do cone original. Dessa forma, ao final, a escultura tem a forma de um tronco de cone com uma perfuração cilíndrica de base a base.  
O tipo de madeira utilizada para produzir essa escultura tem massa igual a 0,6 g por centímetro cúbico de volume. Utilize 3 como aproximação para π.', 'Qual é a massa, em grama, dessa escultura?', 'B', ARRAY['https://enem.dev/2023/questions/136/565c2d5a-96a0-4468-9bb1-2710707a40fd.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (211, 43, 'A', '1.198,8', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (212, 43, 'B', '1.296,0', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (213, 43, 'C', '1.360,8', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (214, 43, 'D', '4.665,6', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (215, 43, 'E', '4.860,0', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (44, 'Questão 137 - ENEM 2023', 137, 2023, 'matematica', NULL, 'Os 100 funcionários de uma empresa estão distribuídos em dois setores: Produção e Administração.

Os funcionários de um mesmo setor recebem salários com valores iguais. O quadro apresenta a quantidade de funcionários por setor e seus respectivos salários.

![](https://enem.dev/2023/questions/137/fc161c5c-10e9-46d8-a75d-09c59b21d5a4.png)', 'A média dos salários dos 100 funcionários dessa empresa, em real, é', 'C', ARRAY['https://enem.dev/2023/questions/137/fc161c5c-10e9-46d8-a75d-09c59b21d5a4.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (216, 44, 'A', '2.000,00.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (217, 44, 'B', '2.500,00.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (218, 44, 'C', '3.250,00.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (219, 44, 'D', '4.500,00.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (220, 44, 'E', '9.000,00.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (45, 'Questão 138 - ENEM 2023', 138, 2023, 'matematica', NULL, 'Visando atrair mais clientes, o gerente de uma loja anunciou uma promoção em que cada cliente que realizar uma compra pode ganhar um voucher para ser usado em sua próxima compra. Para ganhar seu voucher, o cliente precisa retirar, ao acaso, uma bolinha de dentro de cada uma das duas urnas A e B disponibilizadas pelo gerente, nas quais há apenas bolinhas pretas e brancas. Atualmente, a probabilidade de se escolher, ao acaso, uma bolinha preta na urna A é igual a 20% e a probabilidade de se escolher uma bolinha preta na urna B é 25%. Ganha o voucher o cliente que retirar duas bolinhas pretas, uma de cada urna.

Com o passar dos dias, o gerente percebeu que, para a promoção ser viável aos negócios, era preciso alterar a probabilidade de acerto do cliente sem alterar a regra da promoção. Para isso, resolveu alterar a quantidade de bolinhas brancas na urna B de forma que a probabilidade de um cliente ganhar o voucher passasse a ser menor ou igual a 1%. Sabe-se que a urna B tem 4 bolinhas pretas e que, em ambas as urnas, todas as bolinhas têm a mesma probabilidade de serem retiradas.', 'Qual é o número mínimo de bolinhas brancas que o gerente deve adicionar à urna B?', 'C', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (221, 45, 'A', '20', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (222, 45, 'B', '60', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (223, 45, 'C', '64', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (224, 45, 'D', '68', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (225, 45, 'E', '80', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (46, 'Questão 139 - ENEM 2023', 139, 2023, 'matematica', NULL, 'O gerente de uma fábrica pretende comparar a evolução das vendas de dois produtos similares (I e II). Para isso, passou a verificar o número de unidades vendidas de cada um desses produtos em cada mês. Os resultados dessa verificação, para os meses de abril a junho, são apresentados na tabela.

![](https://enem.dev/2023/questions/139/abba5cb1-da9d-4899-bda7-97099ca51147.png)

O gerente estava decidido a cessar a produção do produto II no mês seguinte àquele em que as vendas do produto I superassem as do produto II.  
Suponha que a variação na quantidade de unidades vendidas dos produtos I e II se manteve, mês a mês, como no período representado na tabela.', 'Em qual mês o produto II parou de ser produzido?', 'D', ARRAY['https://enem.dev/2023/questions/139/abba5cb1-da9d-4899-bda7-97099ca51147.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (226, 46, 'A', 'Junho.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (227, 46, 'B', 'Julho.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (228, 46, 'C', 'Agosto.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (229, 46, 'D', 'Setembro.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (230, 46, 'E', 'Outubro.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (47, 'Questão 14 - ENEM 2023', 14, 2023, 'linguagens', NULL, '**Dão Lalalão**  
Do povoado do Ão, ou dos sítios perto, alguém precisava urgente de querer vir por escutar a novela do rádio. Ouvia-a, aprendia-a, guardava na ideia, e, retornado ao Ão, no dia seguinte, a repetia a outros.

Assim estavam jantando, vinham os do povoado receber a nova parte da novela do rádio. Ouvir já tinham ouvido tudo, de uma vez, fugia da regra: falhara ali no Ão, na véspera, o caminhão de um comprador de galinhas e ovos, seo Abrãozinho Buristém, que carregava um rádio pequeno, de pilhas, armara um fio no arame da cerca… Mas queriam escutar outra vez, por confirmação. — “A estória é estável de boa, mal que acompridada: taca e não rende…” — explicava o Zuz ao Dalberto.

Soropita começou a recontar o capitulo da novela. Sem trabalho, se recordava das palavras, até com clareza — disso se admirava. Contava com prazer de demorar, encher a sala com o poder de outros altos personagens. Tomar a atenção de todos, pudesse contar aquilo noite adiante. Era preciso trazer luz, nem uns enxergavam mais os outros; quando alguém ria, ria de muito longe. O capitulo da novela estava terminando.

ROSA, J. G. **Noites do sertão (Corpo de baile)**. São Paulo: Global, 2021.', 'Nesse trecho do conto, o gosto dos moradores do povoado por ouvir a novela de rádio recontada por Soropita deve-se ao(à)', 'D', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (231, 47, 'A', 'Qualidade do som do rádio.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (232, 47, 'B', 'Estabilidade do enredo contado.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (233, 47, 'C', 'Ineditismo do capítulo da novela.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (234, 47, 'D', 'Jeito singular de falar aos ouvintes.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (235, 47, 'E', 'Dificuldade de compreensão da história.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (48, 'Questão 140 - ENEM 2023', 140, 2023, 'matematica', NULL, 'Uma empresa de transporte faz regularmente um levantamento do número de viagens realizadas durante o dia por todos os 160 motoristas cadastrados em seu aplicativo. Em um certo dia, foi gerado um relatório, por meio de um gráfico de barras, no qual se relacionaram a quantidade de motoristas com a quantidade de viagens realizadas até aquele instante do dia.

![](https://enem.dev/2023/questions/140/846c1155-c9f0-48ad-a862-f9bf883c3935.png)', 'Comparando os valores da média, da mediana e da moda da distribuição das quantidades de viagens realizadas pelos motoristas cadastrados nessa empresa, obtém-se', 'E', ARRAY['https://enem.dev/2023/questions/140/846c1155-c9f0-48ad-a862-f9bf883c3935.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (236, 48, 'A', 'Mediana = média < moda.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (237, 48, 'B', 'Mediana = moda < média.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (238, 48, 'C', 'Mediana < média < moda.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (239, 48, 'D', 'Moda < média < mediana.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (240, 48, 'E', 'Moda < mediana < média.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (49, 'Questão 141 - ENEM 2023', 141, 2023, 'matematica', NULL, NULL, 'Qual a probabilidade de o vencedor do sorteio ser um estudante do terceiro ano?', 'E', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (241, 49, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (242, 49, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (243, 49, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (244, 49, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (245, 49, 'E', NULL, NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (50, 'Questão 142 - ENEM 2023', 142, 2023, 'matematica', NULL, NULL, 'Qual é a quantidade mínima de água, em litro, que cada morador, em média, deverá economizar por dia, de modo que o reservatório não fique sem água nos próximos 10 dias?', 'A', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (246, 50, 'A', '50', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (247, 50, 'B', '60', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (248, 50, 'C', '80', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (249, 50, 'D', '140', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (250, 50, 'E', '150', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (51, 'Questão 143 - ENEM 2023', 143, 2023, 'matematica', NULL, 'Em janeiro do ano passado, a direção de uma fábrica abriu uma creche para os filhos de seus funcionários, com 10 salas, cada uma com capacidade para atender 10 crianças a cada ano. As vagas são sorteadas entre os filhos dos funcionários inscritos, enquanto os não contemplados pelo sorteio formam uma lista de espera. No ano passado, a lista de espera teve 400 nomes e, neste ano, esse número cresceu 10%. A direção da fábrica realizou uma pesquisa e constatou que a lista de espera para o próximo ano terá a mesma quantidade de nomes da lista de espera deste ano. Decidiu, então, construir, ao longo desse ano, novas salas para a creche, também com capacidade de atendimento para 10 crianças cada, de modo que o número de nomes na lista de espera no próximo ano seja 25% menor que o deste ano.', 'O número mínimo de salas que deverão ser construídas é', 'B', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (251, 51, 'A', '10', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (252, 51, 'B', '11', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (253, 51, 'C', '12', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (254, 51, 'D', '30', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (255, 51, 'E', '33', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (52, 'Questão 144 - ENEM 2023', 144, 2023, 'matematica', NULL, 'A foto mostra a construção de uma cisterna destinada ao armazenamento de água. Uma cisterna como essa, na forma de cilindro circular reto com 3 m² de área da base, foi abastecida por um curso-d’água com vazão constante. O seu proprietário registrou a altura do nível da água no interior da cisterna durante o abastecimento em diferentes momentos de um mesmo dia, conforme o quadro.

![](https://enem.dev/2023/questions/144/c606403f-fd10-4c02-8e46-736fece94b85.png)

![](https://enem.dev/2023/questions/144/2107cabc-64d0-4a1f-9eab-fa7dce0e9ac2.png)

Disponível em: www.paraibamix.com. Acesso em: 3 dez. 2012.', 'Qual foi a vazão, em metro cúbico por hora, do curso-d’água que abasteceu a cisterna?', 'C', ARRAY['https://enem.dev/2023/questions/144/c606403f-fd10-4c02-8e46-736fece94b85.png','https://enem.dev/2023/questions/144/2107cabc-64d0-4a1f-9eab-fa7dce0e9ac2.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (256, 52, 'A', '0,3', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (257, 52, 'B', '0,5', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (258, 52, 'C', '0,9', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (259, 52, 'D', '1,8', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (260, 52, 'E', '2,7', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (53, 'Questão 145 - ENEM 2023', 145, 2023, 'matematica', NULL, 'Num certo momento de um jogo digital, a tela apresenta a imagem representada na figura. O ponto Q1 representa a posição de um jogador que está com a bola, os pontos Q2, Q3, Q4 , Q5 e Q6  
também indicam posições de jogadores da mesma equipe, e os pontos A e B indicam os dois pés da trave mais próxima deles. No momento da partida retratado, o jogador Q1 tem a posse da bola, que será passada para um dos outros jogadores das posições Qn, n ∈ {2, 3, 4, 5, 6}, cujo ângulo AQnB tenha a mesma medida do ângulo AQ1 B.

![](https://enem.dev/2023/questions/145/f338280e-33fe-4896-b296-cfb94ca78430.png)', 'Qual é o jogador que receberá a bola?', 'B', ARRAY['https://enem.dev/2023/questions/145/f338280e-33fe-4896-b296-cfb94ca78430.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (261, 53, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (262, 53, 'B', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (263, 53, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (264, 53, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (265, 53, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (54, 'Questão 146 - ENEM 2023', 146, 2023, 'matematica', NULL, '![](https://enem.dev/2023/questions/146/74e0c851-b2af-410d-9f19-3348dd8f883a.jpg)', 'Considere que os números colocados nos vértices do triângulo estejam em progressão aritmética de razão igual a 2.
Nas condições propostas, quais as possíveis soluções para as somas dos números que formam os lados do triângulo?', 'E', ARRAY['https://enem.dev/2023/questions/146/74e0c851-b2af-410d-9f19-3348dd8f883a.jpg'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (266, 54, 'A', 'Há somente uma solução possível, e as somas em cada lado do triângulo são iguais a 7.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (267, 54, 'B', 'Há somente uma solução possível, e as somas em cada lado do triângulo são iguais a 9.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (268, 54, 'C', 'Há somente duas soluções possíveis, uma em que as somas em cada lado do triângulo são iguais a 7 e outra em que as somas são iguais a 9.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (269, 54, 'D', 'Há somente duas soluções possíveis, uma em que as somas em cada lado do triângulo são iguais a 9 e outra em que as somas são iguais a 12.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (270, 54, 'E', 'Há somente duas soluções possíveis, uma em que as somas em cada lado do triângulo são iguais a 10 e outra em que as somas são iguais a 11.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (55, 'Questão 147 - ENEM 2023', 147, 2023, 'matematica', NULL, NULL, 'Alguns estudos comprovam que os carboidratos fornecem energia ao corpo, preservam as proteínas estruturais dos músculos durante a prática de atividade física e ainda dão força para o cérebro coordenar os movimentos, o que de fato tem impacto positivo no desenvolvimento do praticante. O ideal é consumir 1 grama de carboidrato para cada minuto de caminhada.
CIRINO, C. Boa pergunta: consumir carboidratos antes dos exercícios melhora o desempenho do atleta? Revista Saúde! É Vital, n. 330, nov. 2010 (adaptado).
Um casal realizará diariamente 30 minutos de caminhada, ingerindo, antes dessa atividade, a quantidade ideal de carboidratos recomendada. Para ter o consumo ideal apenas por meio do consumo de pão de fôrma integral, o casal planeja garantir o suprimento de pães para um período de 30 dias ininterruptos. Sabe-se que cada pacote desse pão vem com 18 fatias, e que cada uma delas tem 15 gramas de carboidratos.
A quantidade mínima de pacotes de pão de fôrma necessários para prover o suprimento a esse casal é', 'D', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (271, 55, 'A', '1', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (272, 55, 'B', '4', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (273, 55, 'C', '6', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (274, 55, 'D', '7', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (275, 55, 'E', '8', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (56, 'Questão 148 - ENEM 2023', 148, 2023, 'ciencias-humanas', NULL, 'O mastro de uma bandeira foi instalado perpendicularmente ao solo em uma região plana. Devido aos fortes ventos, três cabos de aço, de mesmo comprimento, serão instalados para dar sustentação ao mastro. Cada cabo de aço ficará perfeitamente esticado, com uma extremidade num ponto P do mastro, a uma altura h do solo, e a outra extremidade, num ponto no chão, como mostra a figura.

![](https://enem.dev/2023/questions/148/c6c6b6c4-3fba-4a68-99c6-014bb190c456.png)', 'Os cabos de aço formam um ângulo a com o plano do chão. Por medida de segurança, há apenas três opções de instalação:
• opção I: h = 11 m e a = 30°
• opção II: h = 12 m e a = 45°
• opção III: h = 18 m e a = 60°
A opção a ser escolhida é aquela em que a medida dos cabos seja a menor possível.
Qual será a medida, em metro, de cada um dos cabos a serem instalados?', 'C', ARRAY['https://enem.dev/2023/questions/148/c6c6b6c4-3fba-4a68-99c6-014bb190c456.png'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (276, 56, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (277, 56, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (278, 56, 'C', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (279, 56, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (280, 56, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (57, 'Questão 149 - ENEM 2023', 149, 2023, 'ciencias-humanas', NULL, 'Um controlador de voo dispõe de um instrumento que descreve a altitude de uma aeronave em voo, em função da distância em solo. Essa distância em solo é a medida na horizontal entre o ponto de origem do voo até o ponto que representa a projeção ortogonal da posição da aeronave, em voo, no solo. Essas duas grandezas são dadas numa mesma unidade de medida.

A tela do instrumento representa proporcionalmente as dimensões reais das distâncias associadas ao voo. A figura apresenta a tela do instrumento depois de concluída a viagem de um avião, sendo a medida do lado de cada quadradinho da malha igual a 1 cm.

![](https://enem.dev/2023/questions/149/a88a534d-3ee0-4b70-aba7-1b3e7c46b5f3.png)', 'Essa tela apresenta os dados de um voo cuja maior altitude alcançada foi de 5 km.
A escala em que essa tela representa as medidas reais é', 'E', ARRAY['https://enem.dev/2023/questions/149/a88a534d-3ee0-4b70-aba7-1b3e7c46b5f3.png'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (281, 57, 'A', '1 : 5.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (282, 57, 'B', '1 : 11.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (283, 57, 'C', '1 : 55.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (284, 57, 'D', '1 : 5000.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (285, 57, 'E', '1 : 500 000.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (58, 'Questão 15 - ENEM 2023', 15, 2023, 'linguagens', NULL, 'As cinzas do Museu Nacional, no Rio de Janeiro, consumido pelas chamas no mês de setembro de 2018, são mais do que restos de fósseis, cerâmicas e espécimes raros. O museu abrigava, entre mais de 20 milhões de peças, os esqueletos com as respostas para perguntas que ainda não haviam sido respondidas — ou sequer feitas — por pesquisadores brasileiros. E o incêndio pode ter calado para sempre palavras e cantos indígenas ancestrais, de línguas que não existem mais no mundo.

O acervo do local continha gravações de conversas, cantos e rituais de dezenas de sociedades indígenas, muitas feitas durante a década de 1960 com antigos gravadores de rolo e que ainda não haviam sido digitalizadas. Alguns dos registros abordavam línguas já extintas, sem falantes originais ainda vivos. “A esperança é que outras instituições tenham registros dessas línguas”, diz a linguista Marilia Facó Soares. A pesquisadora, que trabalha com os índios Tikuna, o maior grupo da Amazônia brasileira, crê ter perdido parte de seu material. “Terei que fazer novas viagens de campo para recompor meus arquivos. Mas obviamente não dá para recuperar a fala de nativos já falecidos, geralmente os mais idosos”, lamenta.

Disponível em: https://brasil.elpais.com. Acesso em: 10 dez. 2018 (adaptado).', 'A perda dos registros linguísticos no incêndio do Museu Nacional tem impacto potencializado, uma vez que', 'B', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (286, 58, 'A', 'Exige a retomada das pesquisas por especialistas de diferentes áreas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (287, 58, 'B', 'Representa danos irreparáveis à memória e à identidade nacionais.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (288, 58, 'C', 'Impossibilita o surgimento de novas pesquisas na área.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (289, 58, 'D', 'Resulta na extinção da cultura de povos originários.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (290, 58, 'E', 'Inviabiliza o estudo da língua do povo Tikuna.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (59, 'Questão 150 - ENEM 2023', 150, 2023, 'matematica', NULL, 'Dirigir após ingerir bebidas alcoólicas é uma atitude extremamente perigosa, uma vez que, a partir da primeira dose, a pessoa já começa a ter perda de sensibilidade de movimentos e de reflexos. Apesar de a eliminação e absorção do álcool depender de cada pessoa e de como o organismo consegue metabolizar a substância, ao final da primeira hora após a ingestão, a concentração de álcool (C) no sangue corresponde a aproximadamente 90% da quantidade (q) de álcool ingerida, e a eliminação total dessa concentração pode demorar até 12 horas.

Disponível em: http://g1.globo.com. Acesso em: 1 dez. 2018 (adaptado).', 'Nessas condições, ao final da primeira hora após a ingestão da quantidade q de álcool, a concentração C dessa substância no sangue é expressa algebricamente por', 'A', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (291, 59, 'A', 'C = 0,9q', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (292, 59, 'B', 'C = 0,1q', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (293, 59, 'C', 'C = 1 − 0,1q', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (294, 59, 'D', 'C = 1 − 0,9q', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (295, 59, 'E', 'C = q − 10', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (60, 'Questão 151 - ENEM 2023', 151, 2023, 'matematica', NULL, 'Um investidor iniciante observou o gráfico que apresenta a evolução dos valores de duas criptomoedas A e B em relação ao tempo.

![](https://enem.dev/2023/questions/151/276495a3-e5f2-4e4c-83b0-3473512a5274.png)

Durante horas consecutivas, esses valores foram observados em nove instantes, representados por horas exatas.', 'Em quantos desses instantes a criptomoeda A estava mais valorizada do que a criptomoeda B?', 'B', ARRAY['https://enem.dev/2023/questions/151/276495a3-e5f2-4e4c-83b0-3473512a5274.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (296, 60, 'A', '3', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (297, 60, 'B', '4', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (298, 60, 'C', '6', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (299, 60, 'D', '7', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (300, 60, 'E', '9', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (61, 'Questão 152 - ENEM 2023', 152, 2023, 'matematica', NULL, 'A exposição a alguns níveis sonoros pode causar lesões auditivas. Por isso, em uma indústria, são adotadas medidas preventivas de acordo com a máquina que o funcionário opera e o nível _N_ de intensidade do som, medido em decibel (dB), a que o operário é exposto, sendo ![](https://enem.dev/2023/questions/152/30b0ee85-ac44-4eca-a7c9-54bd70f9c069.png), _I_ a intensidade do som e ![](https://enem.dev/2023/questions/152/40f43a4f-f8da-44a9-a02c-f20ba89a48ce.png).

Disponível em: www.sofisica.com.br. Acesso em: 8 jul. 2015 (adaptado).

Quando o som é considerado baixo, ou seja, _N_ = 48 dB ou menos, deve ser utilizada a medida preventiva I. No caso de o som ser moderado, quando _N_ está no intervalo (48 dB, 55 dB), deve ser utilizada a medida preventiva II. Quando o som é moderado alto, que equivale a _N_ no intervalo (55 dB, 80 dB), a medida preventiva a ser usada é a III. Se _N_ estiver no intervalo (80 dB, 115 dB), quando o som é considerado alto, deve ser utilizada a medida preventiva IV. E se o som é considerado muito alto, com _N_ maior que 115 dB, deve-se utilizar a medida preventiva V.  
Uma nova máquina, com ![](https://enem.dev/2023/questions/152/13f26008-1dcf-404f-b3cf-aae104a036c1.png), foi adquirida e será classificada de acordo com o nível de ruído que produz.  
Considere 0,3 como aproximação para ![](https://enem.dev/2023/questions/152/717fdd2f-5eef-48c9-9211-8f62bdb2639c.png).', 'O funcionário que operará a nova máquina deverá adotar a medida preventiva', 'B', ARRAY['https://enem.dev/2023/questions/152/30b0ee85-ac44-4eca-a7c9-54bd70f9c069.png','https://enem.dev/2023/questions/152/40f43a4f-f8da-44a9-a02c-f20ba89a48ce.png','https://enem.dev/2023/questions/152/13f26008-1dcf-404f-b3cf-aae104a036c1.png','https://enem.dev/2023/questions/152/717fdd2f-5eef-48c9-9211-8f62bdb2639c.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (301, 61, 'A', 'I.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (302, 61, 'B', 'II.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (303, 61, 'C', 'III.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (304, 61, 'D', 'IV.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (305, 61, 'E', 'V.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (62, 'Questão 153 - ENEM 2023', 153, 2023, 'ciencias-humanas', NULL, 'Um supermercado conta com cinco caixas disponíveis para pagamento. Foram instaladas telas que apresentam o tempo médio gasto por cada caixa para iniciar e finalizar o atendimento de cada cliente, e o número de pessoas presentes na fila de cada caixa em tempo real. Um cliente, na hora de passar sua compra, sabendo que cada um dos cinco caixas iniciará um novo atendimento naquele momento, pretende gastar o menor tempo possível de espera na fila. Ele observa que as telas apresentavam as informações a seguir.  
• Caixa I: atendimento 12 minutos, 5 pessoas na fila.  
• Caixa II: atendimento 6 minutos, 9 pessoas na fila.  
• Caixa III: atendimento 5 minutos, 6 pessoas na fila.  
• Caixa IV: atendimento 15 minutos, 2 pessoas na fila.  
• Caixa V: atendimento 9 minutos, 3 pessoas na fila.', 'Para alcançar seu objetivo, o cliente deverá escolher o caixa', 'E', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (306, 62, 'A', 'I.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (307, 62, 'B', 'II.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (308, 62, 'C', 'III.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (309, 62, 'D', 'IV.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (310, 62, 'E', 'V.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (63, 'Questão 154 - ENEM 2023', 154, 2023, 'ciencias-humanas', NULL, 'As figuras pintadas no quadro da sala de estar de uma residência representam as silhuetas de parte das torres de um castelo e, ao fundo, a de uma lua cheia. A lua foi pintada na forma de um círculo, e o telhado da torre mais alta, na forma de triângulo equilátero, foi pintado sobrepondo parte da lua. O centro da lua coincide com um dos vértices do telhado da torre mais alta.

![](https://enem.dev/2023/questions/154/d39268bf-82aa-4063-8bcf-dfdafa4a3aa8.png)', 'Nesse quadro, a parte da lua escondida atrás da torre mais alta do castelo pode ser representada por um', 'B', ARRAY['https://enem.dev/2023/questions/154/d39268bf-82aa-4063-8bcf-dfdafa4a3aa8.png'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (311, 63, 'A', 'Cone.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (312, 63, 'B', 'Setor circular.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (313, 63, 'C', 'Segmento circular.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (314, 63, 'D', 'Triângulo isósceles.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (315, 63, 'E', 'Arco de circunferência.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (64, 'Questão 155 - ENEM 2023', 155, 2023, 'matematica', NULL, 'Na planta baixa de um clube, a piscina é representada por um quadrado cuja área real mede 400 m². Ao redor dessa piscina, será construída uma calçada, de largura constante igual a 5 m.

![](https://enem.dev/2023/questions/155/05746583-c107-4dd6-8a3b-7e7d0da99377.png)', 'Qual é a medida da área, em metro quadrado, ocupada pela calçada?', 'D', ARRAY['https://enem.dev/2023/questions/155/05746583-c107-4dd6-8a3b-7e7d0da99377.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (316, 64, 'A', '1.000', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (317, 64, 'B', '900', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (318, 64, 'C', '600', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (319, 64, 'D', '500', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (320, 64, 'E', '400', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (65, 'Questão 156 - ENEM 2023', 156, 2023, 'matematica', NULL, 'Uma pessoa caminha por 30 minutos e utiliza um aplicativo instalado em seu celular para monitorar a variação da intensidade do sinal de internet recebido pelo aparelho durante o deslocamento. Chegando ao seu destino, o aplicativo forneceu este gráfico:

![](https://enem.dev/2023/questions/156/e9e0b793-5535-48e6-87c6-5516e6d7c8cd.png)', 'Por quantos minutos, durante essa caminhada, o celular dessa pessoa ficou sem receber sinal de internet?', 'A', ARRAY['https://enem.dev/2023/questions/156/e9e0b793-5535-48e6-87c6-5516e6d7c8cd.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (321, 65, 'A', '6', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (322, 65, 'B', '8', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (323, 65, 'C', '10', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (324, 65, 'D', '14', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (325, 65, 'E', '24', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (66, 'Questão 157 - ENEM 2023', 157, 2023, 'matematica', NULL, 'Um professor, para promover a aprendizagem dos estudantes em estatística, propôs uma atividade. O objetivo era verificar o percentual de estudantes com massa corporal abaixo da média e altura acima da média de um grupo de estudantes. Para isso, usando uma balança e uma fita métrica, avaliou uma amostra de dez estudantes, anotando as medidas observadas. O gráfico apresenta a massa corporal, em quilograma, e a altura, em metro, obtidas na atividade

![](https://enem.dev/2023/questions/157/13cfbc97-0034-4904-9100-ff5ca3f6504e.png)

Após a coleta dos dados, os estudantes calcularam a média dos valores obtidos, referentes à massa corporal e à altura, obtendo, respectivamente, 80 kg e 1,65 m.', 'Qual é o percentual de estudantes dessa amostra com massa corporal abaixo da média e altura acima da média?', 'B', ARRAY['https://enem.dev/2023/questions/157/13cfbc97-0034-4904-9100-ff5ca3f6504e.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (326, 66, 'A', '10', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (327, 66, 'B', '20', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (328, 66, 'C', '30', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (329, 66, 'D', '50', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (330, 66, 'E', '70', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (67, 'Questão 158 - ENEM 2023', 158, 2023, 'matematica', NULL, 'Um pescador tem um custo fixo diário de R$ 900,00 com combustível, iscas, manutenção de seu barco e outras pequenas despesas. Ele vende cada quilograma de peixe por R$ 5,00. Sua meta é obter um lucro mínimo de R$ 800,00 por dia. Sozinho, ele consegue, ao final de um dia de trabalho, pescar 180 kg de peixe, o que é suficiente apenas para cobrir o custo fixo diário. Portanto, precisa contratar ajudantes, pagando para cada um R$ 250,00 por dia de trabalho. Além desse valor, 4%dareceita obtida pela venda de peixe é repartida igualmente entre os ajudantes. Considerando o tamanho de seu barco, ele pode contratar até 5 ajudantes. Ele sabe que com um ajudante a pesca diária é de 300 kg e que, a partir do segundo ajudante contratado, aumenta-se em 100 kg a quantidade de peixe pescada por ajudante em um dia de trabalho.', 'A quantidade mínima de ajudantes que esse pescador precisa contratar para conseguir o lucro diário pretendido é', 'D', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (331, 67, 'A', '1', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (332, 67, 'B', '2', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (333, 67, 'C', '3', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (334, 67, 'D', '4', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (335, 67, 'E', '5', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (68, 'Questão 159 - ENEM 2023', 159, 2023, 'matematica', NULL, 'Um agricultor é informado sobre um método de proteção para sua lavoura que consiste em inserir larvas específicas, de rápida reprodução. A reprodução dessas larvas faz com que sua população multiplique-se por 10 a cada 3 dias e, para evitar eventuais desequilíbrios, é possível cessar essa reprodução aplicando-se um produto X. O agricultor decide iniciar esse método com 100 larvas e dispõe de 5 litros do produto X, cuja aplicação recomendada é de exatamente 1 litro para cada população de 200 000 larvas. A quantidade total do produto X de que ele dispõe deverá ser aplicada de uma única vez.', 'Quantos dias após iniciado esse método o agricultor deverá aplicar o produto X?', 'D', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (336, 68, 'A', '2', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (337, 68, 'B', '4', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (338, 68, 'C', '6', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (339, 68, 'D', '12', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (340, 68, 'E', '18', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (69, 'Questão 16 - ENEM 2023', 16, 2023, 'linguagens', NULL, NULL, 'Mandioca, macaxeira, aipim e castelinha são nomes diferentes da mesma planta. Semáforo, sinaleiro e farol também significam a mesma coisa. O que muda é só o hábito cultural de cada região. A mesma coisa acontece com a Língua Brasileira de Sinais (Libras). Embora ela seja a comunicação oficial da comunidade surda no Brasil, existem sinais que variam em relação à região, à idade e até ao gênero de quem se comunica. A cor verde, por exemplo, possui sinais diferentes no Rio de Janeiro, Paraná e São Paulo. São os regionalismos na língua de sinais.
Essas variações são um dos temas da disciplina Linguística na língua de sinais, oferecida pela Universidade Estadual Paulista (Unesp) ao longo do segundo semestre. “Muitas pessoas pensam que a língua de sinais é universal, o que não é verdade”, explica a professora e chefe do Departamento de Linguística, Literatura e Letras Clássicas da Unesp. “Mesmo dentro de um mesmo país, ela sofre variação em relação à localização geográfica, à faixa etária e até ao gênero dos usuários” completa a especialista.
Os surdos podem criar sinais diferentes para identificar lugares, objetos e conceitos. Em São Paulo, o sinal de “cerveja” é feito com um giro do punho como uma meia- volta. Em Minas, a bebida é citada quando os dedos in- dicador e médio batem no lado do rosto. Também ocorrem mudanças históricas. Um sinal pode sofrer alterações decorrentes dos costumes da geração que o utiliza.
Disponível em: www.educacao.sp.gov.br. Acesso em 1 nov. 2021 (adaptado)
Nesse texto, a Língua Brasileira de Sinais (Libras)', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (341, 69, 'A', 'Passa por fenômenos de variação linguística como qualquer outra língua.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (342, 69, 'B', 'Apresenta variações regionais, assumindo novo sentido para algumas palavras.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (343, 69, 'C', 'Sofre mudança estrutural motivada pelo uso de sinais diferentes para algumas palavras.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (344, 69, 'D', 'Diferencia-se em todo o Brasil, desenvolvendo cada região a sua própria língua de sinais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (345, 69, 'E', 'É ininteligível para parte dos usuários em razão das mudanças de sinais motivadas geograficamente.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (70, 'Questão 160 - ENEM 2023', 160, 2023, 'matematica', NULL, 'Ao realizar o cadastro em um aplicativo de investimentos, foi solicitado ao usuário que criasse uma senha, sendo permitido o uso somente dos seguintes caracteres:

• algarismos de 0 a 9;

• 26 letras minúsculas do alfabeto;

• 26 letras maiúsculas do alfabeto;

• 6 caracteres especiais !, @, #, $, \\*, &.

Três tipos de estruturas para senha foram apresentadas ao usuário:

• tipo I: formada por quaisquer quatro caracteres distintos, escolhidos dentre os permitidos;

• tipo II: formada por cinco caracteres distintos, iniciando por três letras, seguidas por um algarismo e, ao final, um caractere especial;

• tipo III: formada por seis caracteres distintos, iniciando por duas letras, seguidas por dois algarismos e, ao final, dois caracteres especiais.

Considere ![](https://enem.dev/2023/questions/160/a2d565c2-f39f-4b43-b261-087e349850fe.png) as probabilidades de se descobrirem ao acaso, na primeira tentativa, as senhas dos tipos I, II e III, respectivamente.', 'Nessas condições, o tipo de senha que apresenta a menor probabilidade de ser descoberta ao acaso, na primeira tentativa, é o', 'A', ARRAY['https://enem.dev/2023/questions/160/a2d565c2-f39f-4b43-b261-087e349850fe.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (346, 70, 'A', 'Tipo I, pois p1 < p2 < p3.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (347, 70, 'B', 'Tipo I, pois tem menor quantidade de caracteres.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (348, 70, 'C', 'Tipo II, pois tem maior quantidade de letras.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (349, 70, 'D', 'Tipo III, pois p3 < p2 < p1', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (350, 70, 'E', 'Tipo III, pois tem maior quantidade de caracteres.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (71, 'Questão 161 - ENEM 2023', 161, 2023, 'matematica', NULL, 'Uma loja vende seus produtos de duas formas: à vista ou financiado em três parcelas mensais iguais. Para definir o valor dessas parcelas nas vendas financiadas, a loja aumenta em 20% o valor do produto à vista e divide esse novo valor por 3. A primeira parcela deve ser paga no ato da compra, e as duas últimas, em 30 e 60 dias após a compra.

Um cliente da loja decidiu comprar, de forma financiada, um produto cujo valor à vista é R$ 1 500,00.

Utilize 5,29 como aproximação para 28.', 'A taxa mensal de juros compostos praticada nesse financiamento é de', 'D', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (351, 71, 'A', '6,7%', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (352, 71, 'B', '10%', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (353, 71, 'C', '20%', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (354, 71, 'D', '21,5%', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (355, 71, 'E', '23,3%', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (72, 'Questão 162 - ENEM 2023', 162, 2023, 'matematica', NULL, 'Para concretar a laje de sua residência, uma pessoa contratou uma construtora. Tal empresa informa que o preço _y_ do concreto bombeado é composto de duas partes: uma fixa, chamada de taxa de bombeamento, e uma variável, que depende do volume _x_ de concreto utilizado. Sabe-se que a taxa de bombeamento custa R$ 500,00 e que o metro cúbico do concreto bombeado é de R$ 250,00.', 'A expressão que representa o preço y em função do volume x, em metro cúbico, é', 'D', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (356, 72, 'A', 'Y = 250x', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (357, 72, 'B', 'Y = 500x', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (358, 72, 'C', 'Y = 750x', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (359, 72, 'D', 'Y = 250x + 500', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (360, 72, 'E', 'Y = 500x + 250', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (73, 'Questão 163 - ENEM 2023', 163, 2023, 'matematica', NULL, 'Uma empresa de segurança domiciliar oferece o serviço de patrulha noturna, no qual vigilantes em motocicletas fazem o monitoramento periódico de residências. A empresa conta com uma base, de onde acompanha o trajeto realizado pelos vigilantes durante as patrulhas e orienta o deslocamento de equipes de reforço quando necessário. Numa patrulha rotineira, sem ocorrências, um vigilante conduziu sua motocicleta a uma velocidade constante durante todo o itinerário estabelecido, levando 30 minutos para conclusão. De acordo com os registros do GPS alocado na motocicleta, a distância da posição do vigilante à base, ao longo do tempo de realização do trajeto, é descrita pelo gráfico.

![](https://enem.dev/2023/questions/163/ff0caefb-56e7-4c17-bae7-b65b91037e9c.png)', 'A vista superior da trajetória realizada pelo vigilante durante a patrulha registrada no gráfico é descrita pela representação', 'A', ARRAY['https://enem.dev/2023/questions/163/ff0caefb-56e7-4c17-bae7-b65b91037e9c.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (361, 73, 'A', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (362, 73, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (363, 73, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (364, 73, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (365, 73, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (74, 'Questão 164 - ENEM 2023', 164, 2023, 'matematica', NULL, 'O gráfico expõe alguns números da gripe A-H1N1. Entre as categorias que estão em processo de imunização, uma já está completamente imunizada, a dos trabalhadores da saúde.

![](https://enem.dev/2023/questions/164/194cf28a-b40d-493d-b106-8f71aee57f51.png)

Época, 26 abr. 2010 (adaptado).', 'De acordo com o gráfico, entre as demais categorias, a que está mais exposta ao vírus da gripe A-H1N1 é a categoria de', 'D', ARRAY['https://enem.dev/2023/questions/164/194cf28a-b40d-493d-b106-8f71aee57f51.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (366, 74, 'A', 'Indígenas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (367, 74, 'B', 'Gestantes.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (368, 74, 'C', 'Doentes crônicos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (369, 74, 'D', 'Adultos entre 20 e 29 anos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (370, 74, 'E', 'Crianças de 6 meses a 2 anos.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (75, 'Questão 165 - ENEM 2023', 165, 2023, 'matematica', NULL, 'A figura representa uma escada com três degraus, construída em concreto maciço, com suas medidas especificadas.

![](https://enem.dev/2023/questions/165/bf369224-eb93-4bba-98c4-ff7d1e17df36.png)

Nessa escada, pisos e espelhos têm formato retangular, e as paredes laterais têm formato de um polígono cujos lados adjacentes são perpendiculares. Pisos, espelhos e paredes laterais serão revestidos em cerâmica.', 'A área a ser revestida em cerâmica, em metro quadrado, mede', 'E', ARRAY['https://enem.dev/2023/questions/165/bf369224-eb93-4bba-98c4-ff7d1e17df36.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (371, 75, 'A', '1,20.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (372, 75, 'B', '1,35.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (373, 75, 'C', '1,65.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (374, 75, 'D', '1,80.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (375, 75, 'E', '1,95.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (76, 'Questão 166 - ENEM 2023', 166, 2023, 'matematica', NULL, 'Uma pessoa pratica quatro atividades físicas — caminhar, correr, andar de bicicleta e jogar futebol — como parte de seu programa de emagrecimento. Essas atividades são praticadas semanalmente de acordo com o quadro, que apresenta o número de horas diárias por atividade.

![](https://enem.dev/2023/questions/166/80863c14-e426-4ae6-9ff0-03f5b3c71160.png)

Ela deseja comemorar seu aniversário e escolhe o dia da semana em que o gasto calórico com as atividades físicas  praticadas for o maior. Para tanto, considera que os valores dos gastos calóricos das atividades por hora (cal/h) são os seguintes:

![](https://enem.dev/2023/questions/166/e3d70b62-2929-4694-ba58-cf45c0ac1374.png)', 'O dia da semana em que será comemorado o aniversário é', 'C', ARRAY['https://enem.dev/2023/questions/166/80863c14-e426-4ae6-9ff0-03f5b3c71160.png','https://enem.dev/2023/questions/166/e3d70b62-2929-4694-ba58-cf45c0ac1374.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (376, 76, 'A', 'Segunda-feira.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (377, 76, 'B', 'Terça-feira.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (378, 76, 'C', 'Quarta-feira.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (379, 76, 'D', 'Quinta-feira.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (380, 76, 'E', 'Sexta-feira.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (77, 'Questão 167 - ENEM 2023', 167, 2023, 'matematica', NULL, 'A cada bimestre, a diretora de uma escola compra uma quantidade de folhas de papel ofício proporcional ao número de alunos matriculados. No bimestre passado, ela comprou 6 000 folhas para serem utilizadas pelos 1 200 alunos matriculados. Neste bimestre, alguns alunos cancelaram suas matrículas e a escola tem, agora, 1 150 alunos. A diretora só pode gastar R$ 220,00 nessa compra, e sabe que o fornecedor da escola vende as folhas de papel ofício em embalagens de 100 unidades a R$ 4,00 a embalagem. Assim, será preciso convencer o fornecedor a dar um desconto à escola, de modo que seja possível comprar a quantidade total de papel ofício necessária para o bimestre.', 'O desconto necessário no preço final da compra, em porcentagem, pertence ao intervalo', 'A', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (381, 77, 'A', '(5,0 ; 5,5).', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (382, 77, 'B', '(8,0 ; 8,5).', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (383, 77, 'C', '(11,5 ; 12,5).', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (384, 77, 'D', '(19,5 ; 20,5).', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (385, 77, 'E', '(3,5 ; 4,0).', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (78, 'Questão 168 - ENEM 2023', 168, 2023, 'matematica', NULL, 'Em um colégio público, a admissão no primeiro ano se dá por sorteio. Neste ano há 55 candidatos, cujas inscrições são numeradas de 01 a 55. O sorteio de cada número de inscrição será realizado em etapas, utilizando-se duas urnas. Da primeira urna será sorteada uma bola, dentre bolas numeradas de 0 a 9, que representará o algarismo das unidades do número de inscrição a ser sorteado e, em seguida, da segunda urna, será sorteada uma bola para representar o algarismo das dezenas desse número. Depois do primeiro sorteio, e antes de se sortear o algarismo das dezenas, as bolas que estarão presentes na segunda urna serão apenas aquelas cujos números formam, com o algarismo já sorteado, um número de 01 a 55.', 'As probabilidades de os candidatos de inscrição número 50 e 02 serem sorteados são, respectivamente,', 'A', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (386, 78, 'A', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (387, 78, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (388, 78, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (389, 78, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (390, 78, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (79, 'Questão 169 - ENEM 2023', 169, 2023, 'matematica', NULL, 'O esquema mostra como a intensidade luminosa decresce com o aumento da profundidade em um rio, sendo ![](https://enem.dev/2023/questions/169/76239f15-d46d-4067-bb38-bb40ca2f87c0.png) a intensidade na sua superfície.

![](https://enem.dev/2023/questions/169/3af229c8-e385-4ca2-891a-22bdf6b2d593.png)

Considere que a intensidade luminosa diminui, a cada metro acrescido na profundidade, segundo o mesmo padrão do esquema.', 'A intensidade luminosa correspondente à profundidade de 6 m é igual a', 'D', ARRAY['https://enem.dev/2023/questions/169/76239f15-d46d-4067-bb38-bb40ca2f87c0.png','https://enem.dev/2023/questions/169/3af229c8-e385-4ca2-891a-22bdf6b2d593.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (391, 79, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (392, 79, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (393, 79, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (394, 79, 'D', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (395, 79, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (80, 'Questão 17 - ENEM 2023', 17, 2023, 'linguagens', NULL, 'Como é bom reencontrar os leitores da _Revista da Cultura_ por meio de uma publicação com outro visual, conteúdo de qualidade e interesses ampliados! _\\]cultura\\[_, este nome simples, e eu diria mesmo familiar, nasce entre dois colchetes voltados para fora. E não é por acaso: são sinais abertos, receptivos, propícios à circulação de ideias. O DNA da publicação se mantém o mesmo, afinal, por longos anos montamos nossas edições com assuntos saídos das estantes de uma grande livraria — e assim continuará sendo. Literatura, sociologia, filosofia, artes… nunca será difícil montar a pauta da revista porque os livros nos ensinam que monotonia é só para quem não lê.

HERZ, P. J _**\\]cultura\\[**_, n. 1, jun. 2018 (adaptado).', 'O uso não padrão dos colchetes para nomear a revista atribui-lhes uma nova função e está correlacionado ao(à)', 'D', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (396, 80, 'A', 'Perfil de público-alvo, constituído por leitores exigentes e especializados em leitura acadêmica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (397, 80, 'B', 'Propósito do editor, chamando a atenção para o rigor normativo nos textos da revista.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (398, 80, 'C', 'Exclusividade na seleção temática, direcionada para a área das ciências humanas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (399, 80, 'D', 'Identidade da revista, voltada para a recepção e a promoção de ideias circulantes em livros.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (400, 80, 'E', 'Padrão editorial dos artigos, organizados em torno de uma proposta de design inovador.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (81, 'Questão 170 - ENEM 2023', 170, 2023, 'matematica', NULL, 'Analisando as vendas de uma empresa, o gerente concluiu que o montante diário arrecadado, em milhar de real, poderia ser calculado pela expressão ![](https://enem.dev/2023/questions/170/369b24e4-258e-4faf-b7df-0c2e3da3c22a.png) , em que os valores de x representam os dias do mês, variando de 1 a 30.

Um dos fatores para avaliar o desempenho mensal da empresa é verificar qual é o menor montante diário ![](https://enem.dev/2023/questions/170/b158b079-eaf5-4f8c-84b1-99db8076a950.png) arrecadado ao longo do mês e classificar o desempenho conforme as categorias apresentadas a seguir, em que as quantidades estão expressas em milhar de real.

![](https://enem.dev/2023/questions/170/e7404490-a2b4-46e1-b1e6-3a8c828050fe.png)', 'No caso analisado, qual seria a classificação do desempenho da empresa?', 'D', ARRAY['https://enem.dev/2023/questions/170/369b24e4-258e-4faf-b7df-0c2e3da3c22a.png','https://enem.dev/2023/questions/170/b158b079-eaf5-4f8c-84b1-99db8076a950.png','https://enem.dev/2023/questions/170/e7404490-a2b4-46e1-b1e6-3a8c828050fe.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (401, 81, 'A', 'Ótimo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (402, 81, 'B', 'Bom.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (403, 81, 'C', 'Normal.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (404, 81, 'D', 'Ruim.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (405, 81, 'E', 'Péssimo.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (82, 'Questão 171 - ENEM 2023', 171, 2023, 'matematica', NULL, 'O calendário maia apresenta duas contagens simultâneas de anos, o chamado ano Tzolkim, composto por 260 dias e que determinava o calendário religioso, e o ano Haab, composto por 365 dias e que determinava o calendário agrícola. Um historiador encontrou evidências de que gerações de uma mesma família governaram certa comunidade maia pelo período de 20 ciclos, sendo cada ciclo formado por 52 anos Haab.

Disponível em: www.suapesquisa.com. Acesso em: 20 ago. 2014.', 'De acordo com as informações fornecidas, durante quantos anos Tzolkim aquela comunidade maia foi governada por tal família?', 'C', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (406, 82, 'A', '741', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (407, 82, 'B', '1 040', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (408, 82, 'C', '1 460', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (409, 82, 'D', '2 100', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (410, 82, 'E', '5 200', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (83, 'Questão 172 - ENEM 2023', 172, 2023, 'matematica', NULL, 'Sejam _a_, _b_ e _c_ as medidas dos lados de um triângulo retângulo, tendo a como medida da hipotenusa. Esses valores _a_, _b_ e _c_ são, respectivamente, os diâmetros dos círculos _C1_ , _C2_ e _C3_, como apresentados na figura.

![](https://enem.dev/2023/questions/172/dcdd2743-6ad6-44e8-94ae-d2adec3a3400.png)

Observe que essa construção assegura, pelo teorema de Pitágoras, que área (C1) = área (C2) + área (C3).

Um professor de matemática era conhecedor dessa construção e, confraternizando com dois amigos em uma pizzaria onde são vendidas pizzas somente em formato de círculo, lançou um desafio: mesmo sem usar um instrumento de medição, poderia afirmar com certeza se a área do círculo correspondente à pizza que ele pedisse era maior, igual ou menor do que a soma das áreas das pizzas dos dois amigos. Assim, foram pedidas três pizzas. O professor as dividiu ao meio e formou um triângulo com os diâmetros das pizzas, conforme indicado na figura.

![](https://enem.dev/2023/questions/172/8bd02f79-d5fb-4b8d-9321-c57434be3374.png)

A partir da medida do ângulo a, o professor afirmou que a área de sua pizza é maior do que a soma das áreas das outras duas pizzas.', 'A área da pizza do professor de matemática é maior do que a soma das áreas das outras duas pizzas, pois', 'C', ARRAY['https://enem.dev/2023/questions/172/dcdd2743-6ad6-44e8-94ae-d2adec3a3400.png','https://enem.dev/2023/questions/172/8bd02f79-d5fb-4b8d-9321-c57434be3374.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (411, 83, 'A', '0° < a < 90°', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (412, 83, 'B', 'A = 90°', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (413, 83, 'C', '90° < a < 180°', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (414, 83, 'D', 'A = 180°', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (415, 83, 'E', '180° < a < 360°', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (84, 'Questão 173 - ENEM 2023', 173, 2023, 'matematica', NULL, 'Entre maratonistas, um parâmetro utilizado é o de economia de corrida (EC). O valor desse parâmetro é calculado pela razão entre o consumo de oxigênio, em mililitro (mL) por minuto (min), e a massa, em quilograma (kg), do atleta correndo a uma velocidade constante.

Disponível em: www.treinamentoonline.com.br. Acesso em: 23 out. 2019 (adaptado).', 'Um maratonista, visando melhorar sua performance, auxiliado por um médico, mensura o seu consumo de oxigênio por minuto a velocidade constante. Com base nesse consumo e na massa do atleta, o médico calcula o EC do atleta.
A unidade de medida da grandeza descrita pelo parâmetro EC é', 'B', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (416, 84, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (417, 84, 'B', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (418, 84, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (419, 84, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (420, 84, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (85, 'Questão 175 - ENEM 2023', 175, 2023, 'matematica', NULL, 'O metrô de um município oferece dois tipos de tíquetes com colorações diferentes, azul e vermelha, sendo vendidos em cartelas, cada qual com nove tíquetes da mesma cor e mesmo valor unitário. Duas cartelas de tíquetes azuis e uma cartela de tíquetes vermelhos são vendidas por R$ 32,40. Sabe-se que o preço de um tíquete azul menos o preço de um tíquete vermelho é igual ao preço de um tíquete vermelho mais cinco centavos.', 'Qual o preço, em real, de uma cartela de tíquetes vermelhos?', 'B', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (421, 85, 'A', '4,68', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (422, 85, 'B', '6,30', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (423, 85, 'C', '9,30', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (424, 85, 'D', '10,50', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (425, 85, 'E', '10,65', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (86, 'Questão 176 - ENEM 2023', 176, 2023, 'matematica', NULL, 'Os números figurados pentagonais provavelmente foram introduzidos pelos pitagóricos por volta do século V a.C. As figuras ilustram como obter os seis primeiros deles, sendo os demais obtidos seguindo o mesmo padrão geométrico.

![](https://enem.dev/2023/questions/176/d21e916b-a5fc-441e-b782-d2d4aca3522b.png)', 'O oitavo número pentagonal é', 'E', ARRAY['https://enem.dev/2023/questions/176/d21e916b-a5fc-441e-b782-d2d4aca3522b.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (426, 86, 'A', '59', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (427, 86, 'B', '83', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (428, 86, 'C', '86', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (429, 86, 'D', '89', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (430, 86, 'E', '92', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (87, 'Questão 177 - ENEM 2023', 177, 2023, 'matematica', NULL, 'A figura ilustra uma roda-gigante no exato instante em que a cadeira onde se encontra a pessoa P está no ponto mais alto dessa roda-gigante.

![](https://enem.dev/2023/questions/177/27c49bd5-ad8c-450c-9f56-970b9ca9c53c.png)

Com o passar do tempo, à medida que a roda-gigante gira, com velocidade angular constante e no sentido horário, a altura da cadeira onde se encontra a pessoa P, em relação ao solo, vai se alterando.', 'O gráfico que melhor representa a variação dessa altura, em função do tempo, contado a partir do instante em que a cadeira da pessoa P se encontra na posição mais alta da roda-gigante, é', 'A', ARRAY['https://enem.dev/2023/questions/177/27c49bd5-ad8c-450c-9f56-970b9ca9c53c.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (431, 87, 'A', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (432, 87, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (433, 87, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (434, 87, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (435, 87, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (88, 'Questão 178 - ENEM 2023', 178, 2023, 'matematica', NULL, 'Estudantes trabalhando com robótica criaram uma “torneira inteligente” que automatiza sua abertura e seu fechamento durante a limpeza das mãos. A tecnologia funciona da seguinte forma: ao se colocarem as mãos sob a torneira, ela libera água durante 3 segundos para que a pessoa possa molhá-las. Em seguida, interrompe o fornecimento de água por 5 segundos, enquanto a pessoa ensaboa suas mãos, e finaliza o ciclo liberando água para o enxágue por mais 3 segundos. Considere o tempo (_t_), em segundo, contado a partir do instante em que se inicia o ciclo. A vazão de água nessa torneira é constante.', 'Um esboço de gráfico que descreve o volume de água acumulado, em litro, liberado por essa torneira durante um ciclo de lavagem das mãos, em função do tempo (t), em segundo, é', 'B', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (436, 88, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (437, 88, 'B', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (438, 88, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (439, 88, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (440, 88, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (89, 'Questão 179 - ENEM 2023', 179, 2023, 'matematica', NULL, 'As características culturais variam de povo para povo. Há notícias de um povo que possuía formas de contar diferentes das nossas, como indicado no quadrinho a seguir.

![](https://enem.dev/2023/questions/179/d2b83dd3-33ef-40d6-944a-b98d17f6411b.png)', 'Segundo o padrão de contagem indicado na figura, as representações dos numerais cinco e sete, nessa cultura, devem ser, respectivamente,', 'C', ARRAY['https://enem.dev/2023/questions/179/d2b83dd3-33ef-40d6-944a-b98d17f6411b.png'], 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (441, 89, 'A', 'Okosa urapum urapum urapum e okosa okosa urapum urapum urapum.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (442, 89, 'B', 'Okosa okosa urapum e okosa okosa okosa okosa urapum.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (443, 89, 'C', 'Okosa okosa urapum e okosa okosa okosa urapum.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (444, 89, 'D', 'Okosa urapum urapum e okosa urapum okosa urapum urapum.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (445, 89, 'E', 'Okosa okosa urapum e okosa okosa okosa okosa.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (90, 'Questão 18 - ENEM 2023', 18, 2023, 'linguagens', NULL, '**TEXTO I**

**Alegria, alegria**  
O sol nas bancas de revista  
Me enche de alegria e preguiça  
Quem lê tanta noticia  
Eu vou  
Por entre fotos e nomes  
Os olhos cheios de cores  
O peito cheio de amores vãos  
Eu vou  
Por que não, por que não?

VELOSO, C. **Alegria, alegria**. Rio de Janeiro: Polygram, 1990 (fragmento)

**ТЕХТО II**

**Anjos tronchos**  
Uns anjos tronchos do Vale do Silício  
Desses que vivem no escuro em plena luz  
Disseram vai ser virtuoso no vício  
Das telas dos azuis mais do que azuis

Agora a minha história é um denso algoritmo  
Que vende venda a vendedores reais  
Neurônios meus ganharam novo outro ritmo  
E mais, e mais, e mais, e mais, e mais

VELOSO, C. **Meu coco**. Rio de Janeiro: Sony, 2021 (fragmento)', 'Embora oriundas de momentos históricos diferentes essas letras de canção têm em comum a', 'B', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (446, 90, 'A', 'Referência às cores como elemento de crítica a hábitos contemporâneos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (447, 90, 'B', 'Percepção da profusão de informações gerada pela tecnologia.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (448, 90, 'C', 'Contraposição entre os vícios e as virtudes da vida moderna.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (449, 90, 'D', 'Busca constante pela liberdade de expressão individual.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (450, 90, 'E', 'Crítica à finalidade comercial das notícias.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (91, 'Questão 180 - ENEM 2023', 180, 2023, 'matematica', NULL, 'Um tipo de semente necessita de bastante água nos dois primeiros meses após o plantio. Um produtor pretende estabelecer o melhor momento para o plantio desse tipo de semente, nos meses de outubro a março. Após consultar a previsão do índice mensal de precipitação de chuva (ImPC) da região onde ocorrerá o plantio, para o período chuvoso de 2020-2021, ele obteve os seguintes dados:  
• outubro/2020: ImPC = 250 mm;  
• novembro/2020: ImPC = 150 mm;  
• dezembro/2020: ImPC = 200 mm;  
• janeiro/2021: ImPC = 450 mm;  
• fevereiro/2021: ImPC = 100 mm;  
• março/2021: ImPC = 200 mm.

Com base nessas previsões, ele precisa escolher dois meses consecutivos em que a média mensal de precipitação seja a maior possível.', 'No início de qual desses meses o produtor deverá plantar esse tipo de semente?', 'C', NULL, 'matematica', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (451, 91, 'A', 'Outubro.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (452, 91, 'B', 'Novembro.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (453, 91, 'C', 'Dezembro.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (454, 91, 'D', 'Janeiro.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (455, 91, 'E', 'Fevereiro.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (92, 'Questão 19 - ENEM 2023', 19, 2023, 'linguagens', NULL, NULL, '“São tantas formas de matar um preto
Que para alguns sua morte é justificada
Devia tá fazendo coisa errada
Se não era bandido, um dia ia ser
Por ser PRETO sua morte é defendida
O PRETO sempre merece morrer”.
A estrofe acima é do poeta e educador social Baticum Proletário, que atua na periferia de Fortaleza, no Ceará, preparando jovens — em quase sua totalidade negros – para enfrentar as dificuldades impostas pelo racismo estrutural no país.
É a partir da arte que Baticum consegue envolver a juventude em um projeto de fortalecimento dessa população ao promover batalhas de rimas, slams e saraus com temáticas que discutem os problemas sociais. Não por acaso, o tema mais explorado nas rimas, versos e prosas é a violência. De acordo com o mais recente Atlas da violência, em 2019, os negros representaram 77% das vítimas de homicídios, quase 30 assassinatos por 100 mil habitantes, a maioria deles jovens.
O Atlas revela ainda que um negro tem quase 2,7 vezes mais chance de ser morto do que um branco, o que justifica o movimento de resistência crescente no Brasil.
MENDONÇA. F. Disponível em: www.cartacapital.com.br. Acesso em: 22 nov. 2021 (adaptado).
O uso de citação e de dados estatísticos nesse texto tem o objetivo de', 'D', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (456, 92, 'A', 'Ressaltar a importância da poesia para denunciar a morte de negros, que cresce a cada dia.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (457, 92, 'B', 'Destacar o crescimento exponencial da temática do preconceito na produção literária no Brasil.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (458, 92, 'C', 'Demonstrar o incremento no quantitativo de expressões artísticas na discussão de problemas sociais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (459, 92, 'D', 'Evidenciar argumentos que reforçam a ideia de que os negros são vítimas em potencial da violência.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (460, 92, 'E', 'Salientar o aumento da participação de jovens nos movimentos de resistência na área da cultura.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (93, 'Questão 2 - ENEM 2023', 2, 2023, 'linguagens', 'espanhol', NULL, 'Me niego rotundamente
A negar mi voz,
Mi sangre y mi piel.
Y me niego rotundamente
A dejar de ser yo,
A dejar de sentirme bien
Cuando miro mi rostro en el es
Con mi boca
Rotundamente grande
Y mi nariz
Rotundamente hermosa,
Y mis dientes
Rotundamente blancos,
Y mi piel valientemente negra.
Y me niego categóricamente
A dejar de hablar
Mi lengua, mi acento y mi historia
Y me niego absolutamente
A ser parte de los que callan,
De los que temen,
De los que lloran
Porque me acepto
Rotundamente libre,
Rotundamente negra,
Rotundamente hermosa.
CAMPELL BARR, S. Disponível em:
https.negracubanateniaqueser.com
Acesso em 25 out. 2021.
Para enfatizar caracteristicas e atitudes que reforçam a identidade da mulher negra, o poema da escritora costarriquenha apresenta:', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (461, 93, 'A', 'Advérbios como "rotundamente" e "categóricamente".', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (462, 93, 'B', 'Verbos reflexivos como "me niego" e "me acepto".', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (463, 93, 'C', 'Adjetivos como "grande" e "hermosa".', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (464, 93, 'D', 'Substantivos como "sangre" e "piel".', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (465, 93, 'E', 'Adjetivos possessivos como "mi" e "mis".', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (94, 'Questão 2 - ENEM 2023', 2, 2023, 'linguagens', 'ingles', 'No man is an island,  
Entire of itself;  
Every man is a piece of the continent,  
A part of the main.  
\\[…\\]  
Any man’s death diminishes me,  
Because I am involved in mankind.

DONNE, J. **The Works of John Donne**. Londres: John W. Parker, 1839 (fragmento).', 'Nesse poema, a expressão “No man is an island” ressalta o(a)', 'B', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (466, 94, 'A', 'Medo da morte.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (467, 94, 'B', 'Ideia de conexão.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (468, 94, 'C', 'Conceito de solidão.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (469, 94, 'D', 'Risco de devastação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (470, 94, 'E', 'Necessidade de empatia.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (95, 'Questão 20 - ENEM 2023', 20, 2023, 'linguagens', NULL, NULL, 'No princípio era o verbo. A frase que abre o primeiro capítulo do Evangelho de João e remete à criação do mundo, assim como também faz o Gênesis, é a mais famosa da Bíblia. A ideia de que o mundo é criado pela palavra, porém, é tão estruturante que está presente em outras religiões, para muito além das fundadas no cristianismo. Como humanos, a linguagem é o mundo que habitamos. Basta tentar imaginar um mundo em que não podemos usar palavras para dizer de nós e dos outros para compreender o que isso significa. Ou um mundo em que aquilo que você diz não é entendido pelo outro, e o que o outro diz não é entendido por você.
O que acontece então quando a palavra é destruída e, com ela, a linguagem?
Durante séculos, em diferentes sociedades e línguas, é importante lembrar, a linguagem serviu — e ainda serve — para manter privilégios de grupos de poder e deixar todos os outros de fora. Quem entende linguagem de advogados, juízes e promotores, linguagem de médicos, linguagem de burocratas, linguagem de cientistas? A maior parte da população foi submetida à violência de proposital mente ser impedida de compreender a linguagem daqueles que determinam seus destinos.
Se o princípio é o verbo, o fim pode ser o silenciamento. Mesmo que ele seja cheio de gritos entre aqueles que já não têm linguagem comum para compreender uns aos outros.
BRUM, E. Disponível em: https://brasil.elpais.com. Acesso em: 5 nov. 2021.
Nesse texto, a estratégia usada para convencer o leitor de que uma grande parcela da população não compreende a linguagem daqueles que detêm o poder foi', 'E', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (471, 95, 'A', 'Revelar a origem religiosa da linguagem.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (472, 95, 'B', 'Questionar o temor sobre o futuro da linguagem.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (473, 95, 'C', 'Descrever a relação entre sociedade e linguagem.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (474, 95, 'D', 'Apresentar as consequências do esfacelamento da linguagem.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (475, 95, 'E', 'Criticar o obstáculo promovido pelos usos especializa- dos da linguagem.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (96, 'Questão 21 - ENEM 2023', 21, 2023, 'linguagens', NULL, NULL, 'Um grupo de pesquisadores da Universidade Federal do Ceará desenvolveu um dicionário para traduzir sintomas de doenças da linguagem popular para os termos médicos. Defruço, chanha e piloura, por exemplo, podem ser termos conhecidos para muitos, mas, durante uma consulta médica, o desconhecimento pode significar um diagnóstico errado.
“Isso é um registro histórico e pode ser muito útil para estudos dessas comunidades, na abordagem médica delas. É de certa forma pioneiro no Brasil e, sem dúvida, um instrumento de trabalho importante, porque a comunicação é fundamental na relação médico-paciente”, avalia o reitor da instituição.
Disponível em: https://gl.globo.com. Acesso em: 1 nov. 2021 (adaptado).
Ao registrarem usos regionais de termos da área médica, Pesquisadores', 'D', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (476, 96, 'A', 'Apontaram erros motivados pelo desconhecimento da variedade linguística local.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (477, 96, 'B', 'Explicaram problemas provocados pela incapacidade de comunicação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (478, 96, 'C', 'Descobriram novos sintomas de doenças existentes na comunidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (479, 96, 'D', 'Propiciaram melhor compreensão dos sintomas dos pacientes.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (480, 96, 'E', 'Divulgaram um novo rol de doenças características da localidade.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (97, 'Questão 22 - ENEM 2023', 22, 2023, 'linguagens', NULL, 'Alguém muito recentemente cortara o mato, que na época das chuvas crescia e rodeava a casa da mãe de Ponciá Vicêncio e de Luandi. Havia também vestígios de que a terra fora revolvida, como se ali fosse plantar uma pequena roça. Luandi sorriu. A mãe devia estar bastante forte, pois ainda labutava a terra. Cantou alto uma cantiga que aprendera com o pai, quando eles trabalhavam na terra dos brancos. Era uma canção que os negros mais velhos ensinavam aos mais novos. Eles diziam ser uma cantiga de voltar, que os homens, lá na África, entoavam sempre, quando estavam regressando da pesca, da caça ou de algum lugar. O pai de Luandi, no dia em que queria agradar à mulher, costumava entoar aquela cantiga ao se aproximar de casa. Luandi não entendia as palavras do canto; sabia, porém, que era uma língua que alguns negros falavam ainda, principalmente os velhos. Era uma cantiga alegre. Luandi, além de cantar, acompanhava o ritmo batendo com as palmas das mãos em um atabaque imaginário. Estava de regresso à terra. Voltava em casa. Chegava cantando, dançando a doce e vitoriosa cantiga de regressar.

EVARISTO, C. **Ponciá Vicêncio**. Rio de Janeiro: Pallas, 2018.', 'A leitura do texto permite reconhecer a “cantiga de voltar” como patrimônio linguístico que', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (481, 97, 'A', 'Representa a memória de uma língua africana extinta.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (482, 97, 'B', 'Exalta a rotina executada por jovens afrodescendentes.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (483, 97, 'C', 'Preserva a ancestralidade africana por meio da tradição oral.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (484, 97, 'D', 'Resgata a musicalidade africana por meio de palavras inteligíveis', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (485, 97, 'E', 'Remonta à tristeza dos negros mais velhos com saudade da África.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (98, 'Questão 23 - ENEM 2023', 23, 2023, 'linguagens', NULL, 'TEXTO I  
Zapeei os canais, como há dezenas de anos faço, e pá: parei num que exibia um episódio daquela velha família do futuro, Os Jetsons.  
Nesse episódio em particular, a Jane Jetson, esposa do George, tratava de dirigir aquele veículo voador deles. Meu queixo foi caindo à medida que as piadinhas machistas sobre mulheres dirigirem foram se acumulando.  
Impressionante! Que futuro careta aqueles roteiristas imaginavam! Seriam incapazes de projetar algo melhor, e não apenas em termos de tecnologias, robôs e carros voadores? Será que nossa máxima visão de futuro só atinge as coisas, e jamais as pessoas? Como a Jane, uma mulher de 33 anos no desenho, poderia ser o que foram as minhas bisavós?  
O futuro, naquele desenho, se esqueceu de ser melhor nas relações entre as pessoas. Aliás… tão parecido com a vida.  
Fiquei de cara, como dizemos aqui, ou como dizíamos na minha adolescência, pobre adolescência, aprendendo, sem querer e sem muita defesa, um futuro tão besta quanto o passado.

RIBEIRO, A. E. Disponível em: www.rascunho.com.br. Acesso em: 21 out. 2021 (adaptado).

TEXTO II  
Masculino e feminino são campos escorregadios que só se definem por oposição, sempre incompleta, um do outro. São formações imaginárias que buscam produzir uma diferença radical e complementar onde só existem, de fato, mínimas diferenças. O resto é questão de estilo. Até pelo menos a segunda metade do século 19, o divisor de águas era claro: os homens ocupavam o espaço público. As mulheres tratavam da vida privada. Privada de quê? De visibilidade, diria Hannah Arendt. De visibilidade pública. Do que as mulheres estiveram privadas até o século 20 foi de presença pública manifesta não em imagem, mas em palavra. A palavra feminina, reservada ao espaço doméstico, não produzia diferença na vida social.

KHEL, M. R. Disponível em: https://alias.estadao.com.br. Acesso em: 19 out. 2021 (adaptado).', 'A representação da mulher apresentada no Texto I pode ser explicada pelo Texto II no que diz respeito à(às)', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (486, 98, 'A', 'Censura a formas de expressão femininas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (487, 98, 'B', 'Ausência da figura feminina na vida pública.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (488, 98, 'C', 'Construções imaginárias cristalizadas na sociedade.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (489, 98, 'D', 'Limitações inerentes às figuras femininas e masculinas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (490, 98, 'E', 'Dificuldade na atribuição de papéis masculinos e femininos.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (99, 'Questão 24 - ENEM 2023', 24, 2023, 'linguagens', NULL, '![](https://enem.dev/2023/questions/24/78918e1a-00e2-4972-b8f7-9cc17a935ec2.png)', 'Esse anúncio publicitário, veiculado durante o contexto da pandemia de covid-19, tem por finalidade', 'E', ARRAY['https://enem.dev/2023/questions/24/78918e1a-00e2-4972-b8f7-9cc17a935ec2.png'], 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (491, 99, 'A', 'Divulgar o canal telefônico de atendimento a casos de violência contra a mulher.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (492, 99, 'B', 'Informar sobre a atuação de uma entidade defensora da mulher vítima de violência.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (493, 99, 'C', 'Evidenciar o trabalho da Defensoria Pública em relação ao problema do abuso contra a mulher.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (494, 99, 'D', 'Alertar a sociedade sobre o aumento da violência contra a mulher em decorrência do coronavírus.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (495, 99, 'E', 'Incentivar o público feminino a denunciar crimes de violência contra a mulher durante o período de isolamento', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (100, 'Questão 25 - ENEM 2023', 25, 2023, 'linguagens', NULL, 'Passado muito tempo, resolvi tentar falar, porque estava sozinha me embrenhando na mesma vereda que Donana costumava entrar. Ainda recordo da palavra que escolhi: arado. Me deleitava vendo meu pai conduzindo o arado velho da fazenda carregado pelo boi, rasgando a terra para depois lançar grãos de arroz em torrões marrons e vermelhos revolvidos. Gostava do som redondo fácil e ruidoso que tinha ao ser enunciado. “Vou trabalhar no arado.” “Vou arar a terra.” “Seria bom ter um arado novo, esse arado tá troncho e velho.” O som que deixou minha boca era uma aberração, uma desordem, como se no lugar do pedaço perdido da língua tivesse um ovo quente. Era um arado torto, deformado, que penetrava a terra de tal forma a deixá-la infértil, destruída, dilacerada.

VIEIRA JR.. I. **Torto arado**. São Paulo: Todavia, 2019.', 'Com a perda de parte da língua na infância, a narradora tenta voltar a falar. Essa tentativa revela uma experiência que', 'B', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (496, 100, 'A', 'Reflete o olhar do pai sobre as etapas do plantio.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (497, 100, 'B', 'Metaforiza a linguagem como ferramenta de lavoura.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (498, 100, 'C', 'Explicita, na busca pela palavra, o medo da solidão.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (499, 100, 'D', 'Confirma a frustração da narradora com relação à terra.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (500, 100, 'E', 'Sugere, na ausência da linguagem, a estagnação do tempo.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (101, 'Questão 26 - ENEM 2023', 26, 2023, 'linguagens', NULL, '**A escravidão**

Esses meninos que aí andam jogando peteca não viram nunca um escravo… Quando crescerem, saberão que já houve no Brasil uma raça triste, votada à escravidão e ao desespero; e verão nos museus a coleção hedionda dos troncos, dos vira-mundos e dos bacalhaus; e terão notícias dos trágicos horrores de uma época maldita: filhos arrancados ao seio das mães, virgens violadas em pranto, homens assados lentamente em fornos de cal, mulheres nuas recebendo na sua mísera nudez desvalida o duplo ultraje das chicotadas e dos olhares do feitor bestial. \\[…\\] Mas a sua indignação nunca poderá ser tão grande como a daqueles que nasceram e cresceram em pleno horror, no meio desse horrível drama de sangue e lodo, sentindo dentro do ouvido e da alma, numa arrastada e contínua melopeia, o longo gemer da raça mártir — orquestração satânica de todos os soluços, de todas as impressões, de todos os lamentos que a tortura e a injustiça podem arrancar a gargantas humanas.

BILAC, O. Disponível em: www.escritas.org. Acesso em: 29 out. 2021', 'Publicado em 1902, o texto de Olavo Bilac enfatiza as mazelas da escravidão no Brasil ao', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (501, 101, 'A', 'Descrever de modo impessoal as consequências da exploração racial sobre as gerações futuras.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (502, 101, 'B', 'Contrapor a infância privilegiada das crianças da época à infância violentada das crianças escravizadas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (503, 101, 'C', 'Antecipar o futuro apagamento das marcas da escravidão no contexto social.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (504, 101, 'D', 'Criticar a atenuação da violência contra os povos escravizados nas memórias retratadas pelos museus.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (505, 101, 'E', 'Imaginar a reação de indiferença de seus contemporâneos com os escravizados libertos.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (102, 'Questão 27 - ENEM 2023', 27, 2023, 'linguagens', NULL, NULL, 'E assim as coisas continuaram acontecendo entre os dois, em quase sustos, um grande por acaso com cacoetes de gestos definitivos. Com o Nunca Mais se oferecendo o tempo todo, bastaria dizer foi um prazer ter te conhecido, bastaria não trocar telefones nem e-mails e enterrar a casualidade com a cal da sabedoria – nada poderia ser definitivo, os encontros duravam duas horas ou duas décadas ou duas vezes isso, mas em algum momento necessariamente seria o fim. De todos os grandes amores, De todos os pequenos. De todas as juras, das promessas, de todos os na-alegria-e-na-tristeza. De todos os não amores, os desamores, os casamentos para sempre, os rancores para sempre, de todas as paralelas que só se viabilizam na abstração da geometria, de todas as pequenas paixões e de todas as grandes paixões, de tudo que para na antessala da paixão, de todos os vínculos não experimentados, de todos.
LISBOA, A. Rahushisha. Rio de Janeiro Objetiva 2014.
O recurso que promove a progressão textual, contribuindo para a construção da ideia de que as relações amorosas têm um enredo comum, é a', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (506, 102, 'A', 'Repetição do pronome indefinido "todos".', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (507, 102, 'B', 'Utilização do travessão na marcação do oposto.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (508, 102, 'C', 'Retomada do antecedente pelo pronome "isso".', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (509, 102, 'D', 'Contraposição de ideias marcada pela conjunção mas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (510, 102, 'E', 'Substantivação de expressões pela anteposição do artigo.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (103, 'Questão 28 - ENEM 2023', 28, 2023, 'linguagens', NULL, NULL, 'A garganta é a gruta que guarda o som
A garganta está entre a mente e o coração
Vem coisa de cima, vem coisa de baixo e de 
[repente um nó (e o que eu quero dizer?)
Às vezes, acontece um negócio esquisito
Quando eu quero falar eu grito, quando eu quero
[gritar eu falo, o resultado
Calo.
ESTRELA D’ALVA, R. Disponível em: https://claudia.abril.com.br. Acesso em: 23 nov. 2021 (fragmento).
A função emotiva presente no poema cumpre o propósito do eu lírico de', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (511, 103, 'A', 'Revelar as desilusões amorosas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (512, 103, 'B', 'Refletir sobre a censura à sua voz', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (513, 103, 'C', 'Expressar a dificuldade de comunicação.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (514, 103, 'D', 'Ressaltar a existência de pressões externas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (515, 103, 'E', 'Manifestar as dores do processo de criação.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (104, 'Questão 29 - ENEM 2023', 29, 2023, 'linguagens', NULL, 'Era um gato preto, como convinha a um cultor das boas letras, que já lera Poe traduzido por Baudelaire. Preto e gordo. E lerdo. Tão gordo e lerdo que a certa altura observei que ia perdendo inteiramente as qualidades características da raça, que são em suma o ódio de morte aos ratos. Já nem os afugentava! Os ratos de Ouro Preto são também dignos e solenes — não ria — tradicionalistas… descendentes de outros ratos que naqueles mesmos casarões presenciaram acontecimentos importantes da nossa história… No sobrado do desembargador Tomás Antônio Gonzaga, imagine o senhor uma reunião dos sonhadores inconfidentes, com os antepassados daqueles ratos a passearem pelo sótão ou mesmo pelo assoalho por entre as pernas dos homens absortos na esperança da independência nacional! E depois, os ancestres daqueles roedores que eu via agora deslizar sutilmente no meu quarto podiam ter subido pelo poste da ignomínia colonial, onde estava exposta a cabeça do Tiradentes! E quando as órbitas se descarnaram ignominiosamente, podiam até ter penetrado no recesso daquele crânio onde verdadeiramente ardera a literatura, com a simplicidade do heroísmo, a febre nacionalista…

ALPHONSUS, J. **Contos e novelas**. Rio de Janeiro: Imago; Brasília: INL, 1976.', 'Descrevendo seu gato, o narrador remete ao contexto e a protagonistas da Inconfidência para criar um efeito desconcertante centrado no', 'E', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (516, 104, 'A', 'Desenho imaginativo do casario colonial de Ouro Preto.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (517, 104, 'B', 'Efeito de apagamento de limites entre ficção e realidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (518, 104, 'C', 'Vínculo estabelecido entre animais urbanos e literatura.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (519, 104, 'D', 'Questionamento sutil quanto à sanidade dos inconfidentes.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (520, 104, 'E', 'Contraste entre austeridade pomposa e imagem repugnante.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (105, 'Questão 3 - ENEM 2023', 3, 2023, 'linguagens', 'espanhol', '**“Caramelos” en sus suelos**

Las tierras de España, tu vista enamoran;

sus gentes; te amistan; ¿“cocinas”?, ¡“te molan”!

¿El plato común?, ¡pues «tortilla/patatas»!;

en bares, figones, o tascas, ¡las «tapas»!;

“sabor nacional”, ¡el «gazpacho», sus «vinos»,

«sangría», y «jamón» de sabrosos cochinos!

(Cual “sellos”, te grabas sus «Típicos Platos»;

¡sabrás por dó pasas, por sólo tu olfato!,

¡si en cada lugar, un sabor peculiar,

“al paso” cautiva tu buen paladar!).

¡Son más que “recetas”!, será “alegoría”!,

¡será “identidad”! (¡hay “reserva” en su «Guía»!);

son platos allende un “timón conductor”,

¡son mar, ríos, sierras!, ¡son valles, son flor!,

¡y aportan “Conventos” a gastronomia,

sus «dulces»! (sabor “celestial”, ¡de ambrosia!).

QUIROZ Y LÓPEZ M. Disponível em: https://pt.calameo.com. Acesso em: 25 out. 2021.', 'Nesse poema, o eu poético enaltece a', 'E', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (521, 105, 'A', 'Característica amistosa do povo espanhol.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (522, 105, 'B', 'Beleza das paisagens naturais da Espanha.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (523, 105, 'C', 'Variedade de pratos na gastronomia espanhola.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (524, 105, 'D', 'Relação entre os sentidos do paladar e do olfato na gastronomia.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (525, 105, 'E', 'Gastronomia como representação da identidade cultural de um povo.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (106, 'Questão 3 - ENEM 2023', 3, 2023, 'linguagens', 'ingles', 'Things We Carry on the Sea

We carry tears in our eyes: good-bye father, good-bye mother  
We carry soi in smal bags: may home never fade in our hearts  
We carry carnage of mining. droughts, floods, genocides  
We carry dust of our families and neighbors incinerated in mushroom clouds  
We carry our islands sinking under the sea  
We carry our hands, feet, bones, hearts and best minds for a new life  
We carry diplomas: medicine, engineer, nurse, education, math, poetry, even if they mean nothing to the other shore  
We carry railroads, plantations, laundromats. bodegas, taco trucks, farms, factories, nursing homes, hospitals, schools, temples… built on our ancestors’ backs  
We carry old homes along the spine, new dreams in our chests  
We carry yesterday, today and tomorrow  
We’re orphans of the wars forced upon us  
We’re refugees of the sea rising from industrial wastes  
And we carry our mother tongues  
\\[…\\]  
As we drift… in our rubber boats… from shore… to shore…. to shore…

PING. W. Disponivel em: https://poets.org. Acesso en 1 jun. 2023 (fragmento)', 'Ao retratar a trajetória de refugiados, o poema recorre à imagem de viagem marítima para destacar o(a)', 'D', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (526, 106, 'A', 'Risco de choques culturais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (527, 106, 'B', 'Impacto do ensino de história.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (528, 106, 'C', 'Importância da luta ambiental.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (529, 106, 'D', 'Existência de experiências plurais.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (530, 106, 'E', 'Necessidade de capacitação profissional.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (107, 'Questão 30 - ENEM 2023', 30, 2023, 'ciencias-humanas', NULL, NULL, 'Enquanto estivemos entretidos com os urubus outras coisas andaram acontecendo na cidade. A Companhia baixou novas proibições, umas inteiramente bobocas, só pelo prazer de proibir (ninguém podia cuspir pra cima, nem carregar água em jacá, nem tapar o sol com peneira, como se todo mundo estivesse abusando dessas esquisitices); mas outras bem irritantes, como a de pular muro pra cortar caminho, tática que quase todo mundo que não sofria de reumatismo vinha adotando ultimamente, principalmente os meninos. E não confiando na proibição só, nem na força dos castigos, que eram rigorosos, a Companhia ainda mandou fincar cacos de garrafa nos muros. Achei isso um exagero, e comentei o assunto com mamãe. Meu pai ouviu lá do quarto e veio explicar. Disse que em épocas normais bastava uma coisa ou outra; mas agora a Companhia não podia admitir nenhuma brecha em suas ordens; se alguém desobedecesse à proibição podia se cortar nos cacos; se alguém conseguisse pular um muro quebrando era apanhado pela proibição, nhoc – e fez o gesto de quem torce o pescoço de um frango.
VEIGA, J. J. Sombras de reis barbudos. Rio de Janeiro: Civilização Brasileira, 1978.
Sob a perspectiva do menino que narra, os fatos ficcionais oferecem um esboço do momento político vigente na década de 1970, aqui representado pelo', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (531, 107, 'A', 'Culto ao medo, infiltrado em situações do cotidiano.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (532, 107, 'B', 'Sentimento de dúvida quanto à veracidade das informações.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (533, 107, 'C', 'Ambiente de sonho, delineado por imagens perturbadoras.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (534, 107, 'D', 'Incentivo ao desenvolvimento econômico com a iniciativa privada.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (535, 107, 'E', 'Espaço urbano marcado por uma política de isolamento das crianças.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (108, 'Questão 31 - ENEM 2023', 31, 2023, 'linguagens', NULL, '**Migalhas**

Entre a toalha branca e um bule de café

seria inapropriado dizer

eu não te amo mais.

Era necessário algo mais solene,

um jardim japonês para as perdas pensadas,

um noturno de tempestade para arrebentar de dor,

uma praia de pedras para chorar em silêncio,

uma cama alta para o incenso da despedida,

uma janela dando para o abismo.

No entanto você abaixa os olhos

e recolhe lentamente as migalhas de pão

sobre a mesa posta para dois.

MARQUES, A. M. **A vida submarina**. São Paulo: Cia. das Letras, 2021.', 'Nesse poema, a representação do sentimento amoroso recupera a tradição lírica, mas se ajusta à visão contemporânea ao', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (536, 108, 'A', 'Invocar o interlocutor para uma tomada de posição.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (537, 108, 'B', 'Questionar a validade do envolvimento romântico.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (538, 108, 'C', 'Diluir em banalidade a comoção de um amor frustrado.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (539, 108, 'D', 'Transformar em paz as emoções conflituosas do casal.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (540, 108, 'E', 'Condicionar a existência da paixão a espaços idealizados.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (109, 'Questão 32 - ENEM 2023', 32, 2023, 'linguagens', NULL, NULL, 'O sol começa a descer por trás da vegetação da Ilha da Restinga, na outra margem do rio Paraíba, colorindo o céu de amarelo, laranja e lilás. Então se ouvem as primeiras notas do Bolero, do compositor francês Maurice Ravel, executadas pelo saxofonista Jurandy. É assim o pôr do sol da praia do Jacaré, em Cabedelo (Grande João Pessoa). Depois do Bolero, Jurandy toca Asa branca, de Luiz Gonzaga, e Meu sublime torrão, de Genival Macedo, espécie de hino não oficial da Paraíba.
PINHEIRO, A. Sol se põe embaiado pelo Bolero de Ravel. Disponível em: http://tools.folha.com.br. Acesso em: 16 set. 20212 (adaptado).
A interpretação musical de Jurandy do Sax, codinome de José Jurandy Félix, apresenta caracterizado pela', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (541, 109, 'A', 'Inter-relação de referenciais estéticos aparentemente distanciados.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (542, 109, 'B', 'Valorização de músicas que revelam mensagens de serenidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (543, 109, 'C', 'Consagração do repertório erudito como cultura dominante.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (544, 109, 'D', 'Iniciativa de estímulo à vocação turística da cidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (545, 109, 'E', 'Divisão hierárquica entre gêneros e estilos musicais.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (110, 'Questão 33 - ENEM 2023', 33, 2023, 'linguagens', NULL, '**Texto I**

![](https://enem.dev/2023/questions/33/d3f9dfc2-3337-498f-8dcd-67a7f5909bbb.png)

SEGALL, L. Eternos caminhantes. Óleo sobre tela, 138 x 184 cm. Museu Lasar Segall. IbramMinc. São Paulo, 1919.

**Texto II**

Em 1933, a obra Eternos caminhantes ingressou em uma das primeiras edições das exposições de Arte Degenerada, promovida por membros do partido nazista alemão. Nos anos seguintes, ela voltaria a ser exibida na mostra denominada Exposição da Vergonha, promovida por pequenos grupos abastados. Em 1937, essa obra foi confiscada pelo Ministério da Propaganda daquele país, na grande ação nacional-socialista contra a “Arte Degenerada”.

SCHWARTZ, J. Perseguição à Arte Moderna em tempos de amarra São Paulo: Museu Lasar Segall, 2018 (adaptado)', 'Quase cinquenta obras de Lasar Segall foram confiscadas pelo regime totalitário alemão na primeira metade do século XX, entre elas a obra Eternos caminhantes, considerada degenerada por', 'A', ARRAY['https://enem.dev/2023/questions/33/d3f9dfc2-3337-498f-8dcd-67a7f5909bbb.png'], 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (546, 110, 'A', 'Representar uma estética tida como inconveniente para o ideário político vigente.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (547, 110, 'B', 'Manifestar um posicionamento político-cultural concebido por grupos de oposição.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (548, 110, 'C', 'Expressar a cultura artística por meio da representação parcial do corpo humano.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (549, 110, 'D', 'Apresentar uma composição que antecipa o imaginário artístico germânico.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (550, 110, 'E', 'Estimular discussões sobre o papel da arte na construção coletiva de cultura.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (111, 'Questão 35 - ENEM 2023', 35, 2023, 'linguagens', NULL, 'A indústria do esporte eletrônico é um mercado que está crescendo em um ritmo mais rápido do que a economia mundial. Sua popularidade cresceu muito e no Brasil não é diferente. De acordo com os dados de uma pesquisa, mais de 64% dos brasileiros que jogam videogame já ouviram falar de esporte eletrônico. No entanto, o que chama a atenção é o crescimento superior a 10% do público praticante comparado ao ano anterior, que subiu de 44,7% para 55,4%. Trata-se de um percentual expressivo, já que o Brasil está no top 3 dentre os países que têm maior número de espectadores de esporte eletrônico do mundo. Comparado ao ano anterior, em 2020, o Brasil teve um marco de crescimento de 20% na audiência. Mundo afora, a árdua dedicação de grandes gamers contribuiu para o reconhecimento do Comitê Olímpico Internacional, aliado a outras cinco federações esportivas e suas desenvolvedoras de jogos, que direcionaram um olhar mais atento ao assunto, permitindo dar o primeiro passo para concretizar, pela primeira vez na história dos jogos eletrônicos, um evento olímpico oficial.

Disponível em: https://chicoterra.com. Acesso em: 15 nov. 2021 (adaptado).', 'O contexto em que o esporte eletrônico é apresentado no texto demonstra o(a)', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (551, 111, 'A', 'Condição favorável à expansão dessa modalidade.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (552, 111, 'B', 'Promoção dessa prática por jogadores profissionais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (553, 111, 'C', 'Impulsionamento de um processo de marketing.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (554, 111, 'D', 'Favorecimento de fabricantes dos jogos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (555, 111, 'E', 'Modificação da audiência televisiva.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (112, 'Questão 36 - ENEM 2023', 36, 2023, 'linguagens', NULL, 'Marabaixo é uma expressão artistico-cultural formada nas tradições e na identificação cultural entre as comunidades negras do Amapá. O nome remonta às mortes de escravizados em navios negreiros que eram jogados na água. Em sua homenagem, hinos de lamento eram cantados mar abaixo, mar acima. Posteriormente, o Marabaixo se integrou à vivência das comunidades negras em um ciclo de danças, cantorias com tambores e festas religiosas, recebendo, em 2018, o título de Patrimônio Cultural do Brasil.

Disponível em: http://portal.iphan.gov.br. Acesso em: 15 nov. 2021 (adaptado).', 'A manifestação do Marabaixo se constituiu em expressão de arte e cultura, exercendo função de', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (556, 112, 'A', 'Ressignificar episódios dramáticos em novas práticas culturais.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (557, 112, 'B', 'Adaptar coreografias como imitação dos movimentos do mar.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (558, 112, 'C', 'Lembrar dos mortos no passado escravista como forma de lamento.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (559, 112, 'D', 'Perpetuar uma narrativa de apagamento dos fatos históricos traumáticos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (560, 112, 'E', 'Ritualizar a passagem de atos fúnebres nas produções coletivas com espírito festivo.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (113, 'Questão 37 - ENEM 2023', 37, 2023, 'linguagens', NULL, 'O uso das redes sociais como forma de ampliar universos foi uma descoberta recente para o artista Wolney Fernandes, que começou a criar quando o ambiente em Goiás era mais árido em relação às artes visuais. “Hoje, ser diferente é uma potência e quem sabe o que quer com a própria arte encontra espaço”, diz. As colagens artísticas do goiano aparecem em capas de obras literárias pelo Brasil e exterior.

Disponível em: https://opopular.com.br. Acesso em: 15 nov. 2021 (adaptado).', 'O artista goiano Wolney Fernandes busca expor seu trabalho por meio de plataformas virtuais com o objetivo de', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (561, 113, 'A', 'Dar suporte à técnica de colagem em Artes Visuais, contornando dificuldades práticas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (562, 113, 'B', 'Aproximar-se da estética visual própria da editoração de obras artísticas, como capas de livros.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (563, 113, 'C', 'Oferecer uma vitrine internacional para sua produção artística, a fim de dar mais visibilidade a suas obras.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (564, 113, 'D', 'Enfatizar o caráter original e inovador de suas criações artísticas, diferenciando-se das artes tradicionais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (565, 113, 'E', 'Trazer um sentido tecnológico às suas colagens, uma vez que as imagens artísticas são recorrentes nas redes sociais.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (114, 'Questão 38 - ENEM 2023', 38, 2023, 'linguagens', NULL, NULL, 'O mais antigo grupo de rap indígena do país, Brô MCs, surgiu em 2009, na aldeia Jaguapiru, em Dourados, Mato Grosso do Sul. Os integrantes conheceram o rap pelo rádio, ouvindo um programa que apresentava cantores e grupos brasileiros desse gênero musical. O Brô MCs conseguiu influenciar outros a fazerem rap e a lutarem pelas causas indígenas. Um dos nomes do movimento, Kunumi MC, é um jovem de 16 anos, da aldeia Krukutu, em São Paulo.
O adolescente enxerga o rap como uma cultura da defesa e começou a fazer rimas quando percebeu que a poesia, pela qual sempre se interessou, podia virar música.
Nas letras que cria, inspiradas tanto pelo rap quanto pelos ritmos indígenas, tenta incluir sempre assuntos aos quais acha importante dar voz, principalmente, a questão da demarcação de terras.
Disponível em: www.correiobraziliense.com.br. Acesso em: 13 nov. 2021 (adaptado).
O movimento rap dos povos originários do Brasil revela o(a)', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (566, 114, 'A', 'Fusão de manifestações artísticas urbanas contemporâneas com a cultura indígena.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (567, 114, 'B', 'Contraposição das temáticas socioambientais indigenas as questões urbanas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (568, 114, 'C', 'Rejeição da indústria radiofônica às músicas indígenas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (569, 114, 'D', 'Distanciamento da realidade social indígena.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (570, 114, 'E', 'E estímulo ao estudo da poesia indígena.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (115, 'Questão 39 - ENEM 2023', 39, 2023, 'linguagens', NULL, 'A petição on-line criada por um cidadão paulista surtiu efeito: casado há três anos com seu companheiro, ele pedia a alteração da definição de “casamento” no tradicional dicionário _Michaelis_ em português. Na definição anterior, casamento aparecia como “união legítima entre homem e mulher” e “união legal entre homem e mulher, para constituir família”.

O novo verbete não traz em nenhum momento as palavras homem ou mulher — agora a definição de casamento se refere a “pessoas”.

Para o diretor de comunicação do site onde a petição foi publicada, a iniciativa mostra a “eficiência da mobilização”. “Em dois dias, mudou-se uma definição que permanecia a mesma há décadas”, afirma. E conclui: “A plataforma serve para todos os tipos de causas, para as mudanças que importam para as pessoas.”.

SENRA, R. Disponível em: www.bbc.com. Acesso em: 29 out. 2015.', 'A notícia trata da mudança ocorrida em um dicionário da língua portuguesa. Segundo o texto, essa mudança foi impulsionada pela', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (571, 115, 'A', 'Inclusão de informações no verbete.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (572, 115, 'B', 'Relevância social da instituição casamento.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (573, 115, 'C', 'Utilização pública da petição pelos cidadãos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (574, 115, 'D', 'Rapidez na disseminação digital do verbete.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (575, 115, 'E', 'Divulgação de plataformas para a criação de petição', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (116, 'Questão 4 - ENEM 2023', 4, 2023, 'linguagens', 'espanhol', 'Manipular es sembrar en la conciencia y en la mente de la gente ideas, actitudes, conceptos y aspiraciones -incluso falsas, inmorales y deshonestas- que sirvan a los objetivos -ocultos o abiertos- de sus manipuladores.

Manipular es una de las primeras cosas que aprendemos en la vida. A muy temprana edad, los bebes descubren el poder del llanto, el berrinche, los pataleos, la risa o alguna “gracia” como recursos para demandar atención, exigir comida, pedir ayuda o simplemente mantener ocupada a la gente. Nuestras actitudes de adultos reflejan lo mucho o poco que algunos maduraron, procesaron y rebasaron ese periodo.

Para que exista un manipulador, debe haber una base de ciudadanos indefensos, dóciles, desinformados. El manipulador es celoso, a veces casi paranoico; no admite cuestionamientos ni quiere que nadie ocupe su espacio, sabe que su vigencia depende de presencia controladora. Todos los días, hay que marcar la línea de discurso, incidir en el debate. El ridículo vale la pena si con ello se logra una cortina de humo.

Disponível em: www.forbes.com.mx. Acesso em: 7 out. 2021 (adaptado).', 'Nesse texto, a expressão “cortina de humo” revela que o manipulador', 'B', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (576, 116, 'A', 'Amadurece tardiamente.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (577, 116, 'B', 'Busca mascarar a verdade.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (578, 116, 'C', 'Rejeita questionamentos alheios.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (579, 116, 'D', 'Aproxima-se de pessoas indefesas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (580, 116, 'E', 'Faz-se presente de forma controladora.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (117, 'Questão 4 - ENEM 2023', 4, 2023, 'linguagens', 'ingles', '**Spanglish**

pues estoy creando Spanglish  
bi-cultural systems  
scientific lexicographical  
inter-textual integrations  
two expressions  
existentially wired  
two dominant languages  
continentally abrazándose  
in colloquial combate  
imperio spanglish emerges  
sobre territorio bi-lingual  
las novelas mexicanas  
mixing with radiorocknroll  
immigrant/migrant  
nasal mispronouncements  
hip-hop, street salsa, spanish pop  
standard english classroom  
with computer technicalities  
spanglish is literally perfect

LAVIERA T. **Benedición**. The Complete Poetry of Talo Laviera. Houston: Arte Público Press, 2014 (fragmento).', 'Nesse poema de Tato Laviera, o eu lírico destaca uma', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (581, 117, 'A', 'Convergência linguístico-cultural.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (582, 117, 'B', 'Características históricio-cultural.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (583, 117, 'C', 'Tendência estilístico-literária', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (584, 117, 'D', 'Discriminação cultural.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (585, 117, 'E', 'Censura musical.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (118, 'Questão 40 - ENEM 2023', 40, 2023, 'linguagens', NULL, 'A neozelandesa Laurel Hubbard fez história nos Jogos Olimpicos. Apesar de ter ficado de fora da disputa por medalhas, a levantadora de peso deixou sua marca na edição de Tóquio por ser a primeira mulher abertamente transgênero a participar de uma competição olímpica. No início da carreira, na década de 1990, a neozelandesa participava de disputas na categoria masculina. Em 2001, aos 23 anos, ela se afastou da atividade. “A pressão de tentar me encaixar em um mundo que talvez não tenha sido feito para pessoas como eu se tornou um fardo muito grande para suportar.” Em 2012, Laurel começou sua transição de gênero por meio de terapias hormonais e, em 2013, declarou abertamente ser uma mulher trans. Para o Comitê Olímpico Internacional, a participação de mulheres trans nos Jogos é permitida caso o nível de testosterona, hormônio que aumenta a massa muscular, esteja abaixo de 10 nanomols por litro por pelo menos 12 meses.

Disponivel em: https://revistagalileu.globo.com Acesso em: 18 nov. 2021 (adaptado).', 'No texto, os limites do potencial inclusivo do esporte são dados pela', 'B', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (586, 118, 'A', 'Dificuldade de conseguir bons resultados esportivos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (587, 118, 'B', 'Dependência de características biológicas padronizadas.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (588, 118, 'C', 'Inexistência de uma categoria para pessoas transgênero', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (589, 118, 'D', 'Necessidade de afastamento temporário das competições', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (590, 118, 'E', 'Impossibilidade de uso controlado de substâncias', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (119, 'Questão 41 - ENEM 2023', 41, 2023, 'linguagens', NULL, '“Ganhei 25 medalhas em mundiais, sete em Jogos Olímpicos, e sou uma sobrevivente de abuso sexual.” Foi assim que Simone Biles se apresentou ao comitê do Senado norte-americano que investiga as supostas falhas do FBI no caso Larry Nassar. Biles e outras três atletas, vítimas dos abusos do ex-médico da equipe de ginástica feminina dos EUA, exigiram que os agentes da investigação sejam processados por falta de ação prévia contra Nassar, agora preso. Biles esclareceu que culpa Larry Nassar e “todo o sistema que o permitiu e o perpetrou”, acusando a Federação de Ginástica e o Comitê Olímpico dos Estados Unidos de saberem “muito antes” que ela havia sofrido abusos. A melhor ginasta do mundo é um ícone. Nos Jogos Olímpicos de Tóquio, uma lesão psicológica a impediu de competir como previa. No entanto, ela chegou ao topo como uma líder no trabalho de acabar com o preconceito com os problemas de saúde mental. “Não quero que nenhum outro atleta olímpico sofra o horror que eu e outras centenas suportamos e continuamos suportando até hoje”, afirmou.

Disponível em https://brasil.elpais.com Acesso em 31 out 2021 (adaptado).', 'O fato relatado na notícia chama a atenção acerca da necessidade de reflexão sobre a relação entre o esporte e', 'B', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (591, 119, 'A', 'O desempenho atlético internacional.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (592, 119, 'B', 'A dimensão emocional dos atletas.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (593, 119, 'C', 'Os comitês olímpicos nacionais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (594, 119, 'D', 'As instituições de inteligência.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (595, 119, 'E', 'As federações esportivas.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (120, 'Questão 42 - ENEM 2023', 42, 2023, 'linguagens', NULL, 'O acesso às Práticas Corporais/Atividades Físicas (PC/AF) é desigual no Brasil, à semelhança de outros indicadores sociais e de saúde. Em geral, PC/AF prazerosas, diversificadas, mais afeitas ao período de lazer estão concentradas nas populações mais abastadas. As atividades físicas de deslocamento, trajetos a pé ou de bicicleta para estudar ou trabalhar, por exemplo, são mais frequentes na classe social menos favorecida. Aqui, há uma relação inversa e perversa entre variáveis socioeconômicas de acesso às PC/AF. As maiores prevalências de inatividade física foram em mulheres, pessoas com 60 anos ou mais, negros, pessoas com autoavaliação de saúde ruim ou muito ruim, com renda familiar de até quatro salários mínimos por pessoa, pessoas que desconhecem programas públicos de PC/A e residentes em áreas sem locais públicos para a prática.

KNUTH, A. G.; ANTUNES, P. C. **Saúde e Sociedade**, n. 2, 2021 (adaptado).', 'O fator central que impacta a realização de práticas corporais/atividades fisicas no tempo de lazer no Brasil é a', 'E', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (596, 120, 'A', 'Diferença entre homens e mulheres.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (597, 120, 'B', 'Inexistência de políticas públicas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (598, 120, 'C', 'Diversidade de faixa etária.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (599, 120, 'D', 'Variação de condição étnica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (600, 120, 'E', 'Desigualdade entre classes sociais.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (121, 'Questão 43 - ENEM 2023', 43, 2023, 'linguagens', NULL, NULL, 'Mestre e companheiro, disse eu que nos íamos despedir. Mas disse mal. A morte não extingue: transforma; não aniquila; renova; não divorcia: aproxima. Um dia supuseste “morta e separada” a consorte dos teus sonhos e das tuas agonias, que te soubera “pôr um undo inteiro no recanto” do teu ninho; e, todavia, nunca ela te esteve mais presente, no íntimo de ti mesmo e na expressão do teu canto, no fundo do teu ser e na face de tuas ações. Esses catorze versos inimitáveis, em que o enlevo dos teus discípulos resume o valor de toda uma literatura, eram a aliança de ouro do teu segundo noivado, um anel de outras núpcias, para a vida nova do teu renascimento e da tua glorificação, com a sócia sem nódoa dos teus anos e de mocidade e madureza, da florescência e frutificação de tua alma. Para os eleitos do mundo das ideias a miséria está em decadência, e não na morte. A nobreza de uma nos preserva das ruínas de outra. Quando eles atravessavam essa passagem do invisível, que os conduz à região da verdade sem mescla, então é que entramos a sentir o começo do seu reino, o reino dos mortos sobre os vivos.
BARBOSA, R. O adeus da Academia a Machado de Assis. Rio de Janeiro: Agir, 1962.
Esse é um trecho do discurso de Rui Barbosa na Academia Brasileira de Letras em homenagem a Machado de Assis por ocasião de sua morte. Uma das características desse discurso de homenagem é a presença de', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (601, 121, 'A', 'Metáforas relacionadas à trajetória pessoal e criadora do homenageado.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (602, 121, 'B', 'Recursos fonológicos empregados para a valorização do ritmo do texto.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (603, 121, 'C', 'Frases curtas e diretas no relato de vida e da morte do homenageado.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (604, 121, 'D', 'Contraposição de ideias presentes na obra do homenageado.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (605, 121, 'E', 'Seleção vocabular representativa do sentimento de nostalgia.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (122, 'Questão 44 - ENEM 2023', 44, 2023, 'linguagens', NULL, '![](https://enem.dev/broken-image.svg)', 'Essa campanha publicitária do Ministério da Saúde visa', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (606, 122, 'A', 'Divulgar um conjunto de benefícios proporcionados pela amamentação.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (607, 122, 'B', 'Apresentar tratamentos para infecções respiratórias em bebês.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (608, 122, 'C', 'Defender o direito das mulheres de amamentar em público.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (609, 122, 'D', 'Orientar sobre os exercícios para uma boa amamentação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (610, 122, 'E', 'Informar sobre o aumento de anticorpos nas mães.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (123, 'Questão 45 - ENEM 2023', 45, 2023, 'linguagens', NULL, NULL, 'Carta aberta à população brasileira
Prezados Cidadãos e Cidadãs, O envelhecimento populacional é um fenômeno mundial. Infelizmente, nosso país ainda não está preparado para atender às demandas dessa população.
Este é o retrato da saúde pública no Brasil, que, apesar dos indiscutíveis avanços, apresenta um cenário de deficiências e falta de integração em todos os níveis de atenção à saúde: primária (atendimento deficiente nas unidades de saúde da atenção básica), secundária (carência de centros de referência com atendimento por especialistas) e terciária (atendimento hospitalar com abordagem ao idoso centrada na doença), ou seja, não há, na prática, uma rede de atenção à saúde do idoso.
Diante desse cenário, a Sociedade Brasileira de Geriatria e Gerontologia (SBGG) vem a público manifestar suas preocupações com o presente e o futuro dos idosos no Brasil. É preciso garantir a saúde como direito universal.
Esperamos que tanto nossos atuais quanto os futuros governantes e legisladores reflitam sobre a necessidade de investir na saúde e na qualidade de vida associada ao envelhecimento.
Dignidade à saúde do idoso!
Rio de Janeiro, 15 de setembro de 2014.
Disponível em: www.sbgg.org.br. Acesso em: 20 out. 2021 (adaptado).
O objetivo desse texto é', 'E', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (611, 123, 'A', 'A sensibilizar o idoso a respeito dos cuidados com a saude.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (612, 123, 'B', 'Alertar os governantes sobre os cuidados requeridos pelo idoso.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (613, 123, 'C', 'Divulgar o trabalho da Sociedade Brasileira de Geriatria e Gerontologia.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (614, 123, 'D', 'Informar o setor público sobre o retrocesso da legislação destinada à população idosa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (615, 123, 'E', 'Chamar a atenção da população sobre a qualidade dos serviços de saúde pública para o idoso.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (124, 'Questão 46 - ENEM 2023', 46, 2023, 'ciencias-humanas', NULL, '![](https://enem.dev/2023/questions/46/4eac436b-15be-438c-8219-f2043ab21946.png)', 'Fotografia da avó bordada
SCARELI. G. A máquina de costura e os fios da memória Revista Brasileira de Pesquisa (Auto) Biográfica, n. 18 maio-ago, 2021
A definição de Sertão descrita no bordado associa esse recorte espacial a', 'C', ARRAY['https://enem.dev/2023/questions/46/4eac436b-15be-438c-8219-f2043ab21946.png'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (616, 124, 'A', 'Percursos e roteiros turísticos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (617, 124, 'B', 'Trajetos e movimentos holísticos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (618, 124, 'C', 'Vivências e itinerários socioafetivos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (619, 124, 'D', 'Fronteiras e demarcações territoriais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (620, 124, 'E', 'Profissões e interesses econômicos.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (125, 'Questão 47 - ENEM 2023', 47, 2023, 'ciencias-humanas', NULL, NULL, 'Felizes tempos eram esses! As moças iam à missa de madrugada. De dia ninguém as via e se alguma, em dia de festa, queria passear com a avó ou a tia, havia de ir de cadeirinhas. Bem razão têm os nossos velhos de chorar por esses tempos, em que as filhas não sabiam escrever, e por isso não mandavam nem recebiam bilhetinhos.
 
Novo correio de Modas, 1853, apud DONEGÁ, A. L.
Publicar ficção em meado do século XIX,: um estudo de revistas femininas editadas pelos irmãos Laemmert. Campinas, unicamp, 2013 (adaptado)
Na perspectiva do autor,  as tradições e os costumes sociofamiliares sofreram alterações no século XIX, decorrentes de quais fatores?', 'D', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (621, 125, 'A', 'Hábitos de leitura e mobilidade regional.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (622, 125, 'B', 'Circulação de impressos e trânsito religioso.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (623, 125, 'C', 'Valorização da lingua e imigração estrangeira.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (624, 125, 'D', 'Práticas de letramento e transformação cultural.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (625, 125, 'E', 'Flexibilização do ensino e reformismo pedagógico.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (126, 'Questão 48 - ENEM 2023', 48, 2023, 'ciencias-humanas', NULL, NULL, 'No Cerrado, o conhecimento local está sendo cada vez mais subordinado à lógica do agronegócio. De um lado, o capital impõe os conhecimentos biotecnológicos, como mecanismo de universalização de práticas agrícolas e de novas tecnologias, e de outro, o modelo capitalista subordina homens e mulheres à lógica do mercado. Assim, as águas, as sementes, os minerais, as terras (bens comuns) tornam-se propriedade privada. Além do mais, há outros fatores negativos, como a mecanização pesada, a “pragatização” dos seres humanos e não humanos, a violência simbólica, a superexploração, as chuvas de veneno e a violência contra a pessoa.
CALAÇA, M.; SILVA, E. B.; JESUS, J. N. Territorialização do agronegócio e subordinação
do campesinato no Cerrado, Élisée, Rev. Geo. ÚEG, n. 1, jan.-jun. 2021 (adaptado).
Os elementos descritos no texto, a respeito da territorialização da produção, demonstram que há um:', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (626, 126, 'A', 'Cerco aos camponeses, inviabilizando a manutenção das condições para a vida.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (627, 126, 'B', 'Descaso aos latifundiários, impactando a plantação de alimentos para a exportação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (628, 126, 'C', 'Desprezo ao assalariado, afetando o engajamento dos sindicatos para o trabalhador.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (629, 126, 'D', 'Desrespeito aos governantes, comprometendo a criação de empregos para o lavrador.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (630, 126, 'E', 'Assédio ao empresariado, dificultando o investimento de maquinários para a produção.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (127, 'Questão 49 - ENEM 2023', 49, 2023, 'ciencias-humanas', NULL, NULL, 'TEXTO I
Com uma população de 25 milhões de habitantes (cerca de 60% de minorias muçulmanas, principalmente da etnia Uigur), Xinjiang é uma região estratégica para a China. Faz fronteira com oito países, é uma artéria crucial do megaprojeto de infraestrutura chinês Cinturão e Rota e tem as maiores reservas nacionais de carvão e gás natural.
(NINIO, M. Disponível em: https: oglobo.globo.com. Acesso em: 5 out. 2021 adaptado)
TEXTO II
Dentre as províncias da Região Oeste, Xinjiang se destaca ao receber mais de 1,7 milhão de migrantes entre 2000 e 2010. O principal motivo desse fluxo migratório é que o governo fornece subsídios à população visando aumentar a proporção de chineses da etnia Han em relação à população local de etnias turca e muçulmana.
ALVES. F.: TOYOSHIMA. S. Disparidade socioeconômica e fluxo migratório chinês: interpretação de eventos contemporâneos segundo os clássicos do desenvolvimento. Revista de Economia Contemporânea. n 1. jan. abr. 2017 (adaptado)
A política demográfica para a província mencionada nos textos é parte da seguinte ação estratégica do governo chinês:', 'E', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (631, 127, 'A', 'Promover a ocupação rural.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (632, 127, 'B', 'Favorecer a liberdade religiosa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (633, 127, 'C', 'Descentralizar a gestão pública.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (634, 127, 'D', 'Incentivar a pluralidade cultural.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (635, 127, 'E', 'Assegurar a integridade territorial.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (128, 'Questão 5 - ENEM 2023', 5, 2023, 'linguagens', 'espanhol', '**Que quede claro**

Cómo es posible que se cierren

tantas bocas, tantos ojos,

tantas puertas, muchas mentes ante un

acto xenofóbico sin precedentes.

Presidentes, ministros, cancilleres,

autoridades, responsables.

¿Quién pagará el daño causado a familiares?

Por un loco del estrada sin modales. \\[…\\]

Se alejó de aquel lugar donde su color era

mucho más que su color, era su raza.

Persiguiendo un sueño que desapareció,

que se fusionó y terminó en una pesadilla. \\[…\\]

Déjame que te cuente esta historia

que sucedió en el metro de Barcelona,

cuando aquella mañana la injusticia

y xenofobia se juntaron de la mano,

protagonizando una de las más feas escenas de racismo.

En aquel vagón viajaba un ángel de color diferente,

en su camino se interpuso aquel inconsciente,

que aún sabiendo lo que hacía,

seguía hablando con su gente.

Le dio al ángel dos patadas en su cara,

se rió de ella sin cambiar la mirada.

Y aún anda suelto, aún anda suelto…

ORISHAS. In: **Cosita buena**. Delaware: Suerte Publishing LCC, 2008 (fragmento).', 'A letra da canção Que quede claro, da banda cubana Orishas, revela o(a)', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (636, 128, 'A', 'Indignação diante do desrespeito à diversidade.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (637, 128, 'B', 'Violência característica das grandes metrópoles.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (638, 128, 'C', 'Preconceito da sociedade com relação ao misticismo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (639, 128, 'D', 'Descuido da população com sonhos dos imigrantes.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (640, 128, 'E', 'Falta de segurança existente no transporte público urbano.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (129, 'Questão 5 - ENEM 2023', 5, 2023, 'linguagens', 'ingles', '![](https://enem.dev/broken-image.svg)

Disponivel em: www.cartoonstock.com. Acesso em: 25 out. 2021', 'Ao retratar o ambiente de trabalho em um escritório, esse cartum tem por objetivo', 'B', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (641, 129, 'A', 'Criticar um padrão de vestimenta.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (642, 129, 'B', 'Destacar a falta de diversidade.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (643, 129, 'C', 'Indicar um modo de interação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (644, 129, 'D', 'Elogiar um modelo de organização.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (645, 129, 'E', 'Salientar o espírito de cooperação.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (130, 'Questão 50 - ENEM 2023', 50, 2023, 'ciencias-humanas', NULL, NULL, 'Superar a história da escravidão como principal marca da trajetória do negro no país tem sido uma tônica daqueles que se dedicam a pesquisar as heranças de origem afro à cultura brasileira. A esse esforço de reconstrução da própria história do país, alia-se agora a criação da plataforma digital Ancestralidades. “A história do negro no Brasil vai continuar sendo contada, e cada passo que a gente dá para trás é um passo que a gente avança”, diz Márcio Black, idealizador da plataforma, sobre o estudo de figuras ainda encobertas pela perspectiva histórica imposta pelos colonizadores da América.
FIORATI, G. Projeto joga luz sobre negros e revê perspectiva histórica Disponivel em: www1.folha.uol.com.br. Acesso em: 10 nov. 2021 (adaptado)
Em relação ao conhecimento sobre a formação cultural brasileira, iniciativas como a descrita no texto favorecem o(a)', 'E', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (646, 130, 'A', 'Recuperação do tradicionalismo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (647, 130, 'B', 'Estímulo ao antropocentrismo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (648, 130, 'C', 'Reforço do etnocentrismo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (649, 130, 'D', 'Resgate do teocentrismo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (650, 130, 'E', 'Crítica ao eurocentrismo.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (131, 'Questão 51 - ENEM 2023', 51, 2023, 'ciencias-humanas', NULL, NULL, 'Escrito durante a Primeira Guerra Mundial, o seguinte trecho faz parte da carta enviada pelo secretário do exterior britânico, Sir Arthur James Balfour, ao banqueiro Lord Rotschild, presidente da Liga Sionista, em 2 de novembro de 1917, a carta ficou conhecida como Declaração Balfour:
“O governo de Sua Majestade vê com aprovação o estabelecimento na Palestina de um lar nacional para o povo judeu, e fará todos os esforços para facilitar tal objetivo. Nada será feito que possa prejudicar os direitos civis e religiosos das comunidades não judaicas na Palestina.”
GATTAZ, A. A Guerra da Palestina. São Paulo: Usina do Livro, 2002 (adaptado).
A análise do resultado do processo em questão revela que o governo inglês foi incapaz de garantir seu objetivo de', 'C', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (651, 131, 'A', 'Promover o bem-estar social.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (652, 131, 'B', 'Negociar o apoio muçulmano.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (653, 131, 'C', 'Mediar os conflitos territoriais.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (654, 131, 'D', 'Estimular a cooperação regional.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (655, 131, 'E', 'Combater os governos autocráticos.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (132, 'Questão 52 - ENEM 2023', 52, 2023, 'ciencias-humanas', NULL, NULL, 'TEXTO I
Como presença consciente no mundo não posso escapar à responsabilidade ética no meu mover-me no mundo. Se sou puro produto da determinação genética ou cultural ou de classe, sou irresponsável pelo que faço no meu mover-me no mundo e, se careço de responsabilidade, não posso falar em ética.
FREIRE, P. Pedagogia da autonomia: saberes necessários à prática educativa. São Paulo: Paz e Terra, 1996
ТЕХТО II
Paulo Freire construiu uma pedagogia da esperança. Na sua concepção, a história não é algo pronto e acabado. As estruturas de opressão e as desigualdades, apesar de serem naturalizadas, são sócio e historicamente construídas. Daí a importância de os educandos tomarem consciência da sua realidade para, assim, transformá-la.
DEMARCHI, J. L. Paulo Freire. Disponivel em: https://diplomatique.org.br. Acesso em: 6 out. 2021 (adaptado).
Com base no conceito de ética pedagógica presente nos textos, os educandos tornam-se responsáveis pela', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (656, 132, 'A', 'Participação sociopolítica.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (657, 132, 'B', 'Definição estético-cultural.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (658, 132, 'C', 'Competição econômica local.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (659, 132, 'D', 'Manutenção do sistema escolar.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (660, 132, 'E', 'Capacitação de mobilidade individual.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (133, 'Questão 53 - ENEM 2023', 53, 2023, 'ciencias-humanas', NULL, 'A cordilheira do Himalaia tem mais de 50 milhões de anos., sendo classificada como a maior cordilheira do planeta. Originário da língua sânscrito, comum na região, seu nome quer dizer “morada da neve”. É possível encontrar nessa cordilheira as quinze maiores montanhas do mundo. Ao todo, existem mais de cem picos, que contam com altitudes bem maiores que 7 000 m. O Everest, considerado o ponto mais alto da Terra, tem nada menos que 8 848 m de altitude, e continua crescendo, aproximadamente, 0,8 mm a cada ano.

Disponível em: https://meioambiente.culturamix.com. Acesso em: 12 nov. 2021 (adaptado).', 'Qual dinâmica natural é responsável pelo fenômeno apresentado?', 'B', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (661, 133, 'A', 'Derrame de lava vulcânica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (662, 133, 'B', 'Encontro de placas tectônicas.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (663, 133, 'C', 'Ação do intemperismo químico.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (664, 133, 'D', 'Sedimentação de erosão eólica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (665, 133, 'E', 'Derretimento de geleiras glaciais.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (134, 'Questão 54 - ENEM 2023', 54, 2023, 'ciencias-humanas', NULL, NULL, 'Eu poderia concluir que a raiva é um pensamento, que estar com raiva é pensar que alguém é detestável, e que esse pensamento, como todos os outros — assim como Descartes o mostrou —, não poderia residir em nenhum fragmento de matéria. A raiva seria, portanto, espírito. Porém, quando me volto para minha própria experiência da raiva, devo confessar que ela não estava fora do meu corpo, mas inexplicavelmente nele.
MERLEAU-PONTY, M. Quinta conversa: o homem visto de fora. São Paulo: Martins Fontes, 1948 (adaptado).
No que se refere ao problema do corpo, a filosofia cartesiana apresenta-se como contraponto ao entendimento expresso no texto por', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (666, 134, 'A', 'Apresentar uma visão dualista.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (667, 134, 'B', 'Confirmar uma tese naturalista.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (668, 134, 'C', 'Demonstrar uma premissa relativa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (669, 134, 'D', 'Sustentar um argumento idealista.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (670, 134, 'E', 'Defender uma posição intencionalista.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (135, 'Questão 55 - ENEM 2023', 55, 2023, 'ciencias-humanas', NULL, NULL, 'A diversão é o prolongamento do trabalho sob o capitalismo tardio. Ela é procurada por quem quer escapar ao processo de trabalho mecanizado para se pôr de novo em condições de enfrentá-lo. Mas, ao mesmo tempo, a mecanização atingiu um tal poderio sobre a pessoa em seu lazer e sobre a sua felicidade, ela determina tão profundamente a fabricação das mercadorias destinadas à diversão que essa pessoa não pode mais perceber outra coisa senão as cópias que reproduzem o próprio processo de trabalho…
ADORNO, T; HORKHEIMER, M. Dialética do esclarecimento. Rio de Janeiro: Zahar 1997.
No texto, o tempo livre é concebido como', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (671, 135, 'A', 'Consumo de produtos culturais e elaborados no mesmo sistema produtivo do capitalismo', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (672, 135, 'B', 'Forma de realizar as diversas potencialidades da natureza humana.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (673, 135, 'C', 'Alternativa para equilibrar tensões psicológicas do dia a dia.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (674, 135, 'D', 'Promoção da satisfação de necessidades artificiais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (675, 135, 'E', 'Mecanismo de organização do ócio e do prazer.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (136, 'Questão 56 - ENEM 2023', 56, 2023, 'ciencias-humanas', NULL, '![](https://enem.dev/broken-image.svg)

LAERTE. Disponível em: www.laerte.art.br. Acesso em: 23 nov. 2021 (adaptado)', 'A charge ilustra um anseio presente na sociedade contemporânea, que se caracteriza pela', 'C', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (676, 136, 'A', 'Situação de revolta individual.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (677, 136, 'B', 'Satisfação de desejos pessoais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (678, 136, 'C', 'Participação em ações decisórias.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (679, 136, 'D', 'Permanência em passividade social.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (680, 136, 'E', 'Conivência em interesses partidários.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (137, 'Questão 57 - ENEM 2023', 57, 2023, 'ciencias-humanas', NULL, NULL, 'Quem se mete pelo caminho do pedido de perdão deve estar pronto a escutar uma palavra de recusa. Entrar na atmosfera do perdão é aceitar medir-se com a possibilidade sempre aberta do imperdoável. Perdão pedido não é perdão a que se tem direito [devido]. É com o preço destas reservas que a grandeza do perdão se manifesta.
RICOEUR, P. O perdão pode curar. Disponível em: www.lusosofia.net. Acesso em: 14 out 2019.
A reflexão sobre o perdão apresentada no texto encontra fundamento na(s)', 'E', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (681, 137, 'A', 'Rejeição particular amparada pelo desejo de poder.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (682, 137, 'B', 'Decisão subjetiva determinada pela vontade divina.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (683, 137, 'C', 'Liberdade mitigada pela predestinação do espírito.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (684, 137, 'D', 'Escolhas humanas definidas pelo conhecimento empírico.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (685, 137, 'E', 'Relações interpessoais medidas pela autonomia dos indivíduos.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (138, 'Questão 58 - ENEM 2023', 58, 2023, 'ciencias-humanas', NULL, 'A Cavalgada de Sant’Ana é uma expressão da devoção dos vaqueiros à padroeira de Caicó (RN). Nas décadas de 1950 a 1970, esse evento, então denominado Cavalaria, era celebrado pelas pessoas que residiam na zona rural do município de Caicó. Essas pessoas usavam os animais (jegues, mulas e cavalos) como único meio de transporte, sobretudo para se dirigirem à cidade nos dias de feiras, trazendo seus produtos para comercializarem. Estando em Caicó no período da Festa de Sant’Ana, esses agricultores se organizavam em cavalgada até o pátio da Catedral de Sant’Ana para louvar a santa e receber bênção para seus animais. Por volta da década de 1970, com a chegada do automóvel à zona rural do município, essa expressão cultural foi extinta. O meio de transporte utilizando os animais passou a ser substituído por carros, sobretudo caminhonetes e caminhões, que transportavam os camponeses para a cidade em dias de feiras e festas. Desde 2002, um grupo de caicoenses retomou essa expressão cultural e, em conjunto com a associação dos vaqueiros, realiza no primeiro domingo da Festa a Cavalgada de Sant’Ana. O evento, além de contar com a participação dos cavaleiros que residem nas zonas rurais, atrai também pessoas que residem em Caicó, cidades vizinhas e amantes das vaquejadas.

FESTA DE SANT’ANA. Disponivel em: http://portal.iphan.gov.br Acesso em: 12 out. 2021 (adaptado).', 'As mudanças culturais mencionadas no texto caracterizam-se pela presenca de', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (686, 138, 'A', 'Elementos tradicionais e modernos em torno de uma crença religiosa.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (687, 138, 'B', 'Argumentos teológicos e históricos em consequência de uma ordem papal.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (688, 138, 'C', 'Fundamentos estéticos e etnográficos em função de uma cerimônia clerical.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (689, 138, 'D', 'Práticas corporais e esportivas em decorrência de uma imposição eclesiástica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (690, 138, 'E', 'Discursos filosóficos e antropológicos em resultado de uma determinação paroquial.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (139, 'Questão 59 - ENEM 2023', 59, 2023, 'ciencias-humanas', NULL, 'Do século XVI em diante, pelo menos nas classes mais altas, o garfo passou a ser usado como utensílio para comer, chegando através da Itália primeiramente à França e, em seguida, à Inglaterra e à Alemanha, depois de ter servido, durante algum tempo, apenas para retirar alimentos sólidos da travessa. Henrique III introduziu-o na França, trazendo-o provavelmente de Veneza. Seus cortesãos não foram pouco ridicularizados por essa maneira “afetada” de comer e, no princípio, não eram muito hábeis no uso do utensílio: pelo menos se dizia que metade da comida cala do garfo no caminho do prato à boca. Em data tão recente como o século XVII, o garfo era ainda basicamente artigo de luxo, geralmente feito de prata ou ouro.

ELIAS. N. **O processo civilizador**: uma história dos costumes. Rio de Janeiro: Zahar, 1994.', 'O processo social relatado indica a formação de uma etiqueta que tem como principio a', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (691, 139, 'A', 'Distinção das classes sociais.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (692, 139, 'B', 'Valorização de habitos de higiene.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (693, 139, 'C', 'Exaltação da cultura mediterrânea.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (694, 139, 'D', 'Consagração de tradições medievais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (695, 139, 'E', 'Disseminação de produtos manufaturados.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (140, 'Questão 6 - ENEM 2023', 6, 2023, 'linguagens', NULL, NULL, 'A sessão do Comitê Olímpico Internacional (COI) aprovou uma mudança histórica e inédita no lema olímpico, criado em 1894 pelo Barão Pierre de Coubertin para expressar os valores e a excelência do esporte. Mais de 120 anos depois, o lema tem sua primeira alteração para ressaltar a solidariedade e incluir a palavra “juntos” mais rápido, mais alto, mais forte – juntos. A mudança foi aprovada por unanimidade pelos membros do COI e celebrada pelo presidente da entidade.
Disponível em: https://ge.globo.com Acesso em: 10 nov. 2021 (adaptado)
De acordo com o texto, a alteração do lema olímpico teve como objetivo a', 'D', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (696, 140, 'A', 'Unificação do lema anterior ao atual.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (697, 140, 'B', 'Aproximação entre o lema olímpico e o COI.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (698, 140, 'C', 'Junção do lema olímpico com os princípios esportivos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (699, 140, 'D', 'Associação entre o lema olímpico e a cooperatividade.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (700, 140, 'E', 'Vinculação entre o lema olímpico e os eventos atléticos.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (141, 'Questão 60 - ENEM 2023', 60, 2023, 'ciencias-humanas', NULL, 'Negar o pedido por dinheiro indispensável para necessidades pessoais ou comprar bens usando o nome da pessoa sem o consentimento dela. Ameaçar o corte de recursos dependendo de atitudes pessoais, esconder documentos ou trocar senhas do banco sem avisar. Ou, ainda, proibir a pessoa de trabalhar ou destruir seus pertences. As histórias são comuns, mas às vezes não são reconhecidas como abuso. Mas é uma das cinco formas de conduta contra a mulher previstas na Lei Maria da Penha.

LEWGOY. J. **Conduta quase invisível destrói a vida de mulheres**. Disponível em: https://valorinveste.globo.com. Acesso em: 23 out. 2021 (adaptado).', 'O texto apresenta tipos de conduta sujeitos a punição, conforme previsto na Lei Maria da Penha, porque consistem em formas de', 'D', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (701, 141, 'A', 'Ação difamatória.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (702, 141, 'B', 'Desvio comportamental.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (703, 141, 'C', 'Expressão preconceituosa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (704, 141, 'D', 'Violência patrimonial.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (705, 141, 'E', 'Desentendimento matrimonial.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (142, 'Questão 61 - ENEM 2023', 61, 2023, 'ciencias-humanas', NULL, 'Por trás da “mágica” do Google Assistant de sua capacidade de interpretar 26 idiomas está uma enorme equipe de linguistas distribuídos globalmente, trabalhando como subcontratados, que devem rotular tediosamente os dados de treinamento para que funcione. Eles ganham baixos salários e são rotineiramente forçados a trabalhar horas extras não remuneradas. A inteligência artificial não funciona como um pozinho mágico. Ela funciona por meio de trabalhadores que treinam algoritmos incansavelmente até que eles automatizem seus próprios trabalhos.

**A Inteligência Artificial (IA) da economia freelancer está vindo atrás de você**. Disponível em: https://mittechreview.com.br. Acesso em: 6 out. 2021 (adaptado).', 'O texto critica a mudança tecnológica em razão da seguinte consequência:', 'E', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (706, 142, 'A', 'Diversificação da função.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (707, 142, 'B', 'Mobilidade da população.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (708, 142, 'C', 'Autonomia do empregado.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (709, 142, 'D', 'Concentração da produção.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (710, 142, 'E', 'Invisibilidade do profissional.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (143, 'Questão 62 - ENEM 2023', 62, 2023, 'ciencias-humanas', NULL, 'Enormes alto-falantes sul-coreanos instalados na fronteira com o Norte costumavam transmitir desde canções em estilo K-pop (como é chamado o pop sul-coreano) até boletins climáticos e noticiário crítico ao vizinho comunista. O Norte costuma praticar atividade semelhante, transmitindo por seus alto-falantes discursos críticos a Seul e aliados. Durante os anos 1980, o governo sul-coreano construiu um mastro de 97 metros de altura para hastear sua bandeira no povoado de Daesong-dong, na fronteira com o Norte. O Norte respondeu com a construção de um mastro ainda mais alto (160 m) na cidade fronteiriça de Gijung-dong. “Essas demonstrações são uma válvula de escape competitiva e importante entre os dois lados, fora de um possível conflito militar”, diz o analista Ankit Panda.

TAN, Y. **Disputa de mastros e alto-falantes com K-pop:** as pequenas picuinhas do conflito entre as Coreias. Disponível em: www.bbc.com. Acesso em: 7 nov. 2021 (adaptado).', 'Os atos de competição citados têm suas origens históricas vinculadas a um contexto de', 'C', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (711, 143, 'A', 'Domínio cultural-identitário de atores sociais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (712, 143, 'B', 'Disputas étnico-raciais de povos tradicionais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (713, 143, 'C', 'Divergências político-ideológicas de agentes estatais.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (714, 143, 'D', 'Imposição econômico-financeira de empresas privadas', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (715, 143, 'E', 'Protestos ecológico-sustentáveis de entidades ambientais', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (144, 'Questão 63 - ENEM 2023', 63, 2023, 'ciencias-humanas', NULL, 'Seda, madeiras aromáticas e têxteis, obras de arte, lã, cristais e muitas, muitas peças de porcelana chegaram ao Brasil ao longo dos séculos XVII e XVIII. A opulência proporcionada pelo ouro fez com que esses itens fossem ainda mais presentes em cidades mineiras como Ouro Preto, Mariana e Sabará. Esses objetos inspiraram a criação das chinesices, termo que designa um tipo de arte que evoca motivos chineses, presentes em várias igrejas barrocas de Minas Gerais. No Brasil, é bem provável que a inspiração para as pinturas nas igrejas barrocas com pássaros, elefantes, tigres, mandarins e pagodes tenha sido tirada de gravuras, tecidos, móveis e, principalmente, das porcelanas chinesas que circulavam livremente em uma sociedade enriquecida pelo comércio do ouro e pedras preciosas.

MARIUZZO, P. **Estudos interdisciplinares ampliam conhecimento sobre chinesice no barroco mineiro**. Disponível em: http://cienciaecultura.bvs.br. Acesso em: 23 nov. 2021 (adaptado).', 'O desenvolvimento do processo artístico descrito no texto foi possível pelo(a)', 'B', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (716, 144, 'A', 'Representação arquitetônica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (717, 144, 'B', 'Intercâmbio transcontinental.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (718, 144, 'C', 'Dependência econômica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (719, 144, 'D', 'Intervenção estatal.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (720, 144, 'E', 'Padrão estético.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (145, 'Questão 64 - ENEM 2023', 64, 2023, 'ciencias-humanas', NULL, '**Txai Suruí, liderança da Juventude Indígena, profere seu discurso na abertura da COP-26**

“O clima está esquentando, os animais estão desaparecendo, os rios estão morrendo e nossas plantações não florescem como no passado. A Terra está falando: ela nos diz que não temos mais tempo.”

VICK, M. **Quais são as conquistas do movimento indígena na COP-26**. Disponível em: www.nexojornal.com.br. Acesso em: 10 nov. 2021 (adaptado).', 'O discurso da líder indígena explicita um problema global relacionado ao(à)', 'D', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (721, 145, 'A', 'Manejo tradicional.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (722, 145, 'B', 'Reciclagem residual.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (723, 145, 'C', 'Consumo consciente.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (724, 145, 'D', 'Exploração predatória.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (725, 145, 'E', 'Reaproveitamento energético.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (146, 'Questão 65 - ENEM 2023', 65, 2023, 'ciencias-humanas', NULL, '![](https://enem.dev/broken-image.svg)

Nas reportagens publicadas sobre a inauguração de Museu de Arte de São Paulo, em 1947, quando ele ainda ocupava um edifício na rua Sete de Abril, Lina Bo Bardi não foi mencionada nenhuma vez. A arquiteta era responsável pelo projeto do museu que mudaria para sempre a posição de São Paulo no circuito mundial das artes. Mas não houve nenhum registro disso. O louvor se concentrou em seu marido e parceiro profissional, o respeitado crítico de arte Pietro Maria Bardi. Passados 75 anos, a mulher então ignorada recebeu um Leão de Ouro póstumo, a maior homenagem da Bienal de Arquitetura de Veneza, e tem agora sua história contada em duas biografias de peso, que procuram destrinchar uma carreira marcada pela ousadia e pela contradição.

PORTO, W. L**ina Bo Bardi tem sua arquitetura contraditória destrinchada em biografias**. Disponível em: www1.folha.uol.com.br. Acesso em: 10 nov. 2021 (adaptado).', 'As transformações pelas quais passaram as sociedades ocidentais e que possibilitaram o reconhecimento recente do trabalho da arquiteta mencionada no texto foram resultado das mobilizações sociais pela', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (726, 146, 'A', 'Equidade de genêro.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (727, 146, 'B', 'Liberdade de expressão.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (728, 146, 'C', 'Admissibilidade de voto.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (729, 146, 'D', 'Igualdade de oportunidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (730, 146, 'E', 'Reciprocidade de tratamento.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (147, 'Questão 66 - ENEM 2023', 66, 2023, 'ciencias-humanas', NULL, '**ТЕХТО I**

Como é horrível ver um filho comer e perguntar: “Tem mais?” Esta palavra “tem mais” fica oscilando dentro do cérebro de uma mãe que olha as panela e não tem mais.

JESUS, C. M. Quarto de despejo: diário de uma favelada. São Paulo: Ática. 2014.

**ТЕХТО ІІ**

A experiência de ver os filhos com fome na década de 1950, descrita por Carolina, é vivida no Brasil de 2021 por uma moradora de Petrolândia, em Pernambuco. “Eu trabalhava de ajudante de cabeleireira, mas a moça que tinha o salão fechou. Eu vinha me sustentando com o auxílio que tinha, mas agora eu não fui contemplada. Às vezes as pessoas me ajudam com alimentos para os meus filhos. De vez em quando, eu acho algum bico para fazer, mas é muito raro. Tem dias que não tenho nem o leite da minha bebê.”

CARRANÇA, T. “Até o feijão nos esqueceu”: o livro de 1960 que poderia ter sido escritonas favelas de 2021.

Disponível em: www.bbc.com. Acesso em: 6 out. 2021 (adaptado).', 'Considerando a realidade brasileira, os textos se aproximam ao apresentarem uma reflexão sobre o(a)', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (731, 147, 'A', 'Recorrência da miséria.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (732, 147, 'B', 'Planejamento da saúde.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (733, 147, 'C', 'Superação da escassez.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (734, 147, 'D', 'Constância da economia.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (735, 147, 'E', 'Romantização da carência.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (148, 'Questão 67 - ENEM 2023', 67, 2023, 'ciencias-humanas', NULL, NULL, 'No sul da Bahia, desde o século XVIII, tem-se registros de um tipo de sistema agroflorestal. Até hoje, esse sistema é característica marcante da paisagem da região, conhecido como cabruca, que consiste no cultivo do cacau à sombra do dossel da floresta nativa. Esse sistema de cultivo do cacau (graças à tolerância da espécie à sombra) é considerado amigável para a vida silvestre, pois apresenta superioridade em termos de conservação da biodiversidade quando comparado com outras plantações tropicais (monoculturas de dendê, seringa ou café), agricultura ou pastagens.
SOLLBERG, I.; SCHIAVETTI, A. MORAES M. E. B. Manejo agrícola no Refúgio de Vida Silvestre de Una: agroflorestas como uma perspectiva de conservação. Revista Árvore. n. 2, 2014 (adaptado)
A prática produtiva apresentada é um exemplo de', 'B', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (736, 148, 'A', 'Difusão comercial de lavouras temporárias.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (737, 148, 'B', 'Utilização sustentável dos recursos naturais.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (738, 148, 'C', 'Ampliação tecnológica da pecuária intensiva.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (739, 148, 'D', 'Padronização alimentar dos povos tradicionais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (740, 148, 'E', 'Modernização logística de plantios convencionais.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (149, 'Questão 68 - ENEM 2023', 68, 2023, 'ciencias-humanas', NULL, NULL, 'O masseiro, a mulher, e quatro filhos, dormindo numa tapera de quatro paredes de caixão, coberta de zinco. A água do mangue, na maré cheia, ia dentro de casa. Os maruins de noite encalombavam o corpo dos meninos. O mangue tinha ocasião que fedia, e os urubus faziam ponto por ali atrás dos petiscos. Perto da rua lavavam couro de boi, pele de bode para o curtume de um espanhol. Morria peixe envenenado e quando a maré secava os urubus enchiam o papo, ciscavam a lama, passeando banzeiros pelas biqueiras dos mocambos no Recife.
RÊGO. J. L. O moleque Ricardo. Rio de Janeiro. J. Olympio, 1966 (adaptado).
A aglomeração urbana representada no texto resulta em', 'C', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (741, 149, 'A', 'Conservação do meio rural.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (742, 149, 'B', 'Crescimento da vegetação ciliar.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (743, 149, 'C', 'Interferência do espaço geográfico.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (744, 149, 'D', 'Equilíbrio do ambiente das cidades.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (745, 149, 'E', 'Controle da proliferação dos animais.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (150, 'Questão 69 - ENEM 2023', 69, 2023, 'ciencias-humanas', NULL, 'Elas foram as pioneiras dos direitos das mulheres no Afeganistão. Defensoras ferrenhas da lei, buscaram justiça para os mais marginalizados. Mas, agora, mais de 220 juízas afegãs estão escondidas por medo de retaliação sob o regime do Talibã. Uma delas condenou centenas de homens por violência contra as mulheres, incluindo estupro, assassinato e tortura. Mas poucos dias depois que o Talibã assumiu o controle de sua cidade e milhares de criminosos condenados foram libertados da prisão, as ameaças de morte começaram. O país sempre foi considerado um dos lugares mais difíceis e perigosos do mundo para as mulheres. De acordo com estudos de organizações não governamentais, cerca de 87% das mulheres e meninas serão vítimas de abuso durante a vida.

Disponível em: https://g1.globo.com. Acesso em: 12 out. 2021 (adaptado).', 'O texto evidencia situação representativa de', 'D', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (746, 150, 'A', 'Afronta às estruturas sociais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (747, 150, 'B', 'Desprezo aos valores religiosos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (748, 150, 'C', 'Transgressão às normas morais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (749, 150, 'D', 'Desrespeito à dignidade humana.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (750, 150, 'E', 'Oposição aos princípios hierárquicos.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (151, 'Questão 7 - ENEM 2023', 7, 2023, 'linguagens', NULL, '**Mais iluminada que outras**

Tenho dois seios, estas duas coxas, duas mãos que me são muito úteis, olhos escuros, estas duas sobrancelhas que preencho com maquiagem comprada por dezenove e noventa e orelhas que não aceitam bijuterias. Este corpo é um corpo faminto, dentado, cruel, capaz e violento. Movo os braços e multidões correm desesperadas. Caminho no escuro com o rosto para baixo, pois cada parte isolada de mim tem sua própria vida e não quero domá-las. Animal da caatinga. Forte demais. Engolidora de espadas e espinhos. Dizem e eu ouvi, mas depois também li, que o estado do Ceará aboliu a escravidão quatro anos antes do restante do país. Todos aqueles corpos que eram trazidos com  
seus dedos contados, seus calcanhares prontos e seus umbigos em fogo, todos eles foram interrompidos no porto. Um homem – dizem e eu ouvi e depois também li — liderou o levante. E todos esses corpos foram buscar outros incômodos. Foram ser incomodados.

ARRAES. J. Redemoinho em dia quente. São Paulo: Alfaguara, 2019.', 'Nesse texto, os recursos expressivos usados pela narradora', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (751, 151, 'A', 'Revelam as marcas da violência de raça e de gênero na construção da identidade.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (752, 151, 'B', 'Questionam o pioneirismo do estado do Ceará no enfrentamento à escravidão.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (753, 151, 'C', 'Reproduzem padrões estéticos em busca da valorização da autoestima feminina.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (754, 151, 'D', 'Sugerem uma atmosfera onírica alinhada ao desejo de resgate da espiritualidade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (755, 151, 'E', 'Mimetizam, na paisagem, os corpos transformados pela violência da escravidão.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (152, 'Questão 70 - ENEM 2023', 70, 2023, 'ciencias-humanas', NULL, 'No cemitério, a sociedade religiosa encarregada do funeral, aterrorizada, apressou a cerimônia de tal forma que a mãe de Herzog perdeu o momento em que o caixão do filho começou a ser coberto pela terra. Quatro jornalistas que estavam presos no DOI chegaram para assistir ao sepultamento. Um se afastara, chorando. Dizia: Eles matam, eles matam! Não pergunte nada. Não podemos dizer nada. Eles matam mesmo. Falava-se baixo. Ouviram-se dois curtos discursos. O primeiro, da atriz Ruth Escobar: Até quando vamos suportar tanta violência? Até quando vamos continuar enterrando nossos mortos em silêncio? No segundo, Audálio Dantas recitou o Navio negreiro, de Castro Alves: _Senhor Deus dos desgraçados / Dizei-me Vós, Senhor Deus / Se é mentira, se é verdade, / Tanto horror perante os céus._

GASPARI, E. A ditadura encurralada. São Paulo: Cia. das Letras, 2004.', 'O acontecimento descrito no texto, ocorrido em meados dos anos 1970, atesta a seguinte característica do regime político-institucional vigente:', 'C', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (756, 152, 'A', 'Incorporação da estética popular para justificar o ideal de integração nacional.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (757, 152, 'B', 'Afirmação da estratégia psicossocial para favorecer o objetivo de propaganda cívica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (758, 152, 'C', 'Institucionalização de mecanismos repressivos para eliminar os focos de resistência.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (759, 152, 'D', 'Adoção de cerimoniais públicos para controlar as manifestações de grupos opositores.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (760, 152, 'E', 'Estatização de meios de comunicação para selecionar a divulgação de atos governamentais.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (153, 'Questão 71 - ENEM 2023', 71, 2023, 'ciencias-humanas', NULL, 'Alternativas logísticas estão servindo de instrumentos que ativam os mercados especuladores de terras nas diferentes regiões da Amazônia e constituem em indicadores utilizados por diferentes atores para defender ou denunciar o avanço da cultura da soja na região e, com ela, a retomada do desmatamento. É evidente que o crescimento do desmatamento tem a ver também com a expansão da soja, porém atribuir a ela o fator principal parece não totalmente correto. Parto da compreensão central de que a lógica que gera o desmatamento está articulada pelo tripé grileiros, madeireiros e pecuaristas.

OLIVEIRA, A. U. A Amazônia e a nova geografia da produção da soja. **Terra Livre**, n. 26, jan.-jun. 2006 (adaptado).', 'Na visão do autor, o problema central da situação descrita é desencadeado pela', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (761, 153, 'A', 'Apropriação de áreas devolutas.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (762, 153, 'B', 'Sonegação de impostos federais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (763, 153, 'C', 'Incorporação de exportação ilegal.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (764, 153, 'D', 'Desoneração de setores produtivos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (765, 153, 'E', 'Flexibilização de legislação ambiental.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (154, 'Questão 72 - ENEM 2023', 72, 2023, 'ciencias-humanas', NULL, '**TEXTO I**

Por hora, apenas os mais abastados poderão sonhar em viajar ao espaço, seja por um foguete ou por um avião híbrido, mas toda a população global poderá sentir os efeitos dessas viagens e avanços tecnológicos. Para uma aventura dessas, as empresas tiveram que criar novas tecnologias, materiais e softwares, o que podem, em algum momento, voltar para a sociedade. A câmera fotográfica, hoje comum no mundo, antes foi uma invenção para ser usada em telescópios e o titânio, usado até na medicina, foi desenvolvido para a construção de foguetes.

ORLANDO, G. **Corrida espacial dos bilionários pode trazer vantagens para todos**. Disponível em: https://noticias.r7.com/. Acesso em: 5 nov. 2021 (adaptado).

**TEXTO II**

![](https://enem.dev/2023/questions/72/19b09a90-8898-4d03-b11a-eedae69b1e1d.png)

CAZO. Disponível em: www.humorpolitico.com.br. Acesso em: 5 nov. 2021.', 'Os textos apresentam perspectivas da nova corrida espacial que revelam, respectivamente:', 'B', ARRAY['https://enem.dev/2023/questions/72/19b09a90-8898-4d03-b11a-eedae69b1e1d.png'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (766, 154, 'A', 'Dependência e progresso.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (767, 154, 'B', 'Expectativa e desconfiança.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (768, 154, 'C', 'Angústia e adaptação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (769, 154, 'D', 'Pioneirismo e retrocesso.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (770, 154, 'E', 'Receio e civilidade.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (155, 'Questão 73 - ENEM 2023', 73, 2023, 'ciencias-humanas', NULL, 'Os séculos XV e XVI, quando se vão desmoronando as estruturas socioeconômicas da Idade Média perante os novos imperativos da Época moderna, constituem um momento-chave na história florestal de toda a Europa Ocidental. Abre-se, genericamente, um longo período de “crise florestal”, que se manifesta com acuidade nos países onde mais se desenvolvem as atividades industriais e comerciais. As necessidades em produtos lenhosos aumentam drasticamente com o crescimento do consumo nos mercados urbanos e nas regiões onde progridem a metalurgia e a construção naval, além da sua utilização na vida quotidiana de toda a população.

DEVY-VARETA, N. Para uma geografia histórica da floresta portuguesa. **Revista da Faculdade de Letras – Geografia,** n. 1, 1986 (adaptado).', 'Qual acontecimento do período contribuiu diretamente para o agravamento da situação descrita?', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (771, 155, 'A', 'O processo de expansão marítima.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (772, 155, 'B', 'A eclosão do renascimento cultural.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (773, 155, 'C', 'A concretização da centralização política.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (774, 155, 'D', 'O movimento de reformas religiosas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (775, 155, 'E', 'A manutenção do sistema feudal.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (156, 'Questão 74 - ENEM 2023', 74, 2023, 'ciencias-humanas', NULL, 'Tahuantinsuyu — nome do Império Inca em quéchua — era dividido em quatro partes ou suyus: Chinchaysuyu (noroeste do Peru e Equador), Antisuyu (parte amazônica do império), Collasuyu (atual Bolívia) e Condesuyu (costa do Oceano Pacífico) e tinha Cuzco, no atual Peru, como sua capital imperial. Oficialmente, todas as etnias dominadas pelos incas deveriam adotar a língua quéchua, adorar o Sapa Inca e o Sol e pagar taxas em forma de horas de trabalhos periódicos. No entanto, pode-se dizer que o Império Inca era como um mosaico cultural em que vários e diferentes grupos étnicos adoravam o Sapa Inca e o Sol mas, simultaneamente, continuavam a adorar seus deuses locais e também a falar em suas línguas nativas.

MARTINS, C. **Os incas e os tahuantinsuyu**: apresentação. Disponível em: http://antigo.anphlac.org. Acesso em: 6 out. 2021 (adaptado).', 'Ao comparar, no texto, a vertente da dominação territorial com os aspectos culturais, os incas tinham uma postura', 'D', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (776, 156, 'A', 'Aceitável no que alude aos direitos humanos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (777, 156, 'B', 'Admissível no que remete às crenças coloniais.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (778, 156, 'C', 'Tolerável no que se refere aos regimes tributários.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (779, 156, 'D', 'Flexível no que diz respeito aos costumes religiosos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (780, 156, 'E', 'Compreensível no que concerne às normas laborais.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (157, 'Questão 75 - ENEM 2023', 75, 2023, 'ciencias-humanas', NULL, 'A torcida do Fluminense inicia um movimento para mudar a letra de uma das músicas mais populares das arquibancadas tricolores. Grupos pedem a remoção do termo “mulambo imundo”, em uma provocação direta ao Flamengo. Mulambo é um termo que surgiu em Angola, na época da escravatura, e eles eram chamados de mulambos pelos senhores de engenho, os patrões das fazendas.

Disponível em: https://oglobo.globo.com. Acesso em: 23 nov. 2021.', 'Qual mudança no comportamento social a proposta reportada no texto reflete?', 'C', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (781, 157, 'A', 'A Rejeição de costumes elitistas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (782, 157, 'B', 'Repulsão de condutas misóginas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (783, 157, 'C', 'Condenação do preconceito racial.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (784, 157, 'D', 'Criminalização de práticas homofóbicas', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (785, 157, 'E', 'Contestação do comportamento machista.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (158, 'Questão 76 - ENEM 2023', 76, 2023, 'ciencias-humanas', NULL, '![](https://enem.dev/2023/questions/76/4b3eb253-249e-4bc3-bb08-5d48b44c53c1.jpg)

Disponível em: www.insper.edu.br. Acesso em: 27 set. 2021 (adaptado).', 'Qual fator foi determinante para a mudança do indicador apresentado no gráfico?', 'D', ARRAY['https://enem.dev/2023/questions/76/4b3eb253-249e-4bc3-bb08-5d48b44c53c1.jpg'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (786, 158, 'A', 'Flexibilização legal da prática de aborto.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (787, 158, 'B', 'Envelhecimento da população brasileira.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (788, 158, 'C', 'Crescimento dos casos de gravidez precoce.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (789, 158, 'D', 'Participação feminina no mercado de trabalho.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (790, 158, 'E', 'Diminuição dos benefícios na licença-maternidade.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (159, 'Questão 77 - ENEM 2023', 77, 2023, 'ciencias-humanas', NULL, NULL, 'Havia já muito tempo que a Europa desfrutava os benefícios da vacina e arrancava à morte milhares de inocentes, condenados a serem vítimas do terrível flagelo das bexigas, e o governo de Portugal nunca se lembrara de transmitir ao Brasil a mais útil das descobertas humanas, quando aliás nenhum país mais do que ele carecia deste salutar invento ou se atendesse às vantagens da população ou ao perdimento de imensas somas na mortandade contínua de escravos, que este flagelo devorava. O certo é que mais ocupado de seu ouro que de seus habitantes, Portugal, como em outros muitos casos, esperou que o Brasil por seu próprio impulso remediasse a este mal.
PEREIRA, J. C. 12 jan. 1828 apud LOPES, M. B.; POLITO, R. Para uma história da vacina no Brasil: um manuscrito inédito de Norberto e Macedo. História, Ciências, Saúde – Manguinhos, n. 2, abr. -jun. 2007 (adaptado).
Escrito em 1828, o texto expressa a seguinte ideia de origem iluminista:', 'E', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (791, 159, 'A', 'As leis observáveis regem o mundo material.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (792, 159, 'B', 'O monarca racional promove a sociedade justa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (793, 159, 'C', 'O direito natural justifica a liberdade dos homens.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (794, 159, 'D', 'A produção da terra garante a riqueza das nações.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (795, 159, 'E', 'A responsabilidade dos governantes assegura a saúde dos povos.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (160, 'Questão 78 - ENEM 2023', 78, 2023, 'ciencias-humanas', NULL, 'Os movimentos da agricultura urbana no Rio de Janeiro vêm crescendo nos últimos vinte anos, tanto por meio de reproduções de modelos de vida antigos, vinculados ao resgate dos próprios costumes, como — e cada vez mais — são revelados hábitos inventivos nos quais moradores urbanos de diferentes classes sociais, sem nenhuma referência anterior com o campo, passam a se dedicar a essas atividades. Ao possibilitar o acesso ao plantio e, consequentemente, à alimentação, permite-se uma nova relação com o que se come, reduzindo o percurso da cadeia produtiva e aproximando produtores de consumidores, pois ambos se confundem nas experiências de agricultura urbana.

PORTILHO, M.; RODRIGUES, C. G. O.; FERNANDEZ, A. C. F. Cultivando relações no arranjo local da Penha: a mobilização de mulheres a partir das práticas de agricultura urbana na favela. Cidades, Comunidades e Territórios, n. 42, jun. 2021.', 'A prática agrícola destacada no texto apresenta como vantagem no espaço urbano a', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (796, 160, 'A', 'Ocupação de lugares ociosos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (797, 160, 'B', 'Densificação da área central.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (798, 160, 'C', 'Valorização do mercado externo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (799, 160, 'D', 'Priorização de insumos químicos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (800, 160, 'E', 'Mecanização de técnicas de cultivo.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (161, 'Questão 79 - ENEM 2023', 79, 2023, 'ciencias-humanas', NULL, '**TEXTO I**

Gerineldo dorme porque já está conformado com o seu mundo. Porque já sabe tudo o que lhe pode acontecer após haver submetido todos os objetos que o rodeiam a um minucioso inventário de possibilidades. Seu apartamento, mais que um apartamento, é uma teoria de sorte e de azar. Melhor que ninguém, Gerineldo conhece o coeficiente da dilatação de suas janelas e mantém marcado no termômetro, com uma linha vermelha, o ponto em que se quebrarão os vidros, despedaçados em estilhaços de morte. Sabe que os arquitetos e os engenheiros já previram tudo, menos o que nunca já aconteceu.

MARQUEZ, G. G. O pessimista. In: Textos do Caribe. Rio de Janeiro: Record, 1981.

**ТЕХТО II**

A situação é o sujeito inteiro (ele não é nada a não ser a sua situação) e é também a coisa inteira (nunca há mais nada senão as coisas). É o sujeito a elucidar as coisas pela sua própria superação, se assim quisermos; ou são as coisas a reenviar ao sujeito a imagem dele. É a total facticidade, a contingência absoluta do mundo, do meu nascimento, do meu lugar, do meu passado, dos meus redores — e é a minha liberdade sem limites que faz com que haja para mim uma facticidade.

SARTRE, J.-P. O ser e o nada: ensaio de ontologia fenomenológica. Petrópolis: Vozes, 1997 (adaptado).', 'A postura determinista adotada pelo personagem Gerineldo contrasta com a ideia existencialista contida no pensamento filosófico de Sartre porque', 'B', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (801, 161, 'A', 'Evidencia a manifestação do inconsciente.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (802, 161, 'B', 'Nega a possibilidade de transcendência.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (803, 161, 'C', 'Contraria o conhecimento difuso.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (804, 161, 'D', 'Sustenta a fugacidade da vida.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (805, 161, 'E', 'Refuta a evolução biológica.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (162, 'Questão 8 - ENEM 2023', 8, 2023, 'linguagens', NULL, '**De quem é esta língua?**

Uma pequena editora brasileira, a Urutau, acaba de lançar em Lisboa uma “antologia antirracista de poetas estrangeiros em Portugal”, com o título Volta para a tua terra.

O livro denuncia as diversas formas de racismo a que os imigrantes estão sujeitos. Alguns dos poetas brasileiros antologiados queixam-se do desdém com que um grande número de portugueses acolhe o português brasileiro. É uma queixa frequente.

“Aqui em Portugal eles dizem / — eles dizem – / que nosso português é errado, que nós não falamos português”, escreve a poetisa paulista Maria Giulia Pinheiro, para concluir: “Se a sua linguagem, a lusitana, / ainda conserva a palavra da opressão / ela não é a mais bonita do mundo./ Ela é uma das mais violentas”.

AGUALUSA, J. E. Disponível em: https.iloglobo.globo.com Acesso em: 22 nov. 2021 (adaptado).', 'O texto de Agualusa tematiza o preconceito em relação ao português brasileiro. Com base no trecho citado pelo autor, infere-se que esse preconceito se deve', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (806, 162, 'A', 'À dificuldade de consolidação da literatura brasileira em outros países.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (807, 162, 'B', 'Aos diferentes graus de instrução formal entre os falantes de língua portuguesa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (808, 162, 'C', 'À existência de uma língua ideal que alguns falantes lusitanos creem ser a falada em Portugal.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (809, 162, 'D', 'Ao intercâmbio cultural que ocorre entre os povos dos diferentes países de língua portuguesa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (810, 162, 'E', 'À distância territorial entre os falantes do português que vivem em Portugal e no Brasil.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (163, 'Questão 80 - ENEM 2023', 80, 2023, 'ciencias-humanas', NULL, 'O Golpe Militar de 1964 foi implacável no combate ao que restava das Ligas Camponesas, generalizadas na década anterior. No entanto, em relação aos sindicatos, sua atitude foi ambígua. Por meio de acordos com os Estados Unidos, foram concebidos centros sindicais e cursos de liderança com base em princípios conservadores e ministrados por membros da Igreja Católica.

DEL PRIORE, M.; VENÂNCIO, R. Uma história da vida rural no Brasil. Rio de Janeiro: Ediouro, 2006 (adaptado).', 'Os sindicatos rurais foram tratados da forma descrita no texto porque o governo pretendia utiliza-los para', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (811, 163, 'A', 'Controlar as tensões políticas.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (812, 163, 'B', 'Limitar a legislação trabalhista.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (813, 163, 'C', 'Divulgar o programa populista.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (814, 163, 'D', 'Regularizar a propriedade da terra.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (815, 163, 'E', 'Estimular a oferta de mão de obra.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (164, 'Questão 81 - ENEM 2023', 81, 2023, 'linguagens', NULL, NULL, 'A economia das ilegalidades se reestruturou com o desenvolvimento da sociedade capitalista. A ilegalidade dos bens foi separada da ilegalidade dos direitos. Divisão que corresponde a uma oposição de classes, pois, de um lado, a ilegalidade mais acessível às classes populares será a dos bens — transferência violenta das propriedades; de outro, à burguesia, então, se reservará a ilegalidade dos direitos: a possibilidade de desviar seus próprios regulamentos e suas próprias leis; e essa grande redistribuição das ilegalidades se traduzirá até por uma especialização dos circuitos judiciários; para as ilegalidades de bens — para o roubo — os tribunais ordinários e os castigos; para as ilegalidades de direitos — fraudes, evasões fiscais, operações comerciais irregulares — jurisdições especiais com transações, acomodações, multas atenuadas etc.
 FOUCAULT, M. Vigiar e punir: nascimento da prisão. Petropolis: Vozes, 1987 
O texto apresenta uma relação de cálculo politico-econômico que caracteriza o poder punitivo por meio da • gestão das ilicitudes pelo sistema judicial. aplicação das sanções pelo modelo equânime. supressão dos crimes pela penalização severa. regulamentação dos privilégios pela justiça social. repartição de vantagens pela hierarquização cultural', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (816, 164, 'A', 'Gestão das ilicitudes pelo sistema judicial.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (817, 164, 'B', 'Aplicação das sanções pelo modelo equânime.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (818, 164, 'C', 'Supressão dos crimes pela penalização severa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (819, 164, 'D', 'Regulamentação dos privilégios pela justiça social.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (820, 164, 'E', 'Repartição de vantagens pela hierarquização cultural.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (165, 'Questão 82 - ENEM 2023', 82, 2023, 'ciencias-humanas', NULL, 'Os vapores cruzavam os mares transportando pessoas, mercadorias e ideias, e ainda carregavam a mala postal, repleta de mensagens. Múltiplas histórias escritas atravessavam o oceano buscando por notícias de filhos e pais, irmãos, maridos e esposas, noivos e noivas. As missivas traziam boas e más novas, comunicavam alegremente nascimentos e casamentos, também doenças e mortes; enviavam declarações de amor e fidelidade, fotos de família; encaminhavam conselhos de velhos, pedidos de ajuda e de dinheiro; expediam cartas bancárias e de chamada. Essa literatura epistolar possibilitava a transmissão e reconstrução das tradições. Os deslocamentos tornaram-se um dos mais potentes produtores de escritura ao longo da história.

TRUZZI, O.; MATOS, I. Saudades: sensibilidades no epistolário de e/imigrantes  
portuqueses (Portugal-Brasil 1890-1930). Rev. Bras. Hist., n. 70, jul.-dez. 2015.', 'Conforme o texto, as correspondências trocadas entre imigrantes no Brasil com os seus países de procedência constituíam um dispositivo tecnológico que possibilitava o(a)', 'B', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (821, 165, 'A', 'Disputa ideológica entre a comunidade de estrangeiros e a de nativos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (822, 165, 'B', 'Circularidade cultural entre a sociedade de partida e a de acolhimento.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (823, 165, 'C', 'Controle doutrinário das narrativas do cotidiano de origem e de destino..', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (824, 165, 'D', 'Fiscalização política dos fluxos de populações do Novo e do Velho Mundo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (825, 165, 'E', 'Monitoramento social dos grupos de trabalhadores da cidade e do campo.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (166, 'Questão 83 - ENEM 2023', 83, 2023, 'ciencias-humanas', NULL, 'Diversos são os fatores causadores da degradação do solo, atuando de forma direta ou indireta, mas quase sempre a grande maioria das terras degradadas inicia esse processo com o desmatamento, que pode ser seguido por diversas formas de ocupação desordenada, como: corte de taludes para a construção de casas, rodovias e ferrovias, agricultura, com uso da queimada, vários tipos de mineração, irrigação excessiva, crescimento desordenado das cidades, superpastoreio, uso do solo para diversos tipos de despejos industriais e domésticos, sem tratamento da área que recebe esses despejos; enfim, de uma forma ou de outra, os solos tornam-se degradados, sendo muitas vezes difícil, ou quase impossível, a sua recuperação.

GUERRA, A. T. Degradação dos solos: conceitos e temas. In: GUERRA, A. T.; JORGE, M. C. O. (Org.). **Degradação dos solos no Brasil**. Rio de Janeiro: Difel, 2018.', 'A partir da ocupação desordenada exporta no texto, o que impede a recuperação do recurso natural destacado é a', 'C', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (826, 166, 'A', 'Elevação da biomassa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (827, 166, 'B', 'Redução da salinização.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (828, 166, 'C', 'Diminuição da fertilidade.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (829, 166, 'D', 'Ampliação da microfauna.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (830, 166, 'E', 'Decomposição do substrato.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (167, 'Questão 84 - ENEM 2023', 84, 2023, 'ciencias-humanas', NULL, 'A partir da década de 1930, começam a ser discutidos no Brasil os princípios de racionalização do trabalho. As preocupações com a cozinha e o trabalho doméstico foram introduzidas com a medicina sanitária e a oferta de gás e eletricidade para uso doméstico no início do século XX. A organização da cozinha visava atingir uma simplificação das tarefas, com a economia de movimentos, e o barateamento dos equipamentos, a partir da produção em grande escala. A padronização e racionalização da habitação e seus componentes visava uma radical transformação da casa, em especial da cozinha, e apoiava-se tanto no desenvolvimento de novos equipamentos quanto nos estudos de racionalização do trabalho doméstico. A principal preocupação era o desenvolvimento de um novo tipo de habitação, que deveria induzir um novo comportamento social.

SILVA, J. L. M. Transformações no espaço doméstico: o fogão a gás e a cozinha paulistana, 1870-1930. Anais do Museu Paulista, n. 2. jul-dez 2007 (adaptado).', 'No contexto descrito, as mudanças mencionadas proporcionavam às mulheres o(a)', 'D', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (831, 167, 'A', 'Controle do orçamento familiar.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (832, 167, 'B', 'Libertação das tradições religiosas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (833, 167, 'C', 'Exercício da representatividade política.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (834, 167, 'D', 'Ampliação dos momentos de socialização.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (835, 167, 'E', 'Afastamento das atividades especializadas.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (168, 'Questão 85 - ENEM 2023', 85, 2023, 'ciencias-humanas', NULL, 'Produtores rurais europeus são antigos opositores de um grande acordo com o Mercosul. Na visão deles, existe um nítido risco de concorrência desleal, pois, na Europa, é preciso seguir regras mais rígidas de produção, o que encarece o processo. Assim, eles não conseguiriam competir com os preços, por exemplo, da carne brasileira e teriam seus negócios ameaçados. Por outro lado, o setor industrial europeu se mobiliza a favor do acordo, uma vez que as reduções de tarifas no comércio internacional dariam maior acesso ao mercado sul-americano. Um exemplo é o setor automotivo europeu, que prevê maior participação e concorrência nos países do Mercosul caso o acordo siga em frente.

ROUBICEK, M. Como o risco ambiental afeta o acordo entre Mercosul e União Europeia.  
Disponível em: www.nexojornal.com.br. Acesso em: 25 out. 2021.', 'No contexto do acordo citado, os dois grupos econômicos europeus defendem, respectivamente, a', 'D', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (836, 168, 'A', 'Restrição dos fluxos migratórios e a maior atuação de sindicatos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (837, 168, 'B', 'Ampliação das leis trabalhistas e a plena importação de manufaturados.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (838, 168, 'C', 'Proteção das florestas nacionais e a ampla transferência de tecnologias.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (839, 168, 'D', 'Manutenção das barreiras fitossanitárias e a livre circulação de mercadorias.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (840, 168, 'E', 'Remoção dos entraves alfandegários e a melhor remuneração de empregados.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (169, 'Questão 86 - ENEM 2023', 86, 2023, 'ciencias-humanas', NULL, 'Durante a Revolução Francesa, um certo padre Niollant escondeu-se no pequeno castelo de L’Escarbas. Pagou amplamente a hospitalidade do velho fidalgo ocupando-se da educação de sua filha, Anaïs. A presença da mãe em nada modificou essa educação masculina dada a uma jovem criatura já muito inclinada à independência em virtude da vida no campo. O padre transmitiu à aluna sua intrepidez de opiniões e sua facilidade de julgamento, sem pensar que essas qualidades, tão necessárias num homem, se tornam defeitos numa mulher destinada aos humildes afazeres de mãe de família. Embora o padre recomendasse continuamente à aluna ser tanto mais graciosa e modesta quanto seu saber era mais extenso, a senhorita de Nègrepelisse ficou com excelente opinião de si mesma.

BALZAC. H. Ilusões perdidas. São Paulo: Penguin Classics:  
Cia. das Letras, 2011 (adaptado).', 'O comportamento desenvolvido pela personagem evidencia uma postura de', 'E', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (841, 169, 'A', 'Abandono de laços afetivos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (842, 169, 'B', 'Negação da ideia de subjetividade.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (843, 169, 'C', 'Aceitação da hierarquia de gênero.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (844, 169, 'D', 'Consolidação da estratificação social.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (845, 169, 'E', 'Ruptura de valores institucionalizados.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (170, 'Questão 87 - ENEM 2023', 87, 2023, 'ciencias-humanas', NULL, '**TEXTO I**

Oriunda da Romênia, Genny Gleizer aportou no Brasil em 1932. Assim como milhares de judeus do Leste Europeu, sua vinda para o Brasil ocorreu em um momento de ascensão do antissemitismo na Europa que tornava precárias suas vidas. O Brasil se colocava como uma possibilidade na busca por condições de sobrevivência e desenvolvimento.

ANTÃO, A. C. C. B. Gênero, imigração e política: o caso da judia comunista Genny Gleizer no Governo Vargas (1932-1935). Rio de Janeiro: Casa de Oswaldo Cruz, 2017 (adaptado).

**ТЕХТО II**

A presença judaica no Brasil foi criando aos poucos certas desconfianças que se refletiram em órgãos da imprensa e em círculos intelectuais e políticos. Em parte, essa imagem negativa adviria da onda nacionalista surgida no final dos anos 1910, que concebia imigrantes como concorrentes dos trabalhadores brasileiros, ou como seres improdutivos, exploradores da mão de obra e da riqueza autóctone. Além disso, as elites políticas da época acreditavam que os estrangeiros eram portadores das doutrinas anarquista e comunista, estranhas à “indole do povo brasileiro”. Esses “indesejáveis” seriam um mal externo que corromperia a nação.

MAIO, M. C.: CALAÇA, C. E. Um balanço da bibliografia sobre o antissemitismo  
no Brasil. In: GRINBERG, K. (Org.). Os judeus no Brasil. Rio de Janeiro: Civilização Brasileira, 2005 (adaptado).', 'Conforme descrito nos textos, o tratamento dispensado aos grupos mencionados se fundamentava em', 'B', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (846, 170, 'A', 'Preceitos teológicos e religiosos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (847, 170, 'B', 'Aspectos socioeconômicos e ideológicos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (848, 170, 'C', 'Regulamentações territoriais e alfandegárias.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (849, 170, 'D', 'Orientações constitucionais e estatutárias.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (850, 170, 'E', 'Decretos legislativos e internacionais.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (171, 'Questão 88 - ENEM 2023', 88, 2023, 'ciencias-humanas', NULL, 'Concorrer e competir não são a mesma coisa. A concorrência pode até ser saudável sempre que a batalha entre agentes, para melhor empreender uma tarefa e obter melhores resultados finais, exige o respeito a certas regras de convivência preestabelecidas ou não. Já a competitividade se funda na invenção de novas armas de luta, num exercício em que a única regra é a conquista da melhor posição. A competitividade é uma espécie de guerra em que tudo vale e, desse modo, sua prática provoca um afrouxamento dos valores morais e um convite ao exercício de violência.

SANTOS, M. **Por uma outra globalização**: do pensamento único à consciência universal. Rio de Janeiro: Record, 2006.', 'De acordo com a diferenciação feita pelo autor, que prática econômica é considerada moralmente condenável?', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (851, 171, 'A', 'Adoção do dumping comercial.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (852, 171, 'B', 'Fusão da função administrativa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (853, 171, 'C', 'Criação de holding empresarial.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (854, 171, 'D', 'Limitação do mercado monopolista.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (855, 171, 'E', 'Modernização da produção industrial.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (172, 'Questão 89 - ENEM 2023', 89, 2023, 'ciencias-humanas', NULL, '![](https://enem.dev/2023/questions/89/9bf9cf75-4df7-495a-8f99-bb6bac2abe2e.PNG)', 'Qual medida é capaz de minimizar as mudanças apresentadas nas simulações?', 'D', ARRAY['https://enem.dev/2023/questions/89/9bf9cf75-4df7-495a-8f99-bb6bac2abe2e.PNG'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (856, 172, 'A', 'Expandir o transporte marítimo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (857, 172, 'B', 'Incentivar os fluxos migratórios.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (858, 172, 'C', 'Monitorar as atividades vulcânicas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (859, 172, 'D', 'Controlar as emissões de carbono.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (860, 172, 'E', 'Priorizar a utilização de termoelétricas.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (173, 'Questão 9 - ENEM 2023', 9, 2023, 'linguagens', NULL, 'Na Idade Média, as notícias se propagavam com surpreendente eficácia. Segundo uma emérita professora de Sorbonne, um cavalo era capaz de percorrer 30 quilômetros por dia, mas o tempo podia se acelerar dependendo do interesse da notícia. As ordens mendicantes tinham um papel importante na disseminação de informações, assim como os jograis, os peregrinos e os vagabundos, porque todos eles percorriam grandes distâncias. As cidades também tinham correios organizados e selos para lacrar mensagens e tentar certificar a veracidade das correspondências. Graças a tudo isso, a circulação de boatos era intensa e politicamente relevante. Um exemplo clássico de _fake news_ da era medieval é a história do rei que desaparece na batalha e reaparece muito depois, idoso e transformado.

Disponível em: www.elpais.com.br. Acesso em: 18 jun. 2018 (adaptado)', 'A propagação sistemática de informações é um fenômeno recorrente na história e no desenvolvimento das sociedades. No texto, a eficácia dessa propagação está diretamente relacionada ao (à)', 'E', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (861, 173, 'A', 'Velocidade de circulação das notícias.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (862, 173, 'B', 'Nível de letramento da população marginalizada.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (863, 173, 'C', 'Poder de censura por parte dos serviços públicos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (864, 173, 'D', 'Legitimidade da voz dos representantes da nobreza.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (865, 173, 'E', 'Diversidade dos meios disponíveis em uma época histórica.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (174, 'Questão 90 - ENEM 2023', 90, 2023, 'ciencias-humanas', NULL, NULL, 'Não tinha outra filosofia. Nem eu. Não digo que a Universidade me não tivesse ensinado alguma; mas eu decorei-lhe só as fórmulas, o vocabulário, o esqueleto. Tratei-a como tratei o latim; embolsei três versos de Virgílio, dois de Horácio, uma dúzia de locuções morais e políticas, para as despesas da conversação. Tratei-os como tratei a história e a jurisprudência. Colhi de todas as cousas a fraseologia, a casca, a ornamentação.
ASSIS, M. Memórias póstumas do Brás Cubas. Belo Horizonte: Autêntica. 1999.
A descrição crítica do personagem de Machado de Assis assemelha-se às características dos sofistas, contestados pelos filósofos gregos da Antiguidade, porque se mostra alinhada à', 'B', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (866, 174, 'A', 'Elaboração conceitual de entendimentos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (867, 174, 'B', 'Utilização persuasiva do discurso.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (868, 174, 'C', 'Narração alegórica dos rapsodos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (869, 174, 'D', 'Investigação empírica da physis.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (870, 174, 'E', 'Expressão pictográfica da pólis.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (175, 'Questão 91 - ENEM 2023', 91, 2023, 'ciencias-natureza', NULL, 'O número de abelhas encontra-se em declínio em várias regiões do mundo, inclusive no Brasil, sendo que vários fatores contribuem para o colapso de suas colmeias. Nos Estados Unidos, bombas de sementes de espécies vegetais nativas têm sido utilizadas para combater o desaparecimento desses insetos. Elas são pequenas bolinhas recheadas com sementes, adubo e argila. Quando são arremessadas e ficam expostas ao sol e à chuva, germinam até mesmo em solo pouco fértil.

DARAYA, V. Disponível em: http://planetasustentavel.abril.com.br.  
Acesso em: 2 fev. 2015 (adaptado).', 'Esse método contribui para a preservação das abelhas porque', 'D', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (871, 175, 'A', 'Reduz sua predação', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (872, 175, 'B', 'Reduz o uso de pesticidas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (873, 175, 'C', 'Reduz a competição por abrigo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (874, 175, 'D', 'Aumenta a oferta de alimento', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (875, 175, 'E', 'Aumenta os locais de reprodução', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (176, 'Questão 92 - ENEM 2023', 92, 2023, 'ciencias-natureza', NULL, 'Os mais antigos cozinhavam o feijão na panela de ferro a fim de acabar com a palidez de seus filhos. Alguns chegavam até a colocar um prego enferrujado nesse cozimento para liberar o ferro contido nele. Sabe-se que esse elemento pode ser encontrado na sua forma metálica ou iônica, sendo essencial para a manutenção da vida humana.', 'As estratégias citadas eram utilizadas com o objetivo de', 'B', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (876, 176, 'A', 'Tratar a diarreia.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (877, 176, 'B', 'Prevenir a anemia.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (878, 176, 'C', 'Evitar as verminoses.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (879, 176, 'D', 'Remediar o raquitismo', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (880, 176, 'E', 'Combater a febre amarela.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (177, 'Questão 93 - ENEM 2023', 93, 2023, 'ciencias-humanas', NULL, NULL, 'A utilização de tecnologia nuclear é um tema bastante controverso, por causa do risco de acidentes graves, como aqueles ocorridos em Chernobyl (1986), em Goiânia (1987) e em Fukushima (2011). Apesar de muitas desvantagens, como a geração de resíduos tóxicos, a descontaminação ambiental dispendiosa em caso de acidentes e a utilização em armas nucleares, a geração de energia nuclear apresenta vantagens em comparação a outras fontes de energia.
A geração dessa energia tem como característica:', 'E', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (881, 177, 'A', 'Formar resíduos facilmente recicláveis.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (882, 177, 'B', 'Promover o aumento do desmatamento.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (883, 177, 'C', 'Contribuir para a produção de chuva ácida.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (884, 177, 'D', 'Emitir gases tóxicos que são lançados no ambiente.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (885, 177, 'E', 'Produzir calor sem o consumo de combustíveis fósseis.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (178, 'Questão 94 - ENEM 2023', 94, 2023, 'ciencias-humanas', NULL, 'Em uma indústria, o controle da dureza da água é importante quando ela é utilizada em caldeiras, uma vez que sais pouco solúveis, formados a partir de sulfatos e carbonatos, podem acumular-se no interior das tubulações, causando obstruções. Para avaliar a água utilizada nessa indústria, foram realizados testes de qualidade que consideraram os seauintes parâmetros:

![](https://enem.dev/2023/questions/94/429989c0-d615-4e19-a5e6-838e81a6039c.png)', 'Qual teste deve ser considerado para controlar a formação desse tipo de obstrução de tubulações?', 'A', ARRAY['https://enem.dev/2023/questions/94/429989c0-d615-4e19-a5e6-838e81a6039c.png'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (886, 178, 'A', '1', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (887, 178, 'B', '2', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (888, 178, 'C', '3', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (889, 178, 'D', '4', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (890, 178, 'E', '5', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (179, 'Questão 95 - ENEM 2023', 95, 2023, 'ciencias-natureza', NULL, NULL, 'As aves apresentam dois tipos de músculos em seus corpos: vermelhos e brancos. Aves migratórias como garças, gansos e patos selvagens têm os músculos vermelhos bem desenvolvidos, com ampla rede de vasos sanguíneos.
Nas viagens por grandes distâncias, tais músculos são fundamentais, pois favorecem o(a)', 'B', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (891, 179, 'A', 'Execução de manobras.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (892, 179, 'B', 'Metabolismo corpóreo elevado.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (893, 179, 'C', 'Manutenção da aerodinâmica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (894, 179, 'D', 'Deslocamento a grandes velocidades.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (895, 179, 'E', 'Capacidade de voo em grandes altitudes.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (180, 'Questão 96 - ENEM 2023', 96, 2023, 'ciencias-humanas', NULL, NULL, 'Existe no comércio um produto antimofo constituído por uma embalagem com tampa perfurada contendo cloreto de cálcio anidro, CaCI,. Uma vez aberto o lacre, essa substância absorve a umidade ambiente, transformando-se em cloreto de cálcio di-hidratado, CaCI, 2H,0. Considere a massa molar da água igual a 18 g mol-1, e a massa molar do cloreto de cálcio anidro igual a 111 g mol-1.
Na hidratação da substância presente no antimofo, o ganho percentual, em massa, é mais próximo de', 'D', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (896, 180, 'A', '14%', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (897, 180, 'B', '16%', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (898, 180, 'C', '24%', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (899, 180, 'D', '32%', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (900, 180, 'E', '75%', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (181, 'Questão 97 - ENEM 2023', 97, 2023, 'ciencias-humanas', NULL, NULL, 'Um garoto comprou vários abacates na feira, mas descobriu que eles não estavam maduros o suficiente para serem consumidos. Sua mãe recomendou que ele colocasse os abacates em um recipiente fechado, pois isso aceleraria seu amadurecimento. Com certa dúvida, o garoto realizou esta experiência: colocou alguns abacates no recipiente e deixou os demais em uma fruteira aberta. Surpreendendo-se, ele percebeu que os frutos que estavam no recipiente fechado amadureceram mais rapidamente.
A aceleração desse processo é causada por', 'A', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (901, 181, 'A', 'Acúmulo de gás etileno.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (902, 181, 'B', 'Redução da umidade do ar.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (903, 181, 'C', 'Aumento na concentração de CO2.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (904, 181, 'D', 'Diminuição da intensidade luminosa.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (905, 181, 'E', 'Isolamento do contato com O2 atmosférico.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (182, 'Questão 98 - ENEM 2023', 98, 2023, 'ciencias-humanas', NULL, 'Há muito tempo são conhecidas espécies de lesmas-do-mar com uma capacidade impar: guardar parte da maquinaria das células das algas que consomem — os cloroplastos — e mantê-los funcionais dentro das suas próprias células, obtendo assim parte do seu alimento. Investigadores portugueses descobriram que essas lesmas-do-mar podem ser mais eficientes nesse processo do que as próprias algas que consomem.

Disponível em: www.cienciahoje.pt. Acesso em: 10 fev. 2015 (adaptado).', 'Essa adaptação confere a esse organismo a capacidade de obter primariamente', 'B', NULL, 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (906, 182, 'A', 'Ácidos necleicos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (907, 182, 'B', 'Carboidratos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (908, 182, 'C', 'Proteínas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (909, 182, 'D', 'Vitaminas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (910, 182, 'E', 'Lipídios.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (183, 'Questão 99 - ENEM 2023', 99, 2023, 'ciencias-natureza', NULL, NULL, 'A leishmaniose visceral é uma zoonose causada por um protozoário do gênero Leishmania que é encontrado em diversos tecidos. Ela é transmitida ao homem de forma indireta, por vetores do ambiente doméstico. O cão é considerado um importante hospedeiro desse protozoário, podendo ou não apresentar os sintomas da doença, como perda de peso, anemia, ferimentos na pele, diarreia, conjuntivite e insuficiência renal. Em uma região que sofre com alta incidência dessa doença, uma campanha do centro de zoonoses buscou verificar a presença desse protozoário nos cães para tentar controlar a doença.', 'D', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (911, 183, 'A', 'Urina.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (912, 183, 'B', 'Saliva.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (913, 183, 'C', 'Fezes.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (914, 183, 'D', 'Sangue.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (915, 183, 'E', 'Secreção ocular.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (184, 'Questão 1 - ENEM 2022', 1, 2022, 'linguagens', 'espanhol', '![](https://enem.dev/2022/questions/1-espanhol/b8e76f18-f22d-4401-bf90-fd34c74e07e5.jpg)

Disponível em: www.inali.gob.mx. Acesso em: 2 dez. 2018.', 'Esse cartaz tem a função social de', 'E', ARRAY['https://enem.dev/2022/questions/1-espanhol/b8e76f18-f22d-4401-bf90-fd34c74e07e5.jpg'], 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (916, 184, 'A', 'Difundi a arte iconográfica indígena mexicana.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (917, 184, 'B', 'Resgatar a literatura popular produzida em língua zapoteca.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (918, 184, 'C', 'Questionar o conhecimento do povo mexicano sobre as línguas ameríndias', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (919, 184, 'D', 'Destacar o papel dos órgãos governamentais na conservação das línguas no México.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (920, 184, 'E', 'Defender a preservação das línguas originárias garantindo a diversidade linguística mexicana.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (185, 'Questão 1 - ENEM 2022', 1, 2022, 'linguagens', 'ingles', 'As my official bio reads, I was made in Cuba, assembled in Spain, and imported to the United States – meaning my mother, seven months pregnant, and the rest of my family arrived as exiles from Cuba to Madrid, where I was born. Less than two months later, we emigrated once more and settled in New York City, then eventually in Miami, where I was raised and educated. Although technically we lived in the United States, the Cuban community was culturally insular in Miami during the 1970s, bonded together by the trauma of exile. What’s more, it seemed that practically everyone was Cuban: my teachers, my classmates, the mechanic, the bus driver. I didn’t grow up feeling different or treated as a minority. The few kids who got picked on in my grade school were the ones with freckles and funny last names like Dawson and O’Neil.

BLANCO, R. Disponível em: http://edition.cnn.com. Acesso em: 9 dez. 2017 (adaptado).', 'Ao relatar suas vivências, o autor destaca o(a)', 'D', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (921, 185, 'A', 'Qualidade da educação formal em Miami.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (922, 185, 'B', 'Prestígio da cultura cubana nos Estados Unidos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (923, 185, 'C', 'Oportunidade de qualificação profissional em Miami.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (924, 185, 'D', 'Cenário da integração de cubanos nos Estados Unidos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (925, 185, 'E', 'Fortalecimento do elo familiar em comunidades estadunidenenses.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (186, 'Questão 10 - ENEM 2022', 10, 2022, 'linguagens', NULL, 'Ciente de que, no campo da criação, as inovações tecnológicas abrem amplo leque de possibilidades – ao permitir, e mesmo estimular, que o artista explore a fundo, em seu processo criativo, questões como a aleatoriedade, o acaso, a não linearidade e a hipermídia –, Leo Cunha comenta que, no que tange ao campo da divulgação, as alternativas são ainda mais evidentes: “Afinal, é imensa a capacidade de reprodução, multiplicação e compartilhamento das obras artísticas/culturais. Ao mesmo tempo, ganham dimensão os dilemas envolvidos com a questão da autoria, dos direitos autorais, da reprodução e intervenção não autorizadas, entre outras questões”. Já segundo a professora Yacy-Ara Froner, o uso de ferramentas tecnológicas não pode ser visto como um fim em si mesmo. Isso porque computadores, samplers, programas de imersão, internet e intranet, vídeo, televisão, rádio, GPD etc. são apenas suportes com os quais os artistas exercem sua imaginação.

SILVA JR., M. G. Movidas pela dúvida. **Minas faz Ciências**, n. 52, dez-fev. 2013 (adaptado).', 'Segundo os autores citados no texto, a expansão de possibilidades no campo das manifestações artísticas promovida pela internet pode pôr em risco o(a)', 'C', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (926, 186, 'A', 'Sucesso dos artistas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (927, 186, 'B', 'Valorização dos suportes.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (928, 186, 'C', 'Proteção da produção estética.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (929, 186, 'D', 'Modo de distribuição de obras.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (930, 186, 'E', 'Compartilhamento das obras artísticas.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (187, 'Questão 100 - ENEM 2022', 100, 2022, 'ciencias-natureza', NULL, 'Em um dia de calor intenso, dois colegas estão a brincar com a água da mangueira. Um deles quer saber até que altura o jato de água alcança, a partir da saída de água, quando a mangueira está posicionada totalmente na direção vertical. O outro colega propõe então o seguinte experimento: eles posicionarem a saída de água da mangueira na direção horizontal, a 1 m de altura em relação ao chão, e então medirem a distância horizontal entre a mangueira e o local onde a água atinge o chão. A medida dessa distância foi de 3 m, e a partir disso eles calcularam o alcance vertical do jato de água. Considere a aceleração da gravidade de 10 m ![](https://enem.dev/2022/questions/100/109f2a39-f073-4841-9cec-bed51e1c1f12.png)', 'O resultado que eles obtiveram foi de', 'B', ARRAY['https://enem.dev/2022/questions/100/109f2a39-f073-4841-9cec-bed51e1c1f12.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (931, 187, 'A', '1,50 m.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (932, 187, 'B', '2,25 m.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (933, 187, 'C', '4,00 m.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (934, 187, 'D', '4,50 m.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (935, 187, 'E', '5,00 m.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (188, 'Questão 101 - ENEM 2022', 101, 2022, 'ciencias-natureza', NULL, 'O etanol é um combustível produzido a partir da fermentação da sacarose presente no caldo de cana-de-açúcar. Um dos fatores que afeta a produção desse álcool é o grau de deterioração da sacarose, que se inicia após o corte, por causa da ação de microrganismos. Foram analisadas cinco amostras de diferentes tipos de cana-de-açúcar e cada uma recebeu um código de identificação.

No quadro são apresentados os dados de concentração de sacarose e de microrganismos presentes nessas amostras.

![](https://enem.dev/2022/questions/101/afa4fc86-8d89-4713-a690-8306324d23ed.png)

Pretende-se escolher o tipo de cana-de-açúcar que conterá o maior teor de sacarose 10 horas após o corte e que, consequentemente, produzirá a maior quantidade de etanol por fermentação. Considere que existe uma redução de aproximadamente 50% da concentração de sacarose nesse tempo, para cada 1,0 mg ![](https://enem.dev/2022/questions/101/d492e2a3-b988-4c38-802d-20d5f73c3b72.png) de microrganismos presentes na cana-de-açúcar.

Disponível em: www.inovacao.unicamp.br. Acesso em: 11 ago. 2012 (adaptado).', 'Qual tipo de cana-de-açúcar deve ser escolhido?', 'C', ARRAY['https://enem.dev/2022/questions/101/afa4fc86-8d89-4713-a690-8306324d23ed.png','https://enem.dev/2022/questions/101/d492e2a3-b988-4c38-802d-20d5f73c3b72.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (936, 188, 'A', 'RB72', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (937, 188, 'B', 'RB84', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (938, 188, 'C', 'RB92', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (939, 188, 'D', 'SP79', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (940, 188, 'E', 'SP80', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (189, 'Questão 102 - ENEM 2022', 102, 2022, 'ciencias-natureza', NULL, 'Entre as diversas técnicas para diagnóstico da covid-19, destaca-se o teste genético. Considerando as diferentes variantes e cargas virais, um exemplo é a PCR, reação efetuada por uma enzima do tipo polimerase. Essa técnica permite identificar, com confiabilidade, o material genético do SARS-CoV-2, um vírus de RNA.  
Para comprovação da infecção por esse coronavírus, são coletadas amostras de secreções do indivíduo. Uma etapa que antecede a reação de PCR precisa ser realizada para permitir a amplificação do material genético do vírus.', 'Essa etapa deve ser realizada para', 'E', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (941, 189, 'A', 'Concentrar o RNA viral para otimizar a técnica.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (942, 189, 'B', 'Identificar nas amostras anticorpos anti-SARS-CoV-2.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (943, 189, 'C', 'Proliferar o vírus em culturas, aumentando a carga viral.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (944, 189, 'D', 'Purificar ácidos nucleicos virais, facilitando a ação da enzima.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (945, 189, 'E', 'Obter moléculas de cDNAviral por meio da transcrição reversa.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (190, 'Questão 103 - ENEM 2022', 103, 2022, 'ciencias-natureza', NULL, 'Tribologia é o estudo da interação entre duas superfícies em contato, como desgaste e atrito, sendo de extrema importância na avaliação de diferentes  
produtos e de bens de consumo em geral. Para testar a conformidade de uma muleta, realiza-se um ensaio tribológico, pressionando-a verticalmente contra o piso com uma força ![](https://enem.dev/2022/questions/103/731a52b0-b8d4-4a15-8a7c-aabc67d6dcde.jpg), conforme ilustra a imagem, em que CM representa o centro de massa da muleta.

Mantendo-se a força ![](https://enem.dev/2022/questions/103/04cf32d8-f517-483e-b0d5-189de111bc7a.jpg) paralela à muleta, varia-se lentamente o ângulo entre a muleta e a vertical, até o máximo ângulo imediatamente anterior ao de escorregamento, denominado ângulo crítico. Esse ângulo também pode ser calculado a partir da identificação dos pontos de aplicação, da direção e do sentido das forças peso ![](https://enem.dev/2022/questions/103/9027d4f1-c0a1-4b18-ac9f-2639e6b4360b.jpg), normal ![](https://enem.dev/2022/questions/103/e11f6a77-dda3-4525-a045-894baf71d307.jpg) e de atrito estático ![](https://enem.dev/2022/questions/103/d65b67dc-a285-43d4-a72b-a9c1b521c3b5.jpg).

![](https://enem.dev/2022/questions/103/7cfea492-83f7-4ea1-bf6a-a3dc29d4edb9.jpg)', 'O esquema que representa corretamente todas as forças que atuam sobre a muleta quando ela atinge o ângulo crítico é:', 'E', ARRAY['https://enem.dev/2022/questions/103/731a52b0-b8d4-4a15-8a7c-aabc67d6dcde.jpg','https://enem.dev/2022/questions/103/04cf32d8-f517-483e-b0d5-189de111bc7a.jpg','https://enem.dev/2022/questions/103/9027d4f1-c0a1-4b18-ac9f-2639e6b4360b.jpg','https://enem.dev/2022/questions/103/e11f6a77-dda3-4525-a045-894baf71d307.jpg','https://enem.dev/2022/questions/103/d65b67dc-a285-43d4-a72b-a9c1b521c3b5.jpg','https://enem.dev/2022/questions/103/7cfea492-83f7-4ea1-bf6a-a3dc29d4edb9.jpg'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (946, 190, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (947, 190, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (948, 190, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (949, 190, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (950, 190, 'E', NULL, NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (191, 'Questão 104 - ENEM 2022', 104, 2022, 'ciencias-natureza', NULL, 'Diversas substâncias são empregadas com a intenção de incrementar o desempenho esportivo de atletas de alto nível. O chamado _doping_ sanguíneo, por exemplo, pela utilização da eritropoietina, é proibido pelas principais federações de esportes no mundo. A eritropoietina é um hormônio produzido pelos rins e fígado e sua principal ação é regular o processo de eritropoiese. Seu uso administrado intravenosamente em quantidades superiores àquelas presentes naturalmente no organismo permite que o indivíduo aumente a sua capacidade de realização de exercícios físicos.', 'Esse tipo de doping está diretamente relacionado ao aumento da', 'E', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (951, 191, 'A', 'Frequência cardíaca.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (952, 191, 'B', 'Capacidade pulmonar.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (953, 191, 'C', 'Massa muscular do indivíduo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (954, 191, 'D', 'Atividade anaeróbica da musculatura.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (955, 191, 'E', 'Taxa de transporte de oxigênio pelo sangue.', NULL, TRUE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (192, 'Questão 105 - ENEM 2022', 105, 2022, 'ciencias-natureza', NULL, 'Em um autódromo, os carros podem derrapar em uma curva e bater na parede de proteção. Para diminuir o impacto de uma batida, pode-se colocar na parede uma barreira de pneus, isso faz com que a colisão seja mais demorada e o carro retorne com velocidade reduzida. Outra opção é colocar uma barreira de blocos de um material que se deforma, tornando-a tão demorada quanto a colisão com os pneus, mas que não permite a volta do carro após a colisão.', 'Comparando as duas situações, como ficam a força média exercida sobre o carro e a energia mecânica dissipada?', 'A', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (956, 192, 'A', 'A força é maior na colisão com a barreira de pneus, e a energia dissipada é maior na colisão com a barreira de blocos.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (957, 192, 'B', 'A força é maior na colisão com a barreira de blocos, e a energia dissipada é maior na colisão com a barreira de pneus.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (958, 192, 'C', 'A força é maior na colisão com a barreira de blocos, e a energia dissipada é a mesma nas duas situações.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (959, 192, 'D', 'A força é maior na colisão com a barreira de pneus, e a energia dissipada é maior na colisão com a barreira de pneus.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (960, 192, 'E', 'A força é maior na colisão com a barreira de blocos, e a energia dissipada é maior na colisão com a barreira de blocos.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (193, 'Questão 106 - ENEM 2022', 106, 2022, 'ciencias-natureza', NULL, 'A penicilamina é um medicamento de uso oral utilizado no tratamento de várias doenças. Esse composto é excretado na urina, cujo pH se situa entre 5 e 7. A penicilamina, cuja fórmula estrutural plana está apresentada, possui três grupos funcionais que podem ser ionizados:

![](https://enem.dev/2022/questions/106/836c6396-bd57-477b-b379-b509c4b99242.png)', 'Qual estrutura derivada da penicilamina é predominantemente encontrada na urina?', 'C', ARRAY['https://enem.dev/2022/questions/106/836c6396-bd57-477b-b379-b509c4b99242.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (961, 193, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (962, 193, 'B', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (963, 193, 'C', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (964, 193, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (965, 193, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (194, 'Questão 107 - ENEM 2022', 107, 2022, 'ciencias-natureza', NULL, 'A biomassa celulósica pode ser utilizada para a produção de etanol de segunda geração. Entretanto, é necessário que os polissacarídeos sejam convertidos em mono e dissacarídeos, processo que pode ser conduzido em meio ácido, conforme mostra o esquema:

![](https://enem.dev/2022/questions/107/d19f3bc6-e4ed-4f93-9a0b-55f98ab20380.jpg)

OGEDA, T. L.; PETRI, D. F. S. \\[…\\] **Química Nova**, n. 7, 2010 (adaptado).', 'Nessa conversão de polissacarídeos, a função do íon H+ é', 'C', ARRAY['https://enem.dev/2022/questions/107/d19f3bc6-e4ed-4f93-9a0b-55f98ab20380.jpg'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (966, 194, 'A', 'Dissolver os reagentes.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (967, 194, 'B', 'Deslocar o equilíbrio químico.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (968, 194, 'C', 'Aumentar a velocidade da reação.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (969, 194, 'D', 'Mudar a constante de equilíbrio da reação.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (970, 194, 'E', 'Formar ligações de hidrogênio com o polissacarídeo.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (195, 'Questão 108 - ENEM 2022', 108, 2022, 'ciencias-humanas', NULL, 'O ácido tartárico é o principal ácido do vinho e está diretamente relacionado com sua qualidade. Na avaliação de um vinho branco em produção, uma analista neutralizou uma alíquota de 25,0 mL do vinho com NaOH a 0,10 mol L−1, consumindo um volume igual a 8,0 mL dessa base. A reação para esse processo de titulação é representada pela equação química:

![](https://enem.dev/2022/questions/108/9210b1e4-7666-4817-9757-f1642ea64a91.jpg)', 'A concentração de ácido tartárico no vinho analisado é mais próxima de:', 'B', ARRAY['https://enem.dev/2022/questions/108/9210b1e4-7666-4817-9757-f1642ea64a91.jpg'], 'ciencias-humanas', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (971, 195, 'A', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (972, 195, 'B', NULL, NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (973, 195, 'C', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (974, 195, 'D', NULL, NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (975, 195, 'E', NULL, NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (196, 'Questão 109 - ENEM 2022', 109, 2022, 'ciencias-natureza', NULL, 'Oelementoiodo(I)temfunçãobiológicaeéacumulado  
na tireoide. Nos acidentes nucleares de Chernobyl e  
Fukushima, ocorreu a liberação para a atmosfera do  
radioisótopo 131I, responsável por enfermidades nas  
pessoas que foram expostas a ele. O decaimento de uma  
massa de 12 microgramas do isótopo 131I foi monitorado  
por 14 dias, conforme o quadro.

![](https://enem.dev/2022/questions/109/354aeb9d-9351-404a-b131-174ac378eaaf.png)', 'Após o período de 40 dias, a massa residual desse
isótopo é mais próxima de', 'D', ARRAY['https://enem.dev/2022/questions/109/354aeb9d-9351-404a-b131-174ac378eaaf.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (976, 196, 'A', '2,4 µg.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (977, 196, 'B', '1,5 µg.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (978, 196, 'C', '0,8 µg.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (979, 196, 'D', '0,4 µg.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (980, 196, 'E', '0,2 µg.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (197, 'Questão 11 - ENEM 2022', 11, 2022, 'linguagens', NULL, 'Ora, sempre que surge uma nova técnica, ela quer demonstrar que revogará as regras e coerções que presidiram o nascimento de todas as outras invenções do passado. Ela se pretende orgulhosa e única. Como se a nova técnica carreasse com ela, automaticamente, para seus novos usuários, uma propensão natural a fazer economia de qualquer aprendizagem. Como se ela se preparasse para varrer tudo que a precedeu, ao mesmo tempo transformando em analfabetos todos os que ousassem repeli-la.

Fui testemunha dessa mudança ao longo de toda a minha vida. Ao passo que, na realidade, é o contrário que acontece. Cada nova técnica exige uma longa iniciação numa nova linguagem, ainda mais longa na medida em que nosso espírito é formatado pela utilização das linguagens que precederam o  nascimento da recém-chegada.

ECO, U.; CARRIÈRE, J.-C. **Não contem com o fim do livro**. Rio de Janeiro: Record, 2010 (adaptado).', 'O texto revela que, quando a sociedade promove o desenvolvimento de uma nova técnica, o que mais impacta seus usuários é a', 'A', NULL, 'linguagens', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (981, 197, 'A', 'Dificuldade na apropriação da nova linguagem.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (982, 197, 'B', 'Valorização da utilização da nova tecnologia.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (983, 197, 'C', 'Recorrência das mudanças tecnológicas.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (984, 197, 'D', 'Suplantação imediata dos conhecimentos prévios.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (985, 197, 'E', 'Rapidez no aprendizado do manuseio das novas invenções.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (198, 'Questão 110 - ENEM 2022', 110, 2022, 'ciencias-natureza', NULL, 'Desde a proposição da teoria de seleção natural  
por Darwin, os seres vivos nunca mais foram olhados  
da mesma forma. No que diz respeito à reprodução de  
anfíbios anuros, os cientistas já descreveram diferentes  
padrões reprodutivos, como os exemplificados a seguir:  
Espécie 1 – As fêmeas produzem cerca de  
5 000 gametas, que são fecundados na água, em  
lagoas temporárias de estação chuvosa. Todo o  
desenvolvimento embrionário, do ovo à metamorfose,  
ocorre, nesse ambiente, independente dos pais.  
Espécie 2 – As fêmeas produzem aproximadamente  
200 gametas, que são depositados em poças próximas a  
corpos-d’água. Os embriões são vigiados pelos machos  
durante boa parte do seu desenvolvimento.  
Espécie 3 – As fêmeas produzem por volta de  
20 gametas, que são fecundados sobre a superfície das  
folhas de plantas cujos galhos estão dispostos acima da  
superfície de corpos-d’água e aí se desenvolvem até  
a eclosão.  
Espécie 4 – As fêmeas produzem poucos gametas  
que, quando fecundados, são “abocanhados” pelos  
machos. Os embriões se desenvolvem no interior do  
saco vocal do macho até a metamorfose, quando saem  
através da boca do pai.', 'Os padrões descritos evidenciam que', 'D', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (986, 198, 'A', 'As fêmeas influenciam o comportamento dos machos.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (987, 198, 'B', 'O cuidado parental é necessário para o desenvolvimento', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (988, 198, 'C', 'O grau de evolução determina o comportamento reprodutivo.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (989, 198, 'D', 'O sucesso reprodutivo pode ser garantido por estratégias diferentes.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (990, 198, 'E', 'O ambiente induz modificação na produção do número de gametas femininos.', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (199, 'Questão 111 - ENEM 2022', 111, 2022, 'ciencias-natureza', NULL, 'O eixo de rotação da Terra apresenta uma inclinação  
em relação ao plano de sua órbita em torno do Sol,  
interferindo na duração do dia e da noite ao longo do ano.

![](https://enem.dev/2022/questions/111/12bd97ef-3334-4258-aec9-17981bd0b299.png)

Uma pessoa instala em sua residência uma placa  
fotovoltaica, que transforma energia solar em elétrica.  
Ela monitora a energia total produzida por essa placa  
em 4 dias do ano, ensolarados e sem nuvens, e lança os  
resultados no gráfico.

![](https://enem.dev/2022/questions/111/b90aa72c-e072-4867-955a-bb795396fd8e.png)

Disponível em: www.fisica.ufpr.br. Acesso em: 27 maio 2022 (adaptado)', 'Próximo a que região se situa a residência onde as placas
foram instaladas?', 'A', ARRAY['https://enem.dev/2022/questions/111/12bd97ef-3334-4258-aec9-17981bd0b299.png','https://enem.dev/2022/questions/111/b90aa72c-e072-4867-955a-bb795396fd8e.png'], 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (991, 199, 'A', 'Trópico de Capricórnio.', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (992, 199, 'B', 'Trópico de Câncer.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (993, 199, 'C', 'Polo Norte.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (994, 199, 'D', 'Polo Sul.', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (995, 199, 'E', 'Equador', NULL, FALSE);

INSERT INTO questions (id, title, index, year, subject, language, context, alternatives_introduction, correct_alternative, files, knowledge_area, area_code, created_at) VALUES (200, 'Questão 112 - ENEM 2022', 112, 2022, 'ciencias-natureza', NULL, 'Um pai faz um balanço utilizando dois segmentos paralelos e iguais da mesma corda para fixar uma tábua a uma barra horizontal. Por segurança, opta por um tipo de corda cuja tensão de ruptura seja 25% superior à tensão máxima calculada nas seguintes condições:

• O ângulo máximo atingido pelo balanço em relação  
à vertical é igual a 90°;

• Os filhos utilizarão o balanço até que tenham uma  
massa de 24 kg.

Além disso, ele aproxima o movimento do balanço para o movimento circular uniforme, considera que a aceleração da gravidade é igual a 10  m/s² se despreza forças dissipativas.', 'Qual é a tensão de ruptura da corda escolhida?', 'D', NULL, 'ciencias-natureza', NULL, NOW());
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (996, 200, 'A', '120 N', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (997, 200, 'B', '300 N', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (998, 200, 'C', '360 N', NULL, FALSE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (999, 200, 'D', '450 N', NULL, TRUE);
INSERT INTO alternatives (id, question_id, letter, text, file_path, is_correct) VALUES (1000, 200, 'E', '900 N', NULL, FALSE);


-- Foreign key constraints are automatically enforced by the database

-- Update sequences
SELECT setval('questions_id_seq', 201);
SELECT setval('alternatives_id_seq', 1001);


-- =========================================
-- Create Mock User for Testing
-- =========================================

INSERT INTO users (id, name, email, password, birth_date, created_at, streak_days, coins) VALUES (999, 'Usuario de Teste', 'teste@gmail.com', '$2a$10$N9qo8uLOickgx2ZMRZoMye/vYJK2lDxYhXGx7cgJ4s1N4Xm7kW9Qq', '2000-01-15', NOW(), 5, 100);

INSERT INTO study_streaks (id, user_id, consecutive_days, last_study_day, longest_streak, created_at, updated_at) VALUES (999, 999, 5, CURRENT_DATE, 10, NOW(), NOW());

INSERT INTO study_goals (id, user_id, title, description, start_date, end_date, daily_minutes, daily_questions, focus_subject, status, progress_percentage, created_at, updated_at) VALUES (1, 999, 'Preparacao ENEM 2024', 'Meta principal de estudos para o ENEM', CURRENT_DATE - INTERVAL '10 days', CURRENT_DATE + INTERVAL '20 days', 120, 20, 'matematica', 'ACTIVE', 33.33, NOW(), NOW()), (2, 999, 'Revisar Portugues', 'Foco em gramatica e interpretacao de texto', CURRENT_DATE - INTERVAL '5 days', CURRENT_DATE + INTERVAL '25 days', 60, 10, 'portugues', 'ACTIVE', 16.67, NOW(), NOW()), (3, 999, 'Meta Concluida', 'Exemplo de meta finalizada', CURRENT_DATE - INTERVAL '60 days', CURRENT_DATE - INTERVAL '30 days', 90, 15, 'ciencias-humanas', 'COMPLETED', 100.0, NOW() - INTERVAL '60 days', NOW() - INTERVAL '30 days');

SELECT setval('users_id_seq', 1000);
SELECT setval('study_streaks_id_seq', 1000);
SELECT setval('study_goals_id_seq', 100);



-- =========================================
-- MOCK USER FOR TESTING
-- Email: mock@estudai.com
-- Password: Teste@123
-- =========================================

INSERT INTO users (id, name, email, password, birth_date, coins, streak_days, created_at) 
VALUES (1001, 'Usuario Mock Teste', 'mock@estudai.com', '$2a$10$LAUpL/rVg0c0uQseRCz9IOAPZByVZNANeJCxkYbU7UzfBHA1ABli.', '2000-01-15', 0, 0, NOW());

-- Update sequence to avoid conflicts
SELECT setval('users_id_seq', 1001, true);
