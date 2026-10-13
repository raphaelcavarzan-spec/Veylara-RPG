# Fluxo de desenvolvimento — Veylara RPG

## Objetivo
Priorizar o trabalho no GitHub para reduzir ao mínimo as operações manuais no computador local. O repositório é a fonte central do código e da documentação; o GitHub não substitui a execução e a validação do jogo no Godot.

## Ciclo de trabalho
1. Consultar o estado do projeto e as decisões canônicas antes de alterar arquivos.
2. Fazer mudanças pequenas e isoladas, com mensagens de commit descritivas.
3. Atualizar `docs/STATUS.md` quando uma etapa mudar de estado.
4. Executar verificações automatizadas quando houver ambiente compatível disponível.
5. Identificar explicitamente o que foi testado automaticamente, o que foi validado manualmente pela pessoa desenvolvedora e o que permanece pendente.
6. Preservar o projeto funcional e manter protótipos temporários separados dos recursos aprovados.

## Fonte de verdade
- Campanha original: autoridade para personagens, eventos, lugares, cronologia e diálogos.
- Repositório: fonte central do código, das cenas e da documentação técnica.
- Recursos visuais aprovados devem ser preservados; não redesenhar nem substituir sem autorização.
- Isildur é um espadachim e não usa arco.
- A ficha aprovada de Isildur é a referência visual para a integração. Usar os pixels originais sempre que tecnicamente possível; não inventar quadros ausentes como se fossem aprovados.

## Estado técnico confirmado
- Projeto Godot 4.x; a versão usada pela desenvolvedora é Godot 4.7.2 para Windows.
- A desenvolvedora confirmou que o protótipo atual executa localmente.
- Movimento nas quatro direções, colisões, ordenação de profundidade e cenário fixo foram validados manualmente pela desenvolvedora.
- Esses testes não foram executados neste ambiente remoto; não devem ser descritos como testes automatizados.

## Próximos passos
1. Preparar a integração da ficha original de Isildur sem alterar seu design.
2. Configurar validação automatizada no GitHub Actions usando uma versão compatível do Godot headless.
3. Só declarar a validação automatizada como ativa depois que o workflow for executado com sucesso.
4. Continuar o protótipo de Brumavale em incrementos pequenos e testáveis.
