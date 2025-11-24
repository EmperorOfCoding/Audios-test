# Contribuindo para o FocusWave.fm

Este repositório é um site estático. Caso encontre conflitos ao atualizar ou abrir um PR, siga as etapas abaixo para resolvê-los com segurança.

## Como resolver conflitos de merge
1. **Atualize a branch local**: obtenha as últimas alterações da branch remota com `git fetch` e `git pull --rebase origin <branch>`. Isso reduz o risco de criar commits de merge extras.
2. **Identifique os arquivos em conflito**: execute `git status` para ver quais arquivos precisam de atenção. No projeto atual, o arquivo principal costuma ser o `index.html`.
3. **Abra os arquivos conflitantes**: procure por marcadores `<<<<<<<`, `=======` e `>>>>>>>`. Selecione manualmente quais blocos devem permanecer, garantindo que o HTML e o JavaScript fiquem consistentes (por exemplo, mantendo o painel do timer Pomodoro e a barra de progresso).
4. **Formate e teste**: após resolver, confira se a estrutura do HTML continua válida e se os timers e players funcionam ao recarregar a página no navegador local.
5. **Marque como resolvido**: use `git add <arquivo>` para cada arquivo corrigido e verifique novamente com `git status`.
6. **Continue o rebase ou crie o commit**: finalize com `git rebase --continue` (em caso de rebase) ou `git commit` se estiver em uma resolução manual.

## Boas práticas
- Evite commits de merge desnecessários; prefira rebase para manter o histórico linear.
- Faça commits pequenos e descritivos, especialmente ao ajustar trechos de HTML/JS sensíveis.
- Sempre confira no navegador após mudanças em timers, controles de áudio ou estilos para garantir que o layout permaneça alinhado.
