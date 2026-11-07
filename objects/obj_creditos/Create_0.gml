if(instance_exists(obj_alan)){
	with(obj_alan){instance_destroy();}}
creditos = [
    {texto: "Créditos", titulo: true},
    {texto: "", titulo: false},

    {texto: "Direção", titulo: true},
    {texto: "Diretor-geral:", titulo: false},
    {texto: "Rodrigo Makoto", titulo: false},
    {texto: "", titulo: false},
	
    {texto: "Todos os códigos e", titulo: false},
    {texto: "programação:", titulo: false},
    {texto: "Daniel Shoji", titulo: false},
    {texto: "", titulo: false},
	
    {texto: "Produção das sprites:", titulo: false},
    {texto: "Daniel Shoji", titulo: false},
    {texto: "Rodrigo Makoto", titulo: false},
    {texto: "Maysa Oliveira", titulo: false},
    {texto: "", titulo: false},

    {texto: "Coordenação das", titulo: false},
    {texto: "documentações:", titulo: false},
    {texto: "Thainá Bezerra", titulo: false},
    {texto: "", titulo: false},

    {texto: "Coordenação da", titulo: false},
    {texto: "produção do site:", titulo: false},
    {texto: "Maria Eduarda Oliveira", titulo: false},
    {texto: "", titulo: false},

	{texto: "Artes", titulo: true},
    {texto: "Cenários de", titulo: false},
    {texto: "Bletchley Park:", titulo: false},
    {texto: "Daniel Shoji", titulo: false},
    {texto: "", titulo: false},
    {texto: "Cenários Huts:", titulo: false},
    {texto: "Daniel Shoji", titulo: false},
    {texto: "Rodrigo Makoto", titulo: false},
    {texto: "", titulo: false},
    {texto: "Cenários de", titulo: false},
    {texto: "Mansão e Sala Final:", titulo: false},
    {texto: "Daniel Shoji", titulo: false},
    {texto: "Rodrigo Makoto", titulo: false},
    {texto: "", titulo: false},
    {texto: "Cenário do Quarto:", titulo: false},
    {texto: "Maysa Vieira", titulo: false},
    {texto: "", titulo: false},
    {texto: "Ampliações:", titulo: false},
    {texto: "Rodrigo Makoto", titulo: false},
	{texto: "Daniel Fujita", titulo: false},
    {texto: "", titulo: false},
    {texto: "Personagens:", titulo: false},
    {texto: "Maysa Vieira", titulo: false},
    {texto: "", titulo: false},

    {texto: "Mecânica", titulo: true},
    {texto: "Todos os Códigos:", titulo: false},
    {texto: "Daniel Shoji", titulo: false},
    {texto: "", titulo: false},
    {texto: "Teste de funcionamento", titulo: false},
    {texto: "do jogo:", titulo: false},
    {texto: "Daniel Shoji", titulo: false},
    {texto: "Rodrigo Makoto", titulo: false},
    {texto: "", titulo: false},

    {texto: "Documentação", titulo: true},
    {texto: "Documentação:", titulo: false},
    {texto: "Thainá Bezerra", titulo: false},
    {texto: "", titulo: false},
    {texto: "Ajuste de história e fases:", titulo: false},
    {texto: "Thainá Bezerra", titulo: false},
    {texto: "", titulo: false},
    {texto: "Registro do Planejamento:", titulo: false},
    {texto: "Thainá Bezerra", titulo: false},
    {texto: "", titulo: false},

    {texto: "Site", titulo: true},
    {texto: "Design Gráfico:", titulo: false},
    {texto: "Duda Oliveira", titulo: false},
    {texto: "Thainá Bezerra", titulo: false},
    {texto: "", titulo: false},
    {texto: "Código do site:", titulo: false},
    {texto: "Duda Oliveira", titulo: false},
    {texto: "Thainá Bezerra", titulo: false},
    {texto: "Rodrigo Makoto", titulo: false},
    {texto: "", titulo: false},
    {texto: "Organização do site:", titulo: false},
    {texto: "Thainá Bezerra", titulo: false},
    {texto: "Rodrigo Makoto", titulo: false},
    {texto: "", titulo: false},

    {texto: "Agradecimentos", titulo: true},
    {texto: "Agradecemos especialmente", titulo: false},
	{texto: "aos professores", titulo: false},
    {texto: "que lecionam as matérias", titulo: false},
    {texto: "para nós, dando-nos", titulo: false},
    {texto: "capacidade para", titulo: false},
	{texto: "realizar tal jogo.", titulo: false},
    {texto: "", titulo: false},

    {texto: "Agradecemos de forma especial:", titulo: false},
    {texto: "Ao Alan Turing, por ser", titulo: false},
	{texto: "pai de toda a computação", titulo: false},
    {texto: "moderna, junto com outros", titulo: false},
    {texto: "grandes nomes da computação.", titulo: false},
	{texto: "", titulo: false},
    {texto: "Ao GameMaker,", titulo: false},
	{texto: "por aguentar o tranco.", titulo: false},
	{texto: "", titulo: false},
    {texto: "À professora Cláudia Miyuki.", titulo: false},
	{texto: "", titulo: false},
    {texto: "À professora Ana Mamede.", titulo: false},
	{texto: "", titulo: false},
    {texto: "Ao professor Luk Cho Man.", titulo: false},
	{texto: "", titulo: false},
    {texto: "E a vocês que jogaram", titulo: false},
    {texto: "nosso jogo até aqui.", titulo: false}
];

creditos_y = 0;
creditos_velocidade = 1.4;
creditos_x = 80;
creditos_altura_total = 0;

for (var i = 0; i < array_length(creditos); i++) {
    creditos_altura_total += creditos[i].titulo ? 72 : 52;
}