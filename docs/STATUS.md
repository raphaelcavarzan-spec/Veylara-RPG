# Estado do projeto Veylara RPG

Última atualização: 2026-10-13

## Estado atual

- [x] Repositório GitHub criado.
- [x] Diretrizes técnicas e fluxo GitHub-first documentados.
- [x] Projeto Godot 4.x importado e executado localmente pela desenvolvedora (Godot 4.7.2 para Windows).
- [x] Protótipo com movimento em quatro direções validado manualmente pela desenvolvedora.
- [x] Colisões do protótipo validadas manualmente pela desenvolvedora.
- [x] Ordenação de profundidade validada manualmente pela desenvolvedora.
- [x] Cenário fixo/centralizado validado manualmente pela desenvolvedora.
- [ ] Integrar os sprites originais aprovados de Isildur.
- [ ] Configurar e executar validação automatizada no GitHub Actions.
- [ ] Construir o mapa explorável de Brumavale usando os recursos visuais aprovados.
- [ ] Implementar NPCs, diálogos e missões.

## Cânone e pendências

- A história começa em Brumavale antes da viagem para Valedouro.
- O jogo deve começar um dia antes dos fatos iniciais da campanha; data exata, acontecimentos e diálogos desse dia: **PENDENTE DE CONFIRMAÇÃO** com base no material canônico.
- A imagem aprovada de Brumavale é a referência visual inicial do mapa.
- A ficha fornecida de Isildur é a referência visual aprovada do protagonista.
- Isildur é um espadachim e não usa arco.
- Preservar o design aprovado; recortar e integrar os sprites existentes sem redesenhar o personagem. Quadros de animação ausentes ou ambíguos: **PENDENTE DE CONFIRMAÇÃO**.
- Não inventar conteúdo narrativo e apresentá-lo como canônico.

## Critério de validação

### Validado manualmente pela desenvolvedora
- Isildur/personagem de teste se move para norte, sul, leste e oeste.
- As colisões impedem atravessar o obstáculo de teste.
- A ordenação de profundidade funciona no objeto de teste.
- O cenário permanece fixo e centralizado.

### Ainda pendente
- Integração do sprite original de Isildur e verificação das animações direcionais.
- Testes automatizados em ambiente remoto.
- Teste completo do jogo sem erros relevantes depois da integração dos recursos visuais.

Não descrever testes manuais como testes automatizados, nem declarar uma validação como concluída antes de executá-la.

## Próximos passos

1. Preparar os recortes dos sprites da ficha aprovada e manter a imagem original intacta.
2. Integrar Isildur à cena principal sem alterar o design.
3. Configurar o GitHub Actions com uma versão compatível do Godot headless e verificar a execução do workflow.
4. Construir Brumavale em incrementos pequenos e testáveis.

## Organização prevista

Manter cenas, scripts, recursos visuais, dados e documentação organizados em pastas com nomes claros. Não adicionar pastas vazias nem declarar recursos como existentes antes de criá-los.
