/// @desc Draw the controls

scribble("[fa_center][fntHeader][wave][rainbow]Controls[/]").draw(room_width / 2, 128);
scribble(
	"[fa_center][fntScore][scale, 1.5]"
	+ "\"[pulse]Botão Esquerdo[/pulse] do mouse\" - Coloca os blocos na posição do mouse." + "\n"
	+ "\"[pulse]Botão Direito[/pulse] do mouse\" - Retira os blocos que estão na posição do mouse." + "\n"
	+ "\"Teclas [pulse]A[/pulse] & [pulse]D[/pulse] do teclado\" - Rotaciona os blocos antes de serem colocados." + "\n"
	+ "\"Teclas [pulse]W[/pulse] & [pulse]S[/pulse] do teclado\" - Troca o bloco que está sendo colocado." + "\n"
	+ "\"Tecla [pulse]L[/pulse] do teclado\" - Desativa os shaders (Filtros que deixam o jogo bonitinho)"
	+ "[/]"
).draw(room_width / 2, room_height / 2 - 128);

scribble("[fa_center][fntTutorial]Pressione [pulse]Esc[/pulse] para retornar ao menu.[/]").draw(room_width / 2, room_height - 32);

