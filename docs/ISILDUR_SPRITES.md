# Integração dos sprites de Isildur

## Fonte visual aprovada
Ficha original preservada em:
`assets/sprites/isildur/isildur_sheet.png`

A cena principal agora usa recortes da própria textura original por meio de `Sprite2D.region_enabled`; os pixels da ficha não foram redesenhados nem substituídos. Os recortes foram estimados a partir das poses visíveis na ficha de 1536 × 1024.

## Integração inicial realizada
- `SpriteFront`: região Rect2(658, 34, 135, 246)
- `SpriteBack`: região Rect2(652, 291, 130, 238)
- `SpriteLeft`: região Rect2(656, 545, 130, 214)
- `SpriteRight`: região Rect2(1028, 771, 135, 222)
- Escala inicial dos sprites: 0,5.
- O script escolhe a pose conforme a direção do movimento e mantém a última direção quando o jogador para.
- Colisão e ordenação de profundidade existentes foram preservadas.
- Isildur é um espadachim. Nenhum arco foi adicionado.

## Limitações conhecidas
Esta é uma integração inicial de poses direcionais, não uma animação de caminhada concluída. A ficha tem poses estáticas e de perfil, e os recortes ainda precisam de validação visual no Godot. Não criar quadros novos nem afirmar que a animação está pronta sem aprovação.

## Critério de aceite
1. A cena importa sem erros.
2. O sprite aparece corretamente e sem partes do retrato grande ou de outras poses.
3. A pose muda corretamente nas quatro direções.
4. Movimento, colisões e profundidade continuam funcionando.
5. A desenvolvedora valida a aparência no Godot local.

## Estado
**Integração inicial enviada ao GitHub; validação automatizada e visual pendentes.**
