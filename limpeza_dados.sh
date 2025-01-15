# Avaliação de qualidade das leituras com FastQC
fastqc SRRXXXXXXX.fastq

# Limpeza e corte de sequências de baixa qualidade com Trim Galore
trim_galore --fastqc -q 25 --trim-n --max_n 0 -j 1 --length 19 --dont_gzip SRRXXXXXXX.fastq

## Função dos comandos

#O trim_galore é um script que utiliza o Cutadapt para remover sequências de baixa qualidade e adaptadores de leituras em dados de sequenciamento. Ele também pode realizar uma análise de qualidade com o FastQC, antes e depois do corte. Vamos ver o que cada parâmetro faz neste comando:

#--fastqc: Após o processamento, executa o FastQC para avaliar a qualidade dos dados cortados.

#-q 25: Esta opção define o limiar de qualidade. Sequências com qualidade abaixo deste valor serão removidas a partir das extremidades. O valor 25 é comumente escolhido para garantir a alta qualidade dos dados.

#--trim-n: Remove bases ambiguamente chamadas (representadas por 'N') do início e do fim das leituras.

#--max_n 0: Descarta sequências que contêm qualquer 'N', ou seja, qualquer base ambígua.

#-j 1: Especifica o uso de apenas um núcleo para o processo. Ideal para processadores mais modestos ou se quiser limitar o uso de CPU para essa tarefa.

#--length 18: Descarte sequências que, após o corte do adaptador, são menores do que 18 nucleotídeos.

#--dont_gzip: Por padrão, o trim_galore compacta os arquivos de saída. Esta opção diz ao programa para não comprimir os arquivos resultantes.

#SRRXXXXXXX.fastq: Este é o nome do arquivo de leitura de sequenciamento em formato FASTQ que você deseja processar. Novamente, substitua SRRXXXXXXX com o nome adequado do arquivo que você está processando.
