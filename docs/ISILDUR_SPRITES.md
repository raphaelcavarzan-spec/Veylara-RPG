# Integração dos sprites de Isildur

## Fonte visual aprovada
Ficha original preservada em:
`assets/sprites/isildur/isildur_sheet.png`

A textura PNG tem **768 × 536 pixels**. A integração usa regiões da própria textura com `Sprite2D.region_enabled`; os pixels originais não foram redesenhados nem substituídos.

## Recortes direcionais atuais
As coordenadas abaixo foram ajustadas para a dimensão real da textura e precisam de validação visual no jogo:

- `SpriteFront`: região `Rect2(329, 17, 67.5, 123)`
- `SpriteBack`: região `Rect2(326, 145.5, 65, 119)`
- `SpriteLeft`: região `Rect2(328, 272.5, 65, 107)`
- `SpriteRight`: região `Rect2(514, 385.5, 67.5, 111)`
- Escala atual: `Vector2(1, 1)`

O script seleciona a pose conforme a direção do movimento e mantém a última direção quando o jogador para. Colisão e ordenação de profundidade foram preservadas. Isildur é um espadachim; nenhum arco foi adicionado.

## Limitações conhecidas
Esta é uma integração inicial de poses direcionais, não uma animação de caminhada concluída. Os recortes são estimativas e podem precisar de pequenos ajustes para evitar pixels de poses vizinhas ou margens transparentes. Não criar quadros novos nem afirmar que a animação está pronta sem aprovação.

## Critérios de aceite
1. A cena importa sem erros.
2. O sprite aparece corretamente, sem partes do retrato grande ou de outras poses.
3. A pose muda corretamente nas quatro direções.
4. Movimento, colisões e profundidade continuam funcionando.
5. A desenvolvedora valida a aparência final no Godot local.

## Estado
**Correção inicial de coordenadas registrada na ramificação `fix/isildur-sprite-regions`. A validação automatizada e a validação visual em execução ainda estão pendentes.**
