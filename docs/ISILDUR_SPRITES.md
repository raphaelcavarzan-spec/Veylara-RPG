# Integração dos sprites de Isildur

## Fonte visual aprovada
A ficha aprovada enviada pela desenvolvedora deve ser preservada sem alterações em:
`assets/sprites/isildur/isildur_sheet.png`

Esse arquivo ainda precisa ser adicionado ao repositório. Não criar uma substituição genérica nem redesenhar os pixels.

## Antes da integração
- Confirmar que o arquivo está no caminho acima e mantém o canal alfa.
- Inspecionar as dimensões e a distribuição dos quadros.
- Definir recortes exatos para as poses frontais, traseiras e laterais visíveis na ficha.
- Evitar incluir a ilustração grande do personagem nos quadros usados para gameplay.
- Usar filtro nearest-neighbor e evitar suavização dos pixels.
- Configurar colisão na região dos pés/corpo, sem usar o contorno visual inteiro como colisão.
- Isildur é um espadachim. Não adicionar arco nem animações de arqueiro.
- Se não houver quadros suficientes para uma animação de caminhada específica, documentar a limitação e pedir aprovação antes de criar quadros novos.

## Critério de aceite
A integração só será considerada concluída depois de:
1. o sprite original ser carregado pelo projeto;
2. a cena abrir sem erros;
3. o movimento continuar funcionando nas quatro direções;
4. a orientação/pose corresponder à direção do movimento sem espelhamento incorreto;
5. colisões e ordenação de profundidade continuarem funcionando;
6. a desenvolvedora validar o resultado visual no Godot.

## Estado
**PENDENTE:** adicionar o arquivo PNG original ao repositório. A imagem está disponível na conversa, mas a integração GitHub atual não oferece uma operação direta para transferir este anexo binário do chat para o repositório. Não declarar os sprites integrados antes de disponibilizar o arquivo.
