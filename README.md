# Abstract Class na prática com Flutter

Abstract Class são classes que não podem ser instanciadas diretamente. Inicialmente
recursos como este podem não fazer muito sentido, porém este recurso começa a fazer sentido quando encontramos bons casos de uso. Sendo assim vejamos alguns exemplos práticos mas antes vamos falar um pouco mais sobre classes abstratas.

## Alternativas as classes Abstratas

É comum encontrar alternativas para as classes abstratas. Entre as alternativas
é comum novas camadas de desenvolvimento, paradigmas ou simplesmente substituir por heranças "comuns" (no caso das classes abstratas). Dentre essas alternativas é comum
o uso de bibliotecas ou somente mudanças na organização do código. Tudo vale, desde que
executado da melhor forma possível!

## Boas práticas

Utilizar classes abstratas, heranças ou quaisquer alternativas são o que se entende por "boas práticas".
É possível consumir classes sem criar relações através de heranças, e isso funcionaria
perfeitamente. Entretanto o código perde a semântica, quando colocado em paralelo com
as regras de negócio.

## Caso de Uso

Imagine uma escola que cadastra alunos e professores, cada um com um objetivo diferente, contudo ambos possuem informações (propriedades) e comportamentos (métodos) em comum.
Neste caso estas características em comum poderiam estar em uma classe que pudesse ser herdada de alunos e professores.
Contudo esta terceira classe só será utilizada pelo sistema, pois do ponto de vista
do negócio, só existem alunos e professores.

Em casos como este as classes abstratas se tornam a opção mais interessante, pois
ela pode carregar propriedades e métodos que serão utilizados pelas classes que se relacionarem através de herança, contudo o fato de não poder ser diretamente instanciada
faz com que as informações mínimas que existam em comum sejam solicitadas, porém os comportamentos exclusivos fiquem na classe pertinente aquele comportamento.
