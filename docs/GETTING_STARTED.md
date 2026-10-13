# Como abrir o protótipo Veylara

## Estado

Este é o esqueleto inicial do projeto, criado no repositório. Ainda não foi executado no computador de desenvolvimento; portanto, não considere o protótipo testado até abrir e rodar no Godot.

## Abrir no Godot

1. Baixe o repositório pelo botão **Code > Download ZIP** no GitHub e extraia o ZIP; ou clone o repositório com Git.
2. No Godot Project Manager, clique em **Importar**.
3. Selecione o arquivo `project.godot` dentro da pasta extraída.
4. Importe/abra o projeto e pressione **F6** para executar a cena atual ou **F5** para executar o projeto.

## Controles previstos

- WASD ou setas: movimentar o personagem temporário em quatro direções.
- A cena usa uma forma geométrica temporária; não representa o sprite final de Isildur.

Se os controles não funcionarem, abra **Projeto > Configurações do Projeto > Mapa de Entrada** e confirme os mapeamentos `move_up`, `move_down`, `move_left` e `move_right`. A configuração desses mapeamentos será adicionada ao projeto em uma próxima revisão.

## Próximas tarefas

- Definir os mapeamentos de entrada no próprio projeto.
- Criar limites/obstáculos com colisão e testá-los.
- Integrar os arquivos originais de Brumavale e Isildur.
- Substituir a forma temporária por animações direcionais aprovadas.
